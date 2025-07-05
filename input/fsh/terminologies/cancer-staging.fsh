
/* ValueSet:   CancerStagingSystemVS
Id: mcode-cancer-staging-system-vs
Title: "Cancer Staging System Value Set"
Description: "System used for staging."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false
* include codes from system $sct where concept is-a #254292007 "Tumor staging (tumor staging)" */

ValueSet: CancerStageGradingVS
Id: cancer-stageGrading-athena-vs
Title: "Cancer Stage Grading: Athena"
Description: "Identifying codes based on the timing of classification for stage group observations."
/* * ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
 */
* ^experimental = false

* $athena#1634371 "Grade-1" 
* $athena#1634752 "Grade-2" 
* $athena#1633749 "Grade-3" 
* $athena#1635587 "Grade-H" 
* $athena#1634085 "Grade-L" 




ValueSet: CancerStageGroupVS
Id: cancer-stageGroup-athena-vs
Title: "Cancer Stage Group: Athena"
Description: "Identifying codes based on the timing of classification for stage group observations."
/* * ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
 */
* ^experimental = false

/* 
cannot be used because it doesn't day what is unknown...
* $athena#4241440 "Clinical"
* $athena#4105323 "Pathologic"
* $athena#4129922 "Unknown" 
 */

* $athena#4219603 "TNM stage grouping" 
* $athena#4221079 "Clinical TNM stage grouping"
* $athena#4221515 "Pathologic TNM stage grouping"


ValueSet: CancerStageGroupValueClinicalVS
Id: cancer-stageGroupValue-clinical-athena-vs
Title: "Cancer Stage Group Value Clinical: Athena"
Description: "Identifying value for the TNM stage grouping."

* ^experimental = false

* $athena#1635842 "AJCC/UICC 6th clinical Stage 0"
* $athena#1633828 "AJCC/UICC 7th clinical Stage 0"
* $athena#1635824 "AJCC/UICC 8th clinical Stage 0"
* $athena#1633905 "AJCC/UICC 6th clinical Stage 1"
* $athena#1634457 "AJCC/UICC 7th clinical Stage 1"
* $athena#1635758 "AJCC/UICC 8th clinical Stage 1"
* $athena#1634718 "AJCC/UICC 6th clinical Stage 2"
* $athena#1635182 "AJCC/UICC 7th clinical Stage 2"
* $athena#1635217 "AJCC/UICC 8th clinical Stage 2"
* $athena#1635848 "AJCC/UICC 6th clinical Stage 3"
* $athena#1635125 "AJCC/UICC 7th clinical Stage 3"
* $athena#1634596 "AJCC/UICC 8th clinical Stage 3"
* $athena#1634307 "AJCC/UICC 6th clinical Stage 4"
* $athena#1634766 "AJCC/UICC 7th clinical Stage 4"
* $athena#1635029 "AJCC/UICC 8th clinical Stage 4"
* $athena#1635535 "AJCC/UICC 6th clinical Stage 4A"
* $athena#1634451 "AJCC/UICC 7th clinical Stage 4A"
* $athena#1634810 "AJCC/UICC 8th clinical Stage 4A"
* $athena#1633922 "AJCC/UICC 6th clinical Stage 4B"
* $athena#1635757 "AJCC/UICC 7th clinical Stage 4B"
* $athena#1635708 "AJCC/UICC 8th clinical Stage 4B"
* $athena#1633270 "AJCC/UICC 6th clinical Stage 4C"
* $athena#1634614 "AJCC/UICC 7th clinical Stage 4C"
* $athena#1635006 "AJCC/UICC 8th clinical Stage 4C"


ValueSet: CancerStageGroupValuePathologicalVS
Id: cancer-stageGroupValue-pathological-athena-vs
Title: "Cancer Stage Group Value Pathological: Athena"
Description: "Identifying value for the TNM stage grouping."

* ^experimental = false


* $athena#1634741 "AJCC/UICC 6th pathological Stage 0"
* $athena#1635511 "AJCC/UICC 7th pathological Stage 0"
* $athena#1634787 "AJCC/UICC 8th pathological Stage 0"
* $athena#1635797 "AJCC/UICC 6th pathological Stage 1"
* $athena#1635800 "AJCC/UICC 7th pathological Stage 1"
* $athena#1634799 "AJCC/UICC 8th pathological Stage 1"
* $athena#1633751 "AJCC/UICC 6th pathological Stage 2"
* $athena#1634619 "AJCC/UICC 7th pathological Stage 2"
* $athena#1635386 "AJCC/UICC 8th pathological Stage 2"
* $athena#1633499 "AJCC/UICC 6th pathological Stage 3"
* $athena#1634947 "AJCC/UICC 7th pathological Stage 3"
* $athena#1634705 "AJCC/UICC 8th pathological Stage 3"
* $athena#1634208 "AJCC/UICC 6th pathological Stage 4"
* $athena#1635230 "AJCC/UICC 7th pathological Stage 4"
* $athena#1633697 "AJCC/UICC 8th pathological Stage 4"
* $athena#1634731 "AJCC/UICC 6th pathological Stage 4A"
* $athena#1635745 "AJCC/UICC 7th pathological Stage 4A"
* $athena#1634005 "AJCC/UICC 8th pathological Stage 4A"
* $athena#1635370 "AJCC/UICC 6th pathological Stage 4B"
* $athena#1634472 "AJCC/UICC 7th pathological Stage 4B"
* $athena#1634487 "AJCC/UICC 8th pathological Stage 4B"
* $athena#1635893 "AJCC/UICC 6th pathological Stage 4C"
* $athena#1634492 "AJCC/UICC 7th pathological Stage 4C"
* $athena#1634551 "AJCC/UICC 8th pathological Stage 4C"




/* =============

NOT USED IN THIS VERSION 

ValueSet: CancerStageGroupSctVS
Id: cancer-stageGroup-sct-vs
Title: "Cancer Stage Group: SNOMED CT"
Description: "Identifying codes based on the timing of classification for stage group observations."
/* * ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
 */
/* * ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

* $sct#399390009	"TNM stage grouping"
* $sct#399537006	"Clinical TNM stage grouping"
* $sct#399588009	"Pathologic TNM stage grouping"
 */
/* * $loinc#21908-9 "Stage group.clinical Cancer"
* $loinc#21902-2 "Stage group.pathology Cancer"
* $loinc#21914-7 "Stage group.other Cancer" */
// Keep in sync with the intro .md page for this ValueSet, which lists these codes. */

ValueSet: ObservationCodesPrimaryTumorVS
Id: mcode-observation-codes-primary-tumor-vs
Title: "Observation Codes for Primary Tumor Category"
Description: "Identifying codes based on the timing of classification for primary tumor (T) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false
* $loinc#21905-5 "Primary tumor.clinical [Class] Cancer"
* $loinc#21899-0 "Primary tumor.pathology Cancer"
* $loinc#21911-3 "Primary tumor.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesRegionalNodesVS
Id: mcode-observation-codes-regional-nodes-vs
Title: "Observation Codes for Regional Node Category"
Description: "Identifying codes based on the timing of classification for regional node (N) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false
* $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* $loinc#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* $loinc#21912-1 "Regional lymph nodes.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesDistantMetastasesVS
Id: mcode-observation-codes-distant-metastases-vs
Title: "Observation Codes for Distant Metastases Category"
Description: "Identifying codes based on the timing of classification for distant metastases (M) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false
* $loinc#21907-1 "Distant metastases.clinical [Class] Cancer"
* $loinc#21901-4 "Distant metastases.pathology [Class] Cancer"
* $loinc#21913-9 "Distant metastases.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

/* ValueSet: CancerStageGroupVS
Id: mcode-cancer-stageGroup-athena-vs
Title: "Stage Group Value Set"
Description: "This value set is intended to contain allowable values for Stage Group, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* codes from system $ajcc */

ValueSet: ClinicalTNMPrimaryTumorCategoryVS
Id: mcode-clinical-tnm-primary-tumor-category-vs
Title: "Clinical TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* $athena#1635299 "AJCC/UICC 6th clinical TX Category" 
* $athena#1634269 "AJCC/UICC 7th clinical TX Category" 
* $athena#1633589 "AJCC/UICC 8th clinical TX Category" 
* $athena#1635857 "AJCC/UICC 6th clinical Tis Category" 
* $athena#1635227 "AJCC/UICC 7th clinical Tis Category" 
* $athena#1633737 "AJCC/UICC 8th clinical Tis Category" 
* $athena#1635656 "AJCC/UICC 6th clinical T0 Category" 
* $athena#1633815 "AJCC/UICC 7th clinical T0 Category" 
* $athena#1635794 "AJCC/UICC 8th clinical T0 Category" 
* $athena#1634381 "AJCC/UICC 6th clinical T1 Category" 
* $athena#1635664 "AJCC/UICC 7th clinical T1 Category" 
* $athena#1633883 "AJCC/UICC 8th clinical T1 Category" 
* $athena#1633747 "AJCC/UICC 6th clinical T2 Category" 
* $athena#1634029 "AJCC/UICC 7th clinical T2 Category" 
* $athena#1634651 "AJCC/UICC 8th clinical T2 Category" 
* $athena#1633877 "AJCC/UICC 6th clinical T3 Category" 
* $athena#1633324 "AJCC/UICC 7th clinical T3 Category" 
* $athena#1635556 "AJCC/UICC 8th clinical T3 Category" 
* $athena#1635522 "AJCC/UICC 6th clinical T4 Category" 
* $athena#1635530 "AJCC/UICC 7th clinical T4 Category" 
* $athena#1634973 "AJCC/UICC 8th clinical T4 Category" 
* $athena#1634247 "AJCC/UICC 6th clinical T4a Category" 
* $athena#1634522 "AJCC/UICC 7th clinical T4a Category" 
* $athena#1634963 "AJCC/UICC 8th clinical T4a Category" 
* $athena#1634624 "AJCC/UICC 6th clinical T4b Category" 
* $athena#1634120 "AJCC/UICC 7th clinical T4b Category" 
* $athena#1634854 "AJCC/UICC 8th clinical T4b Category"

ValueSet: PathologicalTNMPrimaryTumorCategoryVS
Id: mcode-pathological-tnm-primary-tumor-category-vs
Title: "Pathological TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."

* $athena#1634270 "AJCC/UICC 6th pathological TX Category"
* $athena#1635402 "AJCC/UICC 7th pathological TX Category"
* $athena#1634986 "AJCC/UICC 8th pathological TX Category"
* $athena#1635660 "AJCC/UICC 6th Tis Category"
* $athena#1633798 "AJCC/UICC 7th Tis Category"
* $athena#1634720 "AJCC/UICC 8th Tis Category"
* $athena#1633279 "AJCC/UICC 6th pathological T0 Category"
* $athena#1634675 "AJCC/UICC 7th pathological T0 Category"
* $athena#1634635 "AJCC/UICC 8th pathological T0 Category"
* $athena#1633445 "AJCC/UICC 6th pathological T1 Category"
* $athena#1635422 "AJCC/UICC 7th pathological T1 Category"
* $athena#1635070 "AJCC/UICC 8th pathological T1 Category"
* $athena#1634792 "AJCC/UICC 6th pathological T2 Category"
* $athena#1634491 "AJCC/UICC 7th pathological T2 Category"
* $athena#1633307 "AJCC/UICC 8th pathological T2 Category"
* $athena#1635670 "AJCC/UICC 6th pathological T3 Category"
* $athena#1634658 "AJCC/UICC 7th pathological T3 Category"
* $athena#1634386 "AJCC/UICC 8th pathological T3 Category"
* $athena#1635311 "AJCC/UICC 6th pathological T4 Category"
* $athena#1635341 "AJCC/UICC 7th pathological T4 Category"
* $athena#1635396 "AJCC/UICC 8th pathological T4 Category"
* $athena#1634101 "AJCC/UICC 6th pathological T4a Category"
* $athena#1633723 "AJCC/UICC 7th pathological T4a Category"
* $athena#1634894 "AJCC/UICC 8th pathological T4a Category"
* $athena#1633900 "AJCC/UICC 6th pathological T4b Category"
* $athena#1633699 "AJCC/UICC 7th pathological T4b Category"
* $athena#1633658 "AJCC/UICC 8th pathological T4b Category"


ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
// * codes from system $ajcc

// clinical T
* $athena#1635299 "AJCC/UICC 6th clinical TX Category"
* $athena#1634269 "AJCC/UICC 7th clinical TX Category"
* $athena#1633589 "AJCC/UICC 8th clinical TX Category"
* $athena#1635857 "AJCC/UICC 6th clinical Tis Category"
* $athena#1635227 "AJCC/UICC 7th clinical Tis Category"
* $athena#1633737 "AJCC/UICC 8th clinical Tis Category"
* $athena#1635656 "AJCC/UICC 6th clinical T0 Category"
* $athena#1633815 "AJCC/UICC 7th clinical T0 Category"
* $athena#1635794 "AJCC/UICC 8th clinical T0 Category"
* $athena#1634381 "AJCC/UICC 6th clinical T1 Category"
* $athena#1635664 "AJCC/UICC 7th clinical T1 Category"
* $athena#1633883 "AJCC/UICC 8th clinical T1 Category"
* $athena#1633747 "AJCC/UICC 6th clinical T2 Category"
* $athena#1634029 "AJCC/UICC 7th clinical T2 Category"
* $athena#1634651 "AJCC/UICC 8th clinical T2 Category"
* $athena#1633877 "AJCC/UICC 6th clinical T3 Category"
* $athena#1633324 "AJCC/UICC 7th clinical T3 Category"
* $athena#1635556 "AJCC/UICC 8th clinical T3 Category"
* $athena#1635522 "AJCC/UICC 6th clinical T4 Category"
* $athena#1635530 "AJCC/UICC 7th clinical T4 Category"
* $athena#1634973 "AJCC/UICC 8th clinical T4 Category"
* $athena#1634247 "AJCC/UICC 6th clinical T4a Category"
* $athena#1634522 "AJCC/UICC 7th clinical T4a Category"
* $athena#1634963 "AJCC/UICC 8th clinical T4a Category"
* $athena#1634624 "AJCC/UICC 6th clinical T4b Category"
* $athena#1634120 "AJCC/UICC 7th clinical T4b Category"
* $athena#1634854 "AJCC/UICC 8th clinical T4b Category"

// pathological T

* $athena#1634270 "AJCC/UICC 6th pathological TX Category"
* $athena#1635402 "AJCC/UICC 7th pathological TX Category"
* $athena#1634986 "AJCC/UICC 8th pathological TX Category"
* $athena#1635660 "AJCC/UICC 6th Tis Category"
* $athena#1633798 "AJCC/UICC 7th Tis Category"
* $athena#1634720 "AJCC/UICC 8th Tis Category"
* $athena#1633279 "AJCC/UICC 6th pathological T0 Category"
* $athena#1634675 "AJCC/UICC 7th pathological T0 Category"
* $athena#1634635 "AJCC/UICC 8th pathological T0 Category"
* $athena#1633445 "AJCC/UICC 6th pathological T1 Category"
* $athena#1635422 "AJCC/UICC 7th pathological T1 Category"
* $athena#1635070 "AJCC/UICC 8th pathological T1 Category"
* $athena#1634792 "AJCC/UICC 6th pathological T2 Category"
* $athena#1634491 "AJCC/UICC 7th pathological T2 Category"
* $athena#1633307 "AJCC/UICC 8th pathological T2 Category"
* $athena#1635670 "AJCC/UICC 6th pathological T3 Category"
* $athena#1634658 "AJCC/UICC 7th pathological T3 Category"
* $athena#1634386 "AJCC/UICC 8th pathological T3 Category"
* $athena#1635311 "AJCC/UICC 6th pathological T4 Category"
* $athena#1635341 "AJCC/UICC 7th pathological T4 Category"
* $athena#1635396 "AJCC/UICC 8th pathological T4 Category"
* $athena#1634101 "AJCC/UICC 6th pathological T4a Category"
* $athena#1633723 "AJCC/UICC 7th pathological T4a Category"
* $athena#1634894 "AJCC/UICC 8th pathological T4a Category"
* $athena#1633900 "AJCC/UICC 6th pathological T4b Category"
* $athena#1633699 "AJCC/UICC 7th pathological T4b Category"
* $athena#1633658 "AJCC/UICC 8th pathological T4b Category"



ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "This value set is intended to contain allowable values for the N category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
// * include codes from system $ajcc

// clinical N
* $athena#1635104 "AJCC/UICC 6th clinical NX Category"
* $athena#1633679 "AJCC/UICC 7th clinical NX Category"
* $athena#1634797 "AJCC/UICC 8th clinical NX Category"
* $athena#1633315 "AJCC/UICC 6th clinical N0 Category"
* $athena#1633942 "AJCC/UICC 7th clinical N0 Category"
* $athena#1634070 "AJCC/UICC 8th clinical N0 Category"
* $athena#1635697 "AJCC/UICC 6th clinical N1 Category"
* $athena#1634139 "AJCC/UICC 7th clinical N1 Category"
* $athena#1633651 "AJCC/UICC 8th clinical N1 Category"
* $athena#1635470 "AJCC/UICC 6th clinical N2 Category"
* $athena#1635634 "AJCC/UICC 7th clinical N2 Category"
* $athena#1633763 "AJCC/UICC 8th clinical N2 Category"
* $athena#1634143 "AJCC/UICC 6th clinical N2a Category"
* $athena#1635739 "AJCC/UICC 7th clinical N2a Category"
* $athena#1633788 "AJCC/UICC 8th clinical N2a Category"
* $athena#1633433 "AJCC/UICC 6th clinical N2b Category"
* $athena#1635677 "AJCC/UICC 7th clinical N2b Category"
* $athena#1633323 "AJCC/UICC 8th clinical N2b Category"
* $athena#1634678 "AJCC/UICC 6th clinical N2c Category"
* $athena#1634727 "AJCC/UICC 7th clinical N2c Category"
* $athena#1633271 "AJCC/UICC 8th clinical N2c Category"
* $athena#1635605 "AJCC/UICC 6th clinical N3 Category"
* $athena#1634037 "AJCC/UICC 7th clinical N3 Category"
* $athena#1633854 "AJCC/UICC 8th clinical N3 Category"
* $athena#1633434 "AJCC/UICC 6th clinical N3a Category"
* $athena#1635004 "AJCC/UICC 7th clinical N3a Category"
* $athena#1635496 "AJCC/UICC 8th clinical N3a Category"
* $athena#1635283 "AJCC/UICC 6th clinical N3b Category"
* $athena#1635084 "AJCC/UICC 7th clinical N3b Category"
* $athena#1635828 "AJCC/UICC 8th clinical N3b Category"

// pathological N

* $athena#1635823 "AJCC/UICC 6th pathological NX Category"
* $athena#1634505 "AJCC/UICC 7th pathological NX Category"
* $athena#1634117 "AJCC/UICC 8th pathological NX Category"
* $athena#1634212 "AJCC/UICC 6th pathological N0 Category"
* $athena#1633726 "AJCC/UICC 7th pathological N0 Category"
* $athena#1635560 "AJCC/UICC 8th pathological N0 Category"
* $athena#1634562 "AJCC/UICC 6th pathological N1 Category"
* $athena#1634245 "AJCC/UICC 7th pathological N1 Category"
* $athena#1633659 "AJCC/UICC 8th pathological N1 Category"
* $athena#1634541 "AJCC/UICC 6th pathological N2 Category"
* $athena#1633569 "AJCC/UICC 7th pathological N2 Category"
* $athena#1633336 "AJCC/UICC 8th pathological N2 Category"
* $athena#1633273 "AJCC/UICC 6th pathological N2a Category"
* $athena#1635717 "AJCC/UICC 7th pathological N2a Category"
* $athena#1635871 "AJCC/UICC 8th pathological N2a Category"
* $athena#1634773 "AJCC/UICC 6th pathological N2b Category"
* $athena#1633607 "AJCC/UICC 7th pathological N2b Category"
* $athena#1634645 "AJCC/UICC 8th pathological N2b Category"
* $athena#1635113 "AJCC/UICC 6th pathological N2c Category"
* $athena#1634601 "AJCC/UICC 7th pathological N2c Category"
* $athena#1634383 "AJCC/UICC 8th pathological N2c Category"
* $athena#1634504 "AJCC/UICC 6th pathological N3 Category"
* $athena#1633668 "AJCC/UICC 7th pathological N3 Category"
* $athena#1635307 "AJCC/UICC 8th pathological N3 Category"
* $athena#1634271 "AJCC/UICC 6th pathological N3a Category"
* $athena#1634397 "AJCC/UICC 7th pathological N3a Category"
* $athena#1635545 "AJCC/UICC 8th pathological N3a Category"
* $athena#1633500 "AJCC/UICC 6th pathological N3b Category"
* $athena#1634847 "AJCC/UICC 7th pathological N3b Category"
* $athena#1634770 "AJCC/UICC 8th pathological N3b Category"



ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "This value set is intended to contain allowable values for the M category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
// * codes from system $ajcc

// clinical M

* $athena#1634194 "AJCC/UICC 6th clinical M0 Category"
* $athena#1633468 "AJCC/UICC 7th clinical M0 Category"
* $athena#1634757 "AJCC/UICC 8th clinical M0 Category"
* $athena#1634829 "AJCC/UICC 6th clinical M1 Category"
* $athena#1633276 "AJCC/UICC 7th clinical M1 Category"
* $athena#1633974 "AJCC/UICC 8th clinical M1 Category"



// pathological M

* $athena#1635345 "AJCC/UICC 6th pathological M0 Category"
* $athena#1635536 "AJCC/UICC 7th pathological M0 Category"
* $athena#1634606 "AJCC/UICC 8th pathological M0 Category"
* $athena#1633469 "AJCC/UICC 6th pathological M1 Category"
* $athena#1635336 "AJCC/UICC 7th pathological M1 Category"
* $athena#1634891 "AJCC/UICC 8th pathological M1 Category"



// === Sarcoma 

ValueSet: DiseaseExtentCategoryVS
Id: disease-extent-category-vs
Title: "Sarcoma Staging: localized disease"
Description: "This value set includes values indicating if the disease is confined or metastatic."
* ^experimental = false
* $athena#32942 "Confined Disease"
* $athena#32944 "Metastatic Disease"

ValueSet: LocoRegionalCategoryVS
Id: locoregional-category-vs
Title: "Staging: loco-regional category"
Description: "This value set includes values indicating if the disease is multi-focal or in-trasit metastatis."
* ^experimental = false
* $athena#36769249 "Transit Metastasis with Clinical Confirmation"
* $athena#36769933 "Multifocal Tumor"
* $athena#32943 "Invasive Disease"