      
//====== RuleSet =====================================

RuleSet: CancerConditionCommonRules

* extension contains  $condition-assertedDate named assertedDate 0..1 

//    and $mcode-histology-morphology-behavior named histologyMorphologyBehavior 0..1
/*     and $workflow-supportingInfo named supportingInfo 0..* */

// HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1 MS
// * extension[histologyMorphologyBehavior].value[x]
/* * extension[histologyMorphologyBehavior].value[x] from VsICDO3Morphology (required) */

* extension contains PreviousStatus named previousStatus 0..1
* extension[previousStatus]

* extension contains HistologyMorphologyBehavior named histology-morphology-behavior 0..2
* extension[HistologyMorphologyBehavior]



* extension contains RelapseType named relapseType 0..1 
* extension[relapseType].value[x]
/* * extension[relapseType].value[x] from RelapseTypeVS (preferred) */

/* * extension contains SameCustodianFlag named definedAt 0..1
* extension[definedAt]
  * ^short = "Determined in the same hospital ?"
  * ^definition = "Whether or not the progression/recurrence or persistent disease  was performed at the registering hospital or another hospital."
  * ^comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations.
It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."
* extension[definedAt].valueBoolean */

// Check how to map definedAt

/* * extension[supportingInfo].valueReference only Reference(ObservationYesNo) */

* insert SubjectRules


* bodySite
/* extension contains bodySite:site named site 0..2
* extension [site].valueCodeableConcept from sitesVs/
/*extension contains bodySite:subsite named subsite 0..*
*extension[subSite].valueCodeableConcept from VsSubsiteAthenaI4rc*/
  * extension contains BodyLocationQualifier named qualifier 0..*
  * extension[qualifier].valueCodeableConcept from VsSiteQualifierI4rc (extensible)
    * insert AdditionalBinding (preferred, $mcode-body-location-qualifier-vs, mCode value set)

  * extension contains LateralityQualifier named laterality 0..1
  * extension[laterality].valueCodeableConcept from LateralityQualifierVS (extensible)



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationDiagnosisI4rc
Parent:   Observation
Id:       Observation-diagnosis-eu-i4rc
Title:    "Observation: Diagnosis details"
Description: "This profile defines how to represent diagnosis details (when the diagnosis was made; who made it;...) in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------
* insert SubjectRules
* effectiveDateTime 1.. MS
* code 1..1 
* code = $loinc#29308-4 "Diagnosis"
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
* valueCodeableConcept 1..1
* valueCodeableConcept from CancerDiagnosisVS (extensible)
* method from TypeofBiopsyI4rcVS 
/* Fine needle biopsy - 4171863
Core needle biopsy - 4321878
Incisional biopsy - 4321986
Excisional biopsy - 4228202
Excision - 4279903
*/
* derivedFrom only Reference (hn-cancer-stage-group or sarcoma-cancer-stage-group)
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


* extension contains $condition-occurredFollowing named condition-occurredFollowing 0..*
* extension[condition-occurredFollowing].valueCodeableConcept 0..0
* extension[condition-occurredFollowing].valueReference ^short = "For relapses, reference to the first occurance of this tumor."
* extension[condition-occurredFollowing].valueReference only Reference (ConditionPrimaryCancerI4rc)

* extension contains $condition-dueTo named condition-dueTo 0..*
* extension[$condition-dueTo] ^short = "If Radiation therapy induced"
* extension[$condition-dueTo].valueCodeableConcept 1..
* extension[$condition-dueTo].valueCodeableConcept = $athena#4029715 // was $sct#108290001 "Radiation oncology AND/OR radiotherapy"

* insert CancerConditionCommonRules
// * clinicalStatus and verificationStatus MS
* clinicalStatus ^example.valueCodeableConcept = $condition-clinical#relapse
* clinicalStatus ^example.label = "Relapse"
* clinicalStatus 
  * coding ^slicing.discriminator[0].type = #value
  * coding ^slicing.discriminator[0].path = "system"
  * coding ^slicing.ordered = true
  * coding ^slicing.rules = #open
  * coding contains condition-clinical 1..1
  * coding[condition-clinical] from $vs-condition-clinical
  * coding contains athena 0..1
  * coding[athena] from CancerEventTypeVS

* code 1.. 
* code from CancerDiagnosisVS (extensible)

* onset[x] MS
* encounter only Reference (EncounterI4rc) // Link this cancer with a follow up encounter.
  * ^short = "Encounter this primary cancer has been identified"
  * ^definition = """Encounter this primary cancer has been identified.
  To be used for subsequent primary cancers."""

* stage.assessment only Reference(HnCancerStageGroup or SarcomaCancerStageGroup)
* stage.summary from CancerStageGradingVS
  * ^short = "Most recent Stage Group"
  * ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the stage group MAY appear in this element, copied from the CancerStageGroup, but Data Senders and Receivers MAY ignore it."

* stage.type ^short = "Staging system used."
* stage.type ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the staging system MAY appear in this element, but Data Senders and Receivers MAY ignore it."
// * stage.type from CancerStageGroupVS (required)

* bodySite from sitesVs (extensible)
//   * insert AdditionalBinding (required, VsSubsiteSnomedI4rc, SNOMED based sites)

/* * evidence ^slicing.discriminator.type = #value
* evidence ^slicing.discriminator.path = "$this.resolve()"
* evidence ^slicing.discriminator.type = #value
* evidence ^slicing.discriminator.path = "code"
* evidence ^slicing.rules = #open
* evidence ^slicing.description = "Slice based on the coding.code pattern" */

* evidence ^slicing.discriminator.type = #profile
* evidence ^slicing.discriminator.path = "$this.detail.resolve()"
* evidence ^slicing.rules = #open
* evidence ^slicing.description = "Slice based on the detail profile"

// Diagnosis details
* evidence contains diagnosisDetails 0..1 
* evidence[diagnosisDetails]
  * ^short = "Diagnosis Details"
  // * code = $loinc#29308-4 "Diagnosis"
  * detail only Reference (ObservationDiagnosisI4rc)

  // Tumor size
* evidence contains simpleResult  0..* 
* evidence[simpleResult]
  * ^short = "Tumor size, Mitotic count score, laboratory Test results"
  * ^definition = """It provides the measure of the tumor size; Mitotic count score, Lab results as:
  - EBV DNA plasma testing before treatment in NPC type II and III (WHO)
  - HPV tumor testing in oral carcinoma
  - C reactive protein testing."""
  
  // * code =  $loinc#21889-1 // Tumor size
  // * code =  $athena#36768664 // "Dimension of Tumor"
  * detail only Reference (ObservationSimpleResult) 

/* // Tumor size
* evidence contains tumorSize  0..1 
* evidence[tumorSize]
  * ^short = "Tumor size"
  * ^definition = """It provides the measure of the tumor size"""
  // * code =  $loinc#21889-1 // Tumor size
  // * code =  $athena#36768664 // "Dimension of Tumor"
  * detail only Reference (ObservationSimpleResult) 

// Biopsy Mitotic Count 
* evidence contains mitoticCount  0..1 
* evidence[mitoticCount]
  * ^short = "Mitotic count score"
  * ^definition = """It provides the measure of the tumor size"""
  // * code =  $athena#4227243 // Mitotic count score (to be checked)
  * detail only Reference (ObservationSimpleResult) 

// Lab Test performed
* evidence contains lab-test  0..3 
* evidence[lab-test]
  * ^short = "Laboratory Test results"
  * ^definition = """It includes the results of:
  - EBV DNA plasma testing before treatment in NPC type II and III (WHO)
  - HPV tumor testing in oral carcinoma
  - C reactive protein testing."""
  // * code from VsSimpleResultI4rc
  * detail only Reference (ObservationSimpleResult)  */

* evidence contains genetic-test 0..
* evidence[genetic-test]
  * ^short = "Genetic Tests performed"
  * ^definition = """It documents the Genetic Test performed"""
  // * code from VsGeneticTestsPerformed
  * detail only Reference (ObservationGeneticTestExpressionI4rc)


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
* code from MetastasisDisorderVS (extensible)
* bodySite from VsSiteOfMetastasisI4rc (extensible)
* insert NotUsed(stage)