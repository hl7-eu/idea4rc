Profile: ObservationComorbidities
Parent: Observation
Id: observation-comorbidity-eu-i4rc
Title: "Observation: Comorbidities"
Description: """This profile constrains the Observation resource to represent Comorbidities for the purpose of the IDEA4RC project.
This profiles is adapted from the mCode FHIR Implementation Guide
"""
* code = $loinc#75618-9 "Comorbid condition" // SCT#398192003 Co-morbid conditions (finding) in mCode
* method ^short = "Comorbidity framework used."
* method ^definition = "The formal methodology used, such as Charlson, NCI, Elixhauser, or ACE-27. The method must be specified if a comorbidity index is specified, otherwise the index cannot be correctly interpreted."

/* to be reactivated when the PrimaryCancerCondition will be defined

* focus only Reference(PrimaryCancerCondition)
* focus ^short = "The Index Condition"
* focus ^definition = "Comorbid conditions are typically defined with respect to a specific 'index' condition. For example, the US Centers for Disease Control (CDC) has provided a list of comorbid conditions important to COVID-19. In this case, the focus would be COVID-19 and the comorbid condition categories would be those specified by CDC, namely obesity, renal disease, respiratory disease, etc." 

*/
* insert SubjectRules
* subject ^definition = "The patient whose comorbidities are recorded."

// We cannot use hasMember because that element does not allow Reference(Condition) or CodeableConcept as a type
// We cannot use component because that element does not allow References of any type
// Therefore, we need extensions to record the comorbid conditions
* extension contains $mcode-related-condition named comorbidConditionPresent 0..*
* extension contains $mcode-related-condition-absent named comorbidConditionAbsent 0..*

* extension[comorbidConditionPresent].valueCodeableConcept from VsComorbiditiesAthenaI4rc
  * insert AdditionalBinding (required, VsComorbiditiesSctI4rc, SNOMED based comorbidities)

* extension[comorbidConditionPresent].valueCodeableConcept 1..
* extension[comorbidConditionAbsent].valueCodeableConcept 1..
* extension[comorbidConditionAbsent].valueCodeableConcept from VsComorbiditiesAthenaI4rc
  * insert AdditionalBinding (required, VsComorbiditiesSctI4rc, SNOMED based comorbidities)

* value[x] only Quantity or integer
* value[x] ^short = "Comorbidity score or risk index"
* value[x] ^definition = "Comorbidity score or risk index"
* bodySite 0..0
* specimen 0..0
* device 0..0

/* 
* Design options considered and rejected
* 1. Why not use component?
*    Component does not support references, and we would like to 
*    give users the option of either a condition code or Reference(Condition)
* 2. Why not use hasMember?
*    hasMember is a Reference, but cannot reference Conditions 
*    (it is limited to Reference(Observation | QuestionnaireResponse | MolecularSequence))
*/
* hasMember 0..0
* component 0..0