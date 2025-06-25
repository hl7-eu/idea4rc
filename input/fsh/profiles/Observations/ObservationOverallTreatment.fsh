Profile: ObservationOverallTreatment
Parent: Observation
Id: observation-overallTreatment-eu-i4rc
Title: "Observation: Overall Treatment"
Description: "This profile constrains the Observation resource to represent the response to overall treatment."
* extension contains SameHospital named sameHospital 0..1
* extension contains $observation-reasonReference named reasonReference 1..1 
* extension[reasonReference].valueReference only Reference(ConditionPrimaryCancerI4rc) 
* code 1..1
* code =  $loinc#88040-1
* insert SubjectRules
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VsTreatmentResponseI4rc