Profile: ObservationLabTest
Parent: Observation
Id: observation-lab-test-eu-i4rc
Title: "Observation: Lab test"
Description: "This profile constrains the Observation resource to represent Lab tests for the purpose of the IDEA4RC project."
* code 1..1
* code from VsLabTestI4RC
* subject 1..
* subject only Reference(PatientI4rc)
/* * effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing." */
* valueCodeableConcept 1..
* valueCodeableConcept from VsPositiveNegativeNottestedI4RC