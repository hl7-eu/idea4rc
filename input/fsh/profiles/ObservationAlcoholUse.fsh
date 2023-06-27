Profile: ObservationAlcoholUse
Parent: Observation
Id: observation-alcoholuse-eu-i4rc
Title: "Observation: alcohol use"
Description: "This profile constrains the Observation resource to represent alcohol use assessment for the purpose of the IDEA4RC project."
* code 1..1
* code = $loinc#11331-6 "History of Alcohol use" // to be checked 
* subject 1..
* subject only Reference(PatientI4rc)
/* * effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing." */
* valueCodeableConcept from VsAlcoholUsageStatusI4RC 
* component ..0