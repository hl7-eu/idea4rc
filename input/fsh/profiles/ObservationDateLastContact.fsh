Profile: ObservationDateLastContact
Parent: Observation
Id: observation-dateLastContact-eu-i4rc
Title: "Observation: date of the last contact"
Description: "This profile constrains the Observation resource to represent the date of the last contact."
* code 1..1
* code = $loinc#21975-8 // "Date last contact" 
* subject 1..
* subject only Reference(PatientI4rc)
* valueDateTime 1..
* component ..0