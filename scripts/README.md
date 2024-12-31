
# README: Excel to FSH Conversion Script

## Overview

This script generates FHIR Shorthand (FSH) files from Excel files containing ConceptMaps and LogicalModels. It reads input from a specified directory, processes ConceptMaps and LogicalModels sheets, and outputs `.fsh` files.

## Requirements

- Python 3.8 or newer
- Required Python libraries:
  - `pandas`
  - `openpyxl`
- An Excel file containing the required sheets (e.g., `ConceptMaps`, `LogicalModels`).

## Installation

1. Clone or download the script to your local machine.
2. Install the required Python libraries:
   ```bash
   pip install pandas openpyxl
   ```
3. Create a configuration file (e.g., `config.ini`) as described below.

## Configuration

The script requires a configuration file to specify input and output directories. By default, it looks for `config.ini` in the script directory.

### Example `config.ini`

```ini
[settings]
input_directory = ./input
output_directory = ./output
```

- `input_directory`: Path to the directory containing Excel files to process.
- `output_directory`: Path to the directory where `.fsh` files will be saved.

## Usage

Run the script with Python, specifying the configuration file if it is not in the default location:

```bash
python excel-to-fsh-i4rc.py --config /path/to/config.ini
```

### Example Workflow

1. Place your Excel files in the `input` directory specified in the `config.ini` file.
2. Run the script.
3. Generated `.fsh` files will appear in the `output` directory.

## Input File Requirements

### ConceptMaps Sheet

- **Required Columns:**
  - `Instance`: Name of the ConceptMap instance.
  - `Name`: ConceptMap name.
  - `URL`, `Title`, `Status`, `Experimental`, `Description`: Metadata for the ConceptMap.
- **Additional Sheets:**
  - Each ConceptMap should have a corresponding sheet named after the ConceptMap name.
  - Columns in these sheets:
    - `Group Source`, `Group Target`
    - `Source Code`, `Source Display`
    - `Target Code`, `Target Display`, `Equivalence`
    - `Comment` (optional)

### LogicalModels Sheet

- **Required Columns:**
  - `Name`, `Id`, `Title`, `Description`
- **Additional Sheets:**
  - Each LogicalModel should have a corresponding sheet named after the LogicalModel name.
  - Columns in these sheets:
    - `Element`, `Cardinality`, `Datatype`, `Short`, `Definition`
    - `H&N`, `Sarc` (optional)
    - `Comment` (optional)

## Output

The script generates `.fsh` files with the following features:

- **ConceptMaps:**
  - Includes metadata and mappings grouped by `Group Source` and `Group Target`.
- **LogicalModels:**
  - Includes metadata and elements with specified attributes.
  - Adds specific lines for:
    - `H&N` → Adds `ObligationActorAndCode($actor-headneck, #SHALL:handle)`.
    - `Sarc` → Adds `ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)`.
    - `Comment` → Adds `^comment`.

## Logs

A log file (`process.log`) is created in the output directory to track progress and errors.

## Troubleshooting

1. **UnicodeEncodeError**:
   - Ensure the script uses UTF-8 encoding when writing files.
2. **FileNotFoundError**:
   - Verify the input directory and file paths in the configuration file.
3. **Missing Columns**:
   - Ensure all required columns are present in the input Excel sheets.

## Contributing

Feel free to contribute by submitting issues or pull requests to improve functionality or fix bugs.

## License

This script is released under the MIT License.
