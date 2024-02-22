Profile: ObservationCancerTreatment
Parent: Observation
Id: observation-treatment-eu-i4rc
Title: "Observation: Cancer Treatment"
Description: "This profile constrains the Observation resource to represent the assertion that a cancer treatment occurred, specifying the type."
* code 1..1
* code = $loinc#63933-6 // "Cancer treatment [PhenX]" 
* insert SubjectRules
* valueCodeableConcept 1..
* valueCodeableConcept from VsTypeofTreatmentI4rc
* component ..0