      
//====== RuleSet =====================================

RuleSet: CancerConditionCommonRules
* extension contains
    $condition-assertedDate named assertedDate 0..1 
    and $mcode-histology-morphology-behavior named histologyMorphologyBehavior 0..1
	and PreviousStatus named previousStatus 0..1
  and RelapseType named relapseType 0..1
  
	
// HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1 MS

* extension[histologyMorphologyBehavior].value[x]

/* * extension[histologyMorphologyBehavior].value[x] from VsICDO3Morphology (required) */
* extension[previousStatus]
/* * extension[relapseType].value[x] from RelapseTypeVS (preferred) */
* extension[relapseType].value[x]

* subject only Reference (PatientI4rc)
* bodySite.extension contains
     BodyLocationQualifier named locationQualifier 0..*
     and LateralityQualifier named lateralityQualifier 0..1
	
	// $mcode-laterality-qualifier named lateralityQualifier 0..1
    //    and
    // $mcode-body-location-qualifier named locationQualifier 0..* 

/* * bodySite from ICDO3TopographyVs (extensible) */
* bodySite from VsSubsiteAthenaI4rc (extensible)
  * insert AdditionalBinding (required, VsSubsiteSnomedI4rc, SNOMED based sites) 

// * extension and bodySite and bodySite.extension[lateralityQualifier] MS

// === ADD VS BINDING =====
/* * bodySite.extension[lateralityQualifier].valueCodeableConcept from LeftRightBiUnilateralVS  (preferred)  */

* bodySite.extension[lateralityQualifier].valueCodeableConcept

// === ADD VS BINDING =====
/* * bodySite.extension[lateralityQualifier].valueCodeableConcept ^binding.extension.extension[0].url = "purpose"
* bodySite.extension[lateralityQualifier].valueCodeableConcept ^binding.extension.extension[=].valueCode = #candidate
* bodySite.extension[lateralityQualifier].valueCodeableConcept ^binding.extension.extension[+].url = "valueSet"
* bodySite.extension[lateralityQualifier].valueCodeableConcept ^binding.extension.extension[=].valueCanonical = $mcode-laterality-qualifier-vs
* bodySite.extension[lateralityQualifier].valueCodeableConcept ^binding.extension.extension[+].url = "documentation"
* bodySite.extension[lateralityQualifier].valueCodeableConcept ^binding.extension.extension[=].valueMarkdown = "Qualifiers to specify laterality."
* bodySite.extension[lateralityQualifier].valueCodeableConcept ^binding.extension.url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* bodySite.extension[lateralityQualifier].valueCodeableConcept ^binding.description = "Qualifiers to specify laterality." */


RuleSet: CancerStageCommonRules
* value[x] only CodeableConcept
// * value[x] ^comment = ""    // suppress QA error on #notes link
* status ^short = "The status of the result"
* code ^short = "What was observed"
* effective[x] ^short = "Clinically relevant time for observation"
* value[x] ^short = "Actual result."
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* insert NotUsed(component)
* focus only Reference(ConditionPrimaryCancerI4rc)
* subject only Reference(PatientI4rc)
* method ^short = "ADD BINDING"
/* * method from CancerStagingSystemVS (extensible) */
// MS flags -- for Pathological staging, they might be redundant with US Core Lab Observation (but that's harmless)
// * status and code and subject and effective[x] and value[x] and method and focus MS

//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationHereditaryPredispositionI4rc
Parent:   Observation
Id:       Observation-predisposition-eu-i4rc
Title:    "Observation: Hereditary Predisposition"
Description: "This profile defines how to represent Hereditary Predispositions in HL7 FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------
* subject 1..
* subject only Reference(PatientI4rc)
* code 1..1 
* code = $sct#47708004 "Genetic predisposition" 
* valueCodeableConcept 1..1

/* ADD SLICES AND VALUE SET AS NEEDED */
/* COMMENTED FOR THE TIME BEING */
/* * valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice based on the values set binding"
* valueCodeableConcept.coding contains 
	orpha 0..1 MS and
	icd10 0..1 MS
* valueCodeableConcept.coding[orpha] from OrphaHereditaryPredisposition
* valueCodeableConcept.coding[icd10] from ICD10HereditaryPredisposition */


* component 0..0 


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationDiagnosisI4rc
Parent:   Observation
Id:       Observation-diagnosis-eu-i4rc
Title:    "Observation: Diagnosis details"
Description: "This profile defines how to represent diagnosis details (when the diagnosis was made; who made it;...) in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------
* subject 1..
* subject only Reference(PatientI4rc)
* effectiveDateTime 1.. MS
* code 1..1 
* code = $loinc#29308-4 "Diagnosis"
* valueCodeableConcept 1..1
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this.resolve()"
* performer ^slicing.rules = #open
* performer ^slicing.description = "Slice based on the reference type"
* performer contains primaryCenter	0..1 MS
  // ==> TO BE UPDATED ======
/* * performer[primaryCenter] only Reference (OrganizationCenter) */
* performer[primaryCenter] only Reference (Organization)
  * ^short = "Center of diagnosis"
  * ^definition = "Institution in which the diagnosis was made."
  * identifier ^short = "Business identifier of the Center of diagnosis"
  * display ^short = "Short textual description of the Center of diagnosis"
* component 0..0 



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionPrimaryCancerI4rc
Parent:   Condition
Id:       Condition-primaryCancer-eu-i4rc
Title:    "Condition: Primary Cancer"
Description: "This profile defines how to represent Primary Cancer Condition in HL7 FHIR for the purpose of the IDEA4RC project. 
This profile is inspired from the [mCode IG](http://build.fhir.org/ig/HL7/fhir-mCODE-ig). 
A primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms]( https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)).  Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.
This profile should be also used for documenting primary cancer relapses during or after FLT."
//-------------------------------------------------------------------------------------------

* extension contains $condition-occurredFollowing named condition-occurredFollowing 0..*
* extension[condition-occurredFollowing].valueCodeableConcept 0..0
* extension[condition-occurredFollowing].valueReference ^short = "For relapses, reference to the first occurance of this tumor."
* extension[condition-occurredFollowing].valueReference only Reference (ConditionPrimaryCancerI4rc)

* insert CancerConditionCommonRules
// * clinicalStatus and verificationStatus MS
* clinicalStatus ^example.valueCodeableConcept = $condition-clinical#relapse
* clinicalStatus ^example.label = "Relapse"
  
* code 1.. MS // add value set; add slices for

// RE-ADD THE SLICES WHEN THE VLUESET ARE DEFINED
/* * code.coding 0.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slice based on the coding.code pattern"
* code.coding contains 
	iccc3-classification 0..1 MS 
	and exceptions 0..1
* code.coding[iccc3-classification] from VsICCC3
* code.coding[exceptions] from $v3-ClassNullFlavor */

* onset[x] MS
* encounter only Reference (EncounterI4rc) // Link this cancer with a follow up encounter.
  * ^short = "Encounter this primary cancer has been identified"
  * ^definition = """Encounter this primary cancer has been identified.
  To be used for subsequent primary cancers."""

* stage.assessment only Reference(CancerStageGroup)
// * stage MS
// and stage.assessment MS
* stage.summary ^short = "Most recent Stage Group"
* stage.summary ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the stage group MAY appear in this element, copied from the CancerStageGroup, but Data Senders and Receivers MAY ignore it."
* stage.type ^short = "Staging system used."
* stage.type ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the staging system MAY appear in this element, but Data Senders and Receivers MAY ignore it."
// * stage.type from ObservationCodesStageGroupVS (required)




* evidence ^slicing.discriminator.type = #pattern
* evidence ^slicing.discriminator.path = "$this.resolve()"
* evidence ^slicing.discriminator.type = #pattern
* evidence ^slicing.discriminator.path = "code"
* evidence ^slicing.rules = #open
* evidence ^slicing.description = "Slice based on the coding.code pattern"

// Diagnosis details
* evidence contains diagnosisDetails 0..1 
* evidence[diagnosisDetails]
  * ^short = "Diagnosis details"
  /* * code from VsICCC3 */
  * code ^short = "add binding"
  * detail only Reference (ObservationDiagnosisI4rc)

// Lab Test performed
* evidence contains lab-test  1..3 
* evidence[lab-test]
  * ^short = "Laboratory Test results"
  * ^definition = """It includes the results of:
  - EBV DNA plasma testing before treatment in NPC type II and III (WHO)
  - HPV tumor testing in oral carcinoma
  - C reactive protein testing.
  
  Positive; Negative; Not tested"""
  /* * code from VsICCC3 */
  * code ^short = "add binding"
  * detail only Reference (ObservationLabTest) 


* evidence contains genetic-test 0..
* evidence[genetic-test]
  * ^short = "Genetic Test perfomed"
  * ^definition = """It documents the Genetic Test perfomed"""
  * code ^short = "add binding"
  * detail only Reference (ObservationGenomicVariant) // Profile to be reviewed

/* * evidence contains hpvStatus  0..1 
* evidence[ hpvStatus ]
  * ^short = "HPV status"
  * code ^short = "add binding"
  * detail only Reference (Observation) // add Profile

* evidence contains crpCReactiveProteinTested  0..1 
* evidence[ crpCReactiveProteinTested ]
  * ^short = "CRP C reactive protein tested"
   * code ^short = "add binding"
  * detail only Reference (Observation) // add Profile */

/* * evidence[geneticMarker]
  * ^short = "Genetic Marker"
  * code = $sct#106221001 "Genetic finding"
  * detail only Reference (Observation or DocumentReference or DiagnosticReport)
  * detail.display ^short = "Text alternative for the resource (Genetic finding)"
* evidence[immunology]
  * ^short = "Immunology" 
  * code = $sct#365861007 "Finding of immune status"
  * detail only Reference (Observation or DocumentReference or DiagnosticReport)
  * detail.display ^short = "Text alternative for the resource (immunology)"
* evidence[predisposition]
  * ^short = "Predisposition" 
 
  * code = $sct#32895009 "Hereditary disease" // check if it needs to be changed with a Value Set
  /* * code from HereditaryPredispositionDisease */
  
  /* 
  * detail only Reference (Condition or Observation or FamilyMemberHistory or DocumentReference)
  * detail.display ^short = "Text alternative for the resource (predisposition)"
  
  * detail ^slicing.discriminator.type = #type
  * detail ^slicing.discriminator.path = "$this.resolve()"
  * detail ^slicing.rules = #open
  * detail ^slicing.description = "Slice based on the reference type"
  * detail contains 
	observation	0..1 MS
  * detail[observation] only Reference (ObservationHereditaryPredispositionI4rc) */

* note ^short = "Additional information about the Cancer Condition"



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionSecondaryCancerI4rc
Parent:   Condition
Id:       Condition-secondaryCancer-eu-i4rc
Title:    "Condition: Metastatic Cancer"
Description: "This profile defines how to represent metastatic cancer in FHIR for the purpose of the IDEA4RC project. 
This profile is inspired from the [mCode IG](http://build.fhir.org/ig/HL7/fhir-mCODE-ig). 
Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms)."
//-------------------------------------------------------------------------------------------
* ^abstract = false
* insert CancerConditionCommonRules
* clinicalStatus and verificationStatus MS
* extension contains $condition-related named relatedPrimaryCancerCondition 1..1
* extension[relatedPrimaryCancerCondition].valueReference only Reference(ConditionPrimaryCancerI4rc)
* extension[relatedPrimaryCancerCondition] ^short = "Related Primary Cancer Condition"
* extension[relatedPrimaryCancerCondition] ^definition = "A reference to the primary cancer condition that provides context for this resource."
* code MS
// * code from SecondaryCancerDisorderVS (extensible)
* insert NotUsed(stage)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OrganizationCenterI4rc
Parent:   $Organization-uv-ips
Id:       Organization-center-eu-i4rc
Title:    "Organization: Primary Treatment Center / Center of diagnosis"
Description: "This profile defines how to represent the Primary Treatment Center or the Center of diagnosis in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------
* identifier ^short = "Identifier of the center"
* name ^short = "Name of the Center"
* address.city ^short = "Center address: city"
* address.country ^short = "Center address: country"




Profile: CancerStageGroup
Id: mcode-cancer-stage-group
Parent: Observation
Title: "Observation: Cancer Stage Group"
Description: "The extent of the cancer in the body, according to a given cancer staging classification system, based on evidence such as physical examination, imaging, and/or biopsy or based on pathologic analysis of a specimen."
* insert CancerStageCommonRules

* code from ObservationCodesStageGroupVS (preferred) 
* valueCodeableConcept from CancerStageGroupVS (preferred) 
* hasMember only Reference(Observation)
* insert ObservationHasMemberSlicingRules
* hasMember contains
    tnmPrimaryTumorCategory 0..1  and
    tnmRegionalNodesCategory 0..1  and
    tnmDistantMetastasesCategory 0..1 
// Set metadata attributes that show up in the IG
* hasMember[tnmPrimaryTumorCategory] only Reference(TNMPrimaryTumorCategory)
* hasMember[tnmPrimaryTumorCategory] ^short = "TNM Primary Tumor Category"
* hasMember[tnmPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, and based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmPrimaryTumorCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmRegionalNodesCategory] only Reference(TNMRegionalNodesCategory)
* hasMember[tnmRegionalNodesCategory] ^short = "TNM  Regional Nodes Category"
* hasMember[tnmRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmRegionalNodesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmDistantMetastasesCategory] only Reference(TNMDistantMetastasesCategory)
* hasMember[tnmDistantMetastasesCategory] ^short = "TNM  Distant Metastases Category"
* hasMember[tnmDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmDistantMetastasesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."

Profile:  TNMPrimaryTumorCategory
Id: mcode-tnm-primary-tumor-category
Parent: Observation
Title: "Observation: TNM Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* insert NotUsed(hasMember)
* code from ObservationCodesPrimaryTumorVS (required)
* value[x] from TNMPrimaryTumorCategoryVS (example) 
  * insert AdditionalBinding (preferred,
                              VsPathologicalTI4rc, 
                              Vocabulary binding used for Clincal Stage - VALUE SET TO BE UPDATED)
  * insert AdditionalBinding (preferred,
                              VsPathologicalTI4rc, 
                              Vocabulary binding used for Clincal Stage - VALUE SET TO BE UPDATED)


Profile:  TNMRegionalNodesCategory
Id: mcode-tnm-regional-nodes-category
Parent: Observation
Title: "Observation: TNM Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* insert NotUsed(hasMember)
* code from ObservationCodesRegionalNodesVS (required)
* value[x] from TNMRegionalNodesCategoryVS (example)
  * insert AdditionalBinding (preferred,
                              VsPathologicalTI4rc, 
                              Vocabulary binding used for Clincal Stage - VALUE SET TO BE UPDATED)
  * insert AdditionalBinding (preferred,
                              VsPathologicalTI4rc, 
                              Vocabulary binding used for Clincal Stage - VALUE SET TO BE UPDATED)


Profile:  TNMDistantMetastasesCategory
Id: mcode-tnm-distant-metastases-category
Parent: Observation
Title: "Observation: TNM Distant Metastases Category"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* insert NotUsed(hasMember)
* code from ObservationCodesDistantMetastasesVS (required)
* value[x] from TNMDistantMetastasesCategoryVS (preferred)
  * insert AdditionalBinding (preferred,
                              VsPathologicalTI4rc, 
                              Vocabulary binding used for Clincal Stage - VALUE SET TO BE UPDATED)
  * insert AdditionalBinding (preferred,
                              VsPathologicalTI4rc, 
                              Vocabulary binding used for Clincal Stage - VALUE SET TO BE UPDATED)