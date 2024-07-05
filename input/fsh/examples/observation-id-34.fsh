Instance: observation-id-34
InstanceOf: ObservationSimpleResult
Title: "Observation: Human papilloma virus Negative"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-testResult-eu-i4rc"
* status = #final
* code = $athena#44789520 "Human papilloma virus nucleic acid detection"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#9189 "Negative"