//====== RuleSet =====================================

RuleSet: MedicationAdministrationI4rcRules
/* * extension contains 
		ResourceRelatedInfo named relatedCumulativeDose 0..1 
		and EventLocation named location 0..1 */
/* * extension[relatedCumulativeDose].valueReference only Reference(CumulativeDoseChemoObsI4rc) */
/* * extension[location].valueReference only Reference(LocationI4rc) */
* status MS
* insert SubjectRules
* statusReason from VsReasonToEndTreatment
* medicationCodeableConcept from DrugSystemicTreatmentsVS
* medicationCodeableConcept 1..1 MS
* reasonReference 1..1 // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerI4rc)


RuleSet: CumulativeDoseObsRules
* status MS
* category 0.. MS
* code MS
* insert SubjectRules
* specimen 0..
* value[x] 1.. MS
* value[x] only Quantity or CodeableConcept
* valueQuantity MS
* valueQuantity.value 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = $ucum
* valueQuantity.code 1.. MS 
* valueQuantity.unit MS 
* valueCodeableConcept = $data-absent-reason#unknown "Unknown" 
* component 0..


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationI4rc
Parent:   MedicationAdministration 
Id:       MedicationAdministration-eu-i4rc
Title:    "MedicationAdministration: Chemotherapy"
Description: "This profile defines how to represent MedicationAdministration in HL7 FHIR for describing Chemotherapy data for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------

* extension contains 
  SameHospital named sameHospital 0..1 and 
  outcome named outcome 0..1 and 
  $mcode-procedure-intent  named intent 0..1 and 
  $medicationadministration-category-r5 named categoryR5 1..*

* extension[categoryR5].value[x] only CodeableConcept
* extension[categoryR5].valueCodeableConcept from VsTypeofSystemicTreatmentI4rc (preferred)
* extension[categoryR5].valueCodeableConcept insert AdditionalBinding (preferred, VsTreatmentSetting4RC, Vocabulary binding used for Treatment Settings)
* extension[categoryR5].valueCodeableConcept insert AdditionalBinding (preferred, ChemotherapyInfoVs, Vocabulary binding used for Chemotherapy Info)

* insert MedicationAdministrationI4rcRules

/*=== REMOVED NOT PRESENT IN THE LOGICAL MODEL MAPPING 
* extension contains $workflow-supportingInfo named supportingInfo 0..*
* extension[supportingInfo] 0..*
* extension[supportingInfo].valueReference only Reference(DocumentReference)
==== */
* effective[x] ^short = "When the chemotherapy was administered"
* effectivePeriod MS
* dosage.dose 
  * ^short = "Amount per dose"
  * value 1.. MS
  * system 1.. MS
  * system = $ucum
  * code 1.. MS 
  * unit MS 
* dosage.extension contains ChemotherapyTiming named chemotherapyTiming 0..1

Extension: Outcome
Id: outcome
Title: "Medication Outcome"
Description: "The outcome of the medication administration in the context of cancer treatment."
* value[x] only CodeableConcept
* valueCodeableConcept from VsTreatmentResponseI4rc (preferred)
* valueCodeableConcept MS

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementI4rc
Parent:   MedicationStatement 
Id:       MedicationStatement-eu-i4rc
Title:    "MedicationStatement: Chemotherapy"
Description: "This profile defines how to represent MedicationStatement in FHIR for describing minimal information about provided medications for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------
* status ^short = "active | completed | entered-in-error | intended | stopped | on-hold | unknown |not-taken"

* status 
  * ^example.valueCode = #completed
  * ^example.label = "general"
  
* medicationCodeableConcept
  * ^example.valueCodeableConcept = $atc#H02 "CORTICOSTEROIDS FOR SYSTEMIC USE"
  * ^example.label = "general"

* reasonReference MS
* reasonReference ^short = "Required if related to chemotherapy treatments"
* reasonReference only Reference(ConditionPrimaryCancerI4rc)

// add a slice for category H02 CORTICOSTEROIDS FOR SYSTEMIC USE

* dosage.route
  * ^example.valueCodeableConcept = $edqm#20042000 "Intrathecal use"
  * ^example.label = "general"
  
// 20042000 edqm Intrathecal use
* dosage.timing.repeat.count ^short = "Number of administration"
* dosage.timing.repeat.boundsDuration ^short = "Length/Range of lengths, or (Start and/or end) limits." */