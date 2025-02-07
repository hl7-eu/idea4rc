import os
import argparse
import configparser
import pandas as pd
from datetime import datetime

# Function to load the config file
def load_config(config_path):
    if not os.path.exists(config_path):
        raise FileNotFoundError(f"Config file not found: {config_path}")
    config = configparser.ConfigParser()
    config.read(config_path)
    
    if 'settings' not in config:
        raise KeyError("The 'settings' section is missing in the config file.")
    
    return config['settings']

# Function to log messages
def log_message(message, log_file):
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    with open(log_file, 'a') as log:
        log.write(f"[{timestamp}] {message}\n")
    print(message)

# Function to process ConceptMaps
def process_conceptmaps(file_path, output_directory, log_file):
    try:
        df_conceptmaps = pd.read_excel(file_path, sheet_name="ConceptMaps")
    except Exception as e:
        log_message(f"Error loading ConceptMaps sheet in {file_path}: {e}", log_file)
        return

    for _, row in df_conceptmaps.iterrows():
        instance_name = row['Instance']
        conceptmap_name = row['Name']
        experimental_value = str(row['Experimental']).lower() if pd.notnull(row['Experimental']) else 'true'
        fsh_filename = f"{conceptmap_name}.fsh"
        
        fsh_content = f"""Instance: {instance_name}
InstanceOf: ConceptMap
Usage: #definition
* url = "{row['URL']}"
* name = "{conceptmap_name}"
* title = "{row['Title']}"
* status = #{row['Status']}
* experimental = {experimental_value}
* description = \"\"\"{row['Description']}\"\"\"
"""
        try:
            df_mappings = pd.read_excel(file_path, sheet_name=conceptmap_name)
            grouped = df_mappings.groupby(['Group Source', 'Group Target'])
            for (group_source, group_target), group_rows in grouped:
                fsh_content += f"* group[+].source = \"{group_source}\"\n"
                fsh_content += f"* group[=].target = \"{group_target}\"\n"
                for _, mapping_row in group_rows.iterrows():
                    source_display = mapping_row['Source Display'] if pd.notnull(mapping_row['Source Display']) else ""
                    target_display = mapping_row['Target Display'] if pd.notnull(mapping_row['Target Display']) else ""
                    fsh_content += f"* group[=].element[+].code = #{mapping_row['Source Code']}\n"
                    fsh_content += f"* group[=].element[=].display = \"{source_display}\"\n"
                    fsh_content += f"* group[=].element[=].target.code = #{mapping_row['Target Code']}\n"
                    fsh_content += f"* group[=].element[=].target.display = \"{target_display}\"\n"
                    fsh_content += f"* group[=].element[=].target.equivalence = #{mapping_row['Equivalence']}\n"
                    if pd.notnull(mapping_row['Comment']):
                        fsh_content += f"* group[=].element[=].target.comment = \"{mapping_row['Comment']}\"\n"
        except Exception as e:
            log_message(f"Error processing mappings for {conceptmap_name}: {e}", log_file)
            continue

        output_path = os.path.join(output_directory, fsh_filename)
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(fsh_content)
        log_message(f"Created {fsh_filename} in {output_directory}", log_file)

# Function to process LogicalModels
def process_logicalmodels(file_path, output_directory, log_file):
    try:
        df_logicalmodels = pd.read_excel(file_path, sheet_name="LogicalModels")
    except Exception as e:
        log_message(f"Error loading LogicalModels sheet in {file_path}: {e}", log_file)
        return

    for _, row in df_logicalmodels.iterrows():
        logical_name = row['Name']
        fsh_filename = f"{logical_name}.fsh"
        fsh_content = f"""Logical: {logical_name}
Id: {row['Id']}
Title: \"{row['Title']}\"
Description: \"\"\"{row['Description']}\"\"\"
"""
        try:
            df_elements = pd.read_excel(file_path, sheet_name=logical_name)
            for _, element_row in df_elements.iterrows():
                element = element_row['Element']
                cardinality = element_row['Cardinality']
                datatype = element_row['Datatype']
                short = element_row['Short']
                definition = element_row['Definition']
                
                # Add H&N condition
                hn_line = f"* {element} insert ObligationActorAndCode($actor-headneck, #SHALL:handle)\n" if pd.notnull(element_row['H&N']) and str(element_row['H&N']).lower() == "true" else ""
                
                # Add Sarc condition
                sarc_line = f"* {element} insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)\n" if pd.notnull(element_row['Sarc']) and str(element_row['Sarc']).lower() == "true" else ""

                # Add Comment condition
                comment_line = f"* {element} ^comment = \"\"\"{element_row['Comment']}\"\"\"\n" if pd.notnull(element_row['Comment']) else ""

                fsh_content += f"* {element} {cardinality} {datatype} \"{short}\" \"\"\"{definition}\"\"\"\n"
                fsh_content += hn_line
                fsh_content += sarc_line
                fsh_content += comment_line
        except Exception as e:
            log_message(f"Error processing elements for LogicalModel {logical_name}: {e}", log_file)

        output_path = os.path.join(output_directory, fsh_filename)
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(fsh_content)
        log_message(f"Updated {fsh_filename} with elements in {output_directory}", log_file)

# Main function
def main():
    parser = argparse.ArgumentParser(description='Generate FSH files from Excel.')
    parser.add_argument('--config', default='fsh-excel-fsh/config.ini', help='Path to the config file (default: fsh-excel-fsh/config.ini)')
    args = parser.parse_args()

    config = load_config(args.config)
    input_directory = config['input_directory']
    output_directory = config['output_directory']
    log_file = os.path.join(output_directory, 'process.log')

    os.makedirs(output_directory, exist_ok=True)

    for filename in os.listdir(input_directory):
        if filename.endswith(".xlsx"):
            file_path = os.path.join(input_directory, filename)
            log_message(f"Processing file: {filename}", log_file)

            process_conceptmaps(file_path, output_directory, log_file)
            process_logicalmodels(file_path, output_directory, log_file)

if __name__ == '__main__':
    main()
