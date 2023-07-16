//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabTestI4RC
Id: lab-test-eu-i4rc
Title: "Laboratory tests"
Description: """Laboratory tests:
  - EBV DNA plasma testing before treatment in NPC type II and III (WHO)
  - HPV tumor testing in oral carcinoma
  - C reactive protein testing."""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = true

* $loinc#43730-1 "EBV DNA NAA+probe Qn" // it is a Quantity not the right concept
* $loinc#77377-0 "HPV 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA (Specimen) [Interp]" // To be checked
* $loinc#11039-5 "C reactive protein [Presence] in Serum or Plasma"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsPositiveNegativeNTAthenaI4RC
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
ValueSet: VsPositiveNegativeNTSnomedI4RC
Id: pos-neg-nt-sct-eu-i4rc
Title: "Positive-Negative-No Test: Snomed CT"
Description: """Laboratory test results: Positive-Negative-Not tested: Snomed CT"""

//-------------------------------------------------------------------------------------------

* $sct#416237000 // patient not tested (situation)
* $sct#10828004 // positive patient (qualifier value)
* $sct#260385009 // negative patient (qualifier value)