//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsSmokingStatusLoincI4rc
Id: smokingStatus-loinc-eu-i4rc
Title: "Smoking Status: LOINC"
Description: "Derived from the HL7 LOINC value set for smoking status.  Based on the HL7 Vocab and Structured Doc WG (formerly TC) consensus - per US CDC submission 7/12/2012 for smoking status terms."
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false
* ^immutable = false
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"


/* * $loinc#LA18976-3  "Current every day smoker"
* $loinc#LA18977-1  "Current some day smoker" */
* $loinc#LA20356-4 "Current smoker" 
* $loinc#LA15920-4  "Former smoker"
* $loinc#LA18978-9  "Never smoker"
/* * $loinc#LA18979-7  "Smoker, current status unknown"
* $loinc#LA18980-5  "Unknown if ever smoked"
* $loinc#LA18981-3  "Heavy tobacco smoker"
* $loinc#LA18982-1  "Light tobacco smoker" */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsSmokingStatusAthenaI4rc
Id: smokingStatus-athena-eu-i4rc
Title: "Current Smoking Status: Athena"
Description: "Current Smoking Status: Athena"
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false
* $athena#36309332 "Current smoker" // 	LA20356-4
* $athena#45883458 "Former smoker" // LA15920-4
* $athena#45879404 "Never smoker" //	LA18978-9	


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsTobaccoProductI4rc
Id: tobacco-product-eu-i4rc
Title: "Tobacco Product"
Description: "Tobacco Product based on the Athena system"
//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = false

* $athena#36716475 "Cigarettes"  
* $athena#36716476 "Cigar"  
* $athena#4129922 "Unknown"  
* $athena#1585856 "Lifestyle:Smoking"
