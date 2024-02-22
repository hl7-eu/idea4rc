Profile: ObservationOccurrenceOtherCancer
Parent: Observation
Id: observation-occurrencOtherCancer-eu-i4rc
Title: "Observation: Occurrence of the other cancer"
Description: "This profile constrains the Observation resource to represent the occurrence of the other cancer."
* code 1..1
* code =  $athena#40769821 //  "Other cancer diagnosis [PhenX]"
// * code.coding[+] =  $loinc#67190-9 // "Other cancer diagnosis [PhenX]"
* subject 1..
* subject only Reference(PatientI4rc)
* valueCodeableConcept 1..
* valueCodeableConcept from VsOccurrenceOtherCancerI4rc (extensible)
* component ..0
* hasMember ..0