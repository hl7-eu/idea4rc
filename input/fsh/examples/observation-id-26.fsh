Instance: observation-id-26
InstanceOf: ObservationOccurrenceOtherCancer
Title: "Observation: Occurrence of other Cancer: Hamartoma"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-yesNo-eu-i4rc"
* status = #final
* code = $athena#40769821 "Other cancer diagnosis [PhenX]"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#4266653 "Hamartoma"