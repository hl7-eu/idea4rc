//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsTestResultI4rc
Id: testResult-eu-i4rc
Title: "Test results"
Description: """Test results:
  - EBV DNA plasma testing before treatment in NPC type II and III (WHO)
  - HPV tumor testing in oral carcinoma
  - C reactive protein testing.
  - Biopsy Mitotic Count
  - Tumor Size"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = true

* $loinc#43730-1 "EBV DNA NAA+probe Qn" // it is a Quantity not the right concept, the result is expected to be a Yes/no/...
* $loinc#77377-0 "HPV 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA (Specimen) [Interp]" // To be checked
* $loinc#11039-5 "C reactive protein [Presence] in Serum or Plasma"
* $sct#371472000 "Mitotic count score" // quantity
* $loinc#21889-1 "Size Tumor"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsObsYesNoCodeI4rc
Id: obsYesNo-code-eu-i4rc
Title: "Types of Yes/No observations"
Description: """Types of Yes/No observations"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $loinc#67190-9 "Other cancer diagnosis [PhenX]"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsPositiveNegativeNTAthenaI4rc
Id: pos-neg-nt-athena-eu-i4rc
Title: "Positive-Negative-No Test: Athena"
Description: """Laboratory test results: Positive-Negative-Not tested: Athena"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = true

* $athena#9191 "Positive" 
* $athena#9189 "Negative" 
* $athena#45878602 "Not tested"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsYesNoUnkAthenaI4rc
Id: yes-no-unk-athena-eu-i4rc
Title: "Yes-No-Unk: Athena"
Description: """Laboratory test results: Yes-No-Unkwnon: Athena"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = true

* $athena#4188539 "yes"
* $athena#4188540 "no"
* $athena#4129922 "unknown"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsPositiveNegativeNTSnomedI4rc
Id: pos-neg-nt-sct-eu-i4rc
Title: "Positive-Negative-No Test: Snomed CT"
Description: """Laboratory test results: Positive-Negative-Not tested: Snomed CT"""

//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = true
* $sct#416237000 // patient not tested (situation)
* $sct#10828004 // positive patient (qualifier value)
* $sct#260385009 // negative patient (qualifier value)