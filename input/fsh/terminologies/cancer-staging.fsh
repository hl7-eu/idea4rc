
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

ValueSet: CancerStageGroupSctVS
Id: cancer-stageGroup-sct-vs
Title: "Cancer Stage Group: SNOMED CT"
Description: "Identifying codes based on the timing of classification for stage group observations."
/* * ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
 */
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

* $sct#399390009	"TNM stage grouping"
* $sct#399537006	"Clinical TNM stage grouping"
* $sct#399588009	"Pathologic TNM stage grouping"

/* * $loinc#21908-9 "Stage group.clinical Cancer"
* $loinc#21902-2 "Stage group.pathology Cancer"
* $loinc#21914-7 "Stage group.other Cancer" */
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

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

ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* codes from system $ajcc

ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "This value set is intended to contain allowable values for the N category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* include codes from system $ajcc

ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "This value set is intended to contain allowable values for the M category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* codes from system $ajcc


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
Title: "Sarcoma Staging: loco-regional category"
Description: "This value set includes values indicating if the disease is multi-focal or in-trasit metastatis."
* ^experimental = false
* $athena#36769249 "Transit Metastasis with Clinical Confirmation"
* $athena#36769933 "Multifocal Tumor"