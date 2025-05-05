//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsSimpleResultI4rc
Id: simpleResult-eu-i4rc
Title: "Simple measures"
Description: """Test results:
  - EBV DNA plasma testing before treatment in NPC type II and III (WHO)
  - HPV tumor testing in oral carcinoma
  - C reactive protein testing.
  - Biopsy Mitotic Count
  - Tumor Size"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

// removed for simplyfying the IG
// * codes from valueset VsLabTestResultI4rc
// * $loinc#11039-5 "C reactive protein [Presence] in Serum or Plasma"
// * $athena#35952576 "CRP (C-reactive protein) gene variant measurement"
// * $loinc#21889-1 "Size Tumor" // quantity
//* $loinc#43730-1 "EBV DNA NAA+probe Qn" // it is a Quantity not the right concept, the result is expected to be a Yes/no/...
// * $loinc#77377-0 "HPV 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA (Specimen) [Interp]" // To be checked

* $athena#3043849 "Epstein Barr virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* $athena#46236082 "Human papilloma virus 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA [Interpretation] in Specimen"
* $athena#3000965 "C reactive protein [Presence] in Serum or Plasma"
* $athena#4227243 "Number of mitoses per 10 high power fields"
* $athena#36768664 "Dimension of Tumor"
* $athena#4099595 "Mitotic index"
* $athena#36768749 "Invasion into the fascia"  

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsPositiveNegativeNTAthenaI4rc
Id: pos-neg-nt-athena-eu-i4rc
Title: "Positive-Negative-No Test: Athena"
Description: """Laboratory test results: Positive-Negative-Not tested: Athena"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $athena#9191 "Positive" 
* $athena#9189 "Negative" 
* $athena#45878602 "Not tested"



/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabTestResultI4rc
Id: labTestResult-eu-i4rc
Title: "Lab test results"
Description: """Lab test results:
  - EBV DNA plasma testing before treatment in NPC type II and III (WHO)
  - HPV tumor testing in oral carcinoma
  - C reactive protein testing."""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

//* $loinc#43730-1 "EBV DNA NAA+probe Qn" // it is a Quantity not the right concept, the result is expected to be a Yes/no/...
* $athena#3043849 "Epstein Barr virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
// * $loinc#77377-0 "HPV 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA (Specimen) [Interp]" // To be checked
* $athena#46236082 "Human papilloma virus 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA [Interpretation] in Specimen"
// * $loinc#11039-5 "C reactive protein [Presence] in Serum or Plasma"
* $athena#3000965 "C reactive protein [Presence] in Serum or Plasma"
// * $athena#35952576 "CRP (C-reactive protein) gene variant measurement" */



/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsPositiveNegativeNTSnomedI4rc
Id: pos-neg-nt-sct-eu-i4rc
Title: "Positive-Negative-No Test: Snomed CT"
Description: """Laboratory test results: Positive-Negative-Not tested: Snomed CT"""

//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false
* $sct#416237000 // patient not tested (situation)
* $sct#10828004 // positive patient (qualifier value)
* $sct#260385009 // negative patient (qualifier value) */