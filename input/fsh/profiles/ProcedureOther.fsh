//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureOtherTreatI4rc
Parent:   Procedure 
Id:       Procedure-otherTreatment-eu-i4rc
Title:    "Procedure: Other Treatment"
Description: "This profile defines how to represent Isolated Limb Perfusion and Regional Deep Hyperthermia procedures in FHIR for describing a set of Surgery data required by the IDEA4RC project. This profiles is adapted from the PanCareSurPass Procedure Surgery profile."
//-------------------------------------------------------------------------------------------

* extension contains SameCustodianFlag named performedAt 0..1

/* * extension contains $procedure-category-r5 named ProcedureCategoryR5 0..*

* extension[ProcedureCategoryR5].valueCodeableConcept 1..1
  * ^short = "ADD VOC BINDING" */
// * extension[ProcedureCategoryR5].valueCodeableConcept from XXXX

/* * text ^short = "Textual description of the surgical procedure"
* identifier ^short = "External Identifiers for this surgical procedure"
* partOf only Reference (ProcedureSurgeryI4rc)
* partOf ^short = "Reference to the parent surgery procedure" */
* status ^short = "State of the procedure"
/* * category 1..
* category = $sct#387713003 
  * ^example.label = "Surgical procedure"
  * ^example.valueCodeableConcept = $sct#387713003 "Surgical procedure"  */
* code ^short = "Identification of the procedure." // used to indicate if it is an amputation, a shutn,....
// ADD BINDING
// * code from SurgicalProcedureTypeVs (extensible)
// * code from SurgeryTypeVs 
// add slice on coding to allow more precise data
* insert SubjectRules
* performed[x] 1..
* performedPeriod ^short = "Date of the surgical procedure"
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerI4rc)
// * bodySite 0..1 MS 
* outcome from VsTreatmentResponseI4rc

* usedReference only Reference(Device or Medication or SubstanceOtherTreatI4rc)