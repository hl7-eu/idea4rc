//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureSurgeryI4rc
Parent:   Procedure 
Id:       Procedure-surgery-eu-i4rc
Title:    "Procedure: Surgery"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Surgery data required by the IDEA4RC project. This porfiles is adapted from the PanCareSurPass Procedure Surgery profile."
//-------------------------------------------------------------------------------------------

* extension contains SameHospital named sameHospital 0..1

* extension contains $procedure-category-r5 named ProcedureCategoryR5 0..*

* extension[ProcedureCategoryR5].valueCodeableConcept insert AdditionalBinding (preferred,
                              VsSurgicalProcedureCategoryI4rc, 
                              Vocabulary binding used for Surgery Type)
* extension[ProcedureCategoryR5].valueCodeableConcept insert AdditionalBinding (preferred,
                              VsSurgeryIntentionI4rc, 
                              Vocabulary binding used for Surgery Intent)

/* * extension ^slicing.discriminator[1].type = #value
* extension ^slicing.discriminator[=].path = "value"
* extension[ProcedureCategoryR5] contains type 1..1
* extension[ProcedureCategoryR5][type].valueCodeableConcept from VsSurgicalProcedureCategoryI4rc
* extension[ProcedureCategoryR5] contains intent 0..1
* extension[ProcedureCategoryR5][intent].valueCodeableConcept from VsSurgeryIntentionI4rc */

* extension contains  $procedure-method named ProcedureMethod 0..*
* extension[ProcedureMethod].valueCodeableConcept from VsTypeofSurgicalApproachI4rc (extensible)
  * ^short = "Type of surgical approach on Tumour"

* extension contains $procedure-supportingInfo-r5 named supportingInfoR5 0..*
* extension[supportingInfoR5].valueReference only Reference(ObservationTumorRuptureI4rc)

* text ^short = "Textual description of the surgical procedure"
* identifier ^short = "External Identifiers for this surgical procedure"
* partOf only Reference (ProcedureSurgeryI4rc)
* partOf ^short = "Reference to the parent surgery procedure"
* status ^short = "State of the procedure"
* category 1..
* category = $sct#387713003 
  * ^example.label = "Surgical procedure"
  * ^example.valueCodeableConcept = $sct#387713003 "Surgical procedure" 
* code ^short = "Identification of the procedure." 
* code from VsSurgicalProcedureCategoryI4rc (extensible)
// * code from SurgeryTypeVs 
// add slice on coding to allow more precise data
* insert SubjectRules
// * performed[x] 1..
* performedDateTime 1..
  * ^short = "Date of the surgical procedure"
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerI4rc)
// * bodySite 0..1 MS 
* bodySite from VsSurgerySiteI4rc
  * extension contains BodyLocationQualifier named qualifier 0..*
  * extension[qualifier].valueCodeableConcept // ADD BINDING 

  * extension contains LateralityQualifier named laterality 0..1
  * extension[laterality].valueCodeableConcept from VsSurgerySiteLateralityQualifierI4rc 

// === ADD VS BINDING =====
/* * bodySite.extension[lateralityQualifier].valueCodeableConcept from LeftRightBiUnilateralVS  (preferred)  */
* bodySite.extension[lateralityQualifier].valueCodeableConcept

* location only Reference(Location) // add profile 
* complication from VsSurgeryComplicationI4rc
* outcome from VsSurgeryOutcomeI4rc (extensible)

/* * focalDevice ^short = "Implanted or removed device"
  * action from SurgicalActionVs (extensible)
  * manipulated ^short = "Device manipulated" */
/* * usedCode ^short = "Coded items used during the procedure"
* usedCode from ProsthesisTypeVs (extensible) // update the value set */
