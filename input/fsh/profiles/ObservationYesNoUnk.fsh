Profile: ObservationYesNo
Parent: Observation
Id: observation-yesNo-eu-i4rc
Title: "Observation: Yes / No assertions"
Description: "This profile constrains the Observation resource to represent the situations where a Yes/No answer is captured for the purpose of the IDEA4RC project."
* code 1..1
* code from VsObsYesNoCodeI4rc
* subject 1..
* subject only Reference(PatientI4rc)
* valueCodeableConcept 1..
* valueCodeableConcept from VsYesNoUnkAthenaI4rc  
* component ..0