      
//====== RuleSet =====================================

RuleSet: CancerConditionCommonRules
* extension contains
    $condition-assertedDate named assertedDate 0..1 
    and $mcode-histology-morphology-behavior named histologyMorphologyBehavior 0..1
/*     and $workflow-supportingInfo named supportingInfo 0..* */
	and PreviousStatus named previousStatus 0..1
  and RelapseType named relapseType 0..1 
	
// HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1 MS

* extension[histologyMorphologyBehavior].value[x]

/* * extension[histologyMorphologyBehavior].value[x] from VsICDO3Morphology (required) */
* extension[previousStatus]
/* * extension[relapseType].value[x] from RelapseTypeVS (preferred) */
* extension[relapseType].value[x]

/* * extension[supportingInfo].valueReference only Reference(ObservationYesNo) */

* subject only Reference (PatientI4rc)


* bodySite from VsSubsiteAthenaI4rc (extensible)
  * insert AdditionalBinding (required, VsSubsiteSnomedI4rc, SNOMED based sites) 

  * extension contains BodyLocationQualifier named qualifier 0..*
  * extension[qualifier].valueCodeableConcept // ADD BINDING 

  * extension contains LateralityQualifier named laterality 0..1
  * extension[laterality].valueCodeableConcept from LateralityQualifierVS 


//====== Profiles =====================================

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

* extension contains $condition-dueTo named condition-dueTo 0..*
* extension[$condition-dueTo] ^short = "If Radiation therapy induced"
* extension[$condition-dueTo].valueCodeableConcept = $sct#108290001 "Radiation oncology AND/OR radiotherapy"

* insert CancerConditionCommonRules
// * clinicalStatus and verificationStatus MS
* clinicalStatus ^example.valueCodeableConcept = $condition-clinical#relapse
* clinicalStatus ^example.label = "Relapse"
  
* code 1.. MS // add value set; add slices for

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
// * stage.type from CancerStageGroupVS (required)


* evidence ^slicing.discriminator.type = #pattern
* evidence ^slicing.discriminator.path = "$this.resolve()"
* evidence ^slicing.discriminator.type = #pattern
* evidence ^slicing.discriminator.path = "code"
* evidence ^slicing.rules = #open
* evidence ^slicing.description = "Slice based on the coding.code pattern"

// Diagnosis details
* evidence contains diagnosisDetails 0..1 
* evidence[diagnosisDetails]
  * ^short = "Diagnosis Details"
  * code = $loinc#29308-4 "Diagnosis"
  * detail only Reference (ObservationDiagnosisI4rc)

// Lab Test performed
* evidence contains lab-test  1..4 
* evidence[lab-test]
  * ^short = "Laboratory Test results"
  * ^definition = """It includes the results of:
  - EBV DNA plasma testing before treatment in NPC type II and III (WHO)
  - HPV tumor testing in oral carcinoma
  - C reactive protein testing.
  - Biopsy Mitotic Count"""
  * code from VsTestResultI4rc
  * detail only Reference (ObservationTestResult) 


* evidence contains genetic-test 0..
* evidence[genetic-test]
  * ^short = "Genetic Test perfomed"
  * ^definition = """It documents the Genetic Test perfomed"""
  * code ^short = "add binding"
  * detail only Reference (ObservationGenomicVariant) // Profile to be reviewed

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