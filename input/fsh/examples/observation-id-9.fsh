Instance: observation-id-9
InstanceOf: ObservationYesNo
Title: "Observation: gene Mutation Analysis Performed yes"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-yesNo-eu-i4rc"
* status = #final
* code = $athena#4038339 "Gene mutation analysis"
* subject = Reference(patient-id-17)
* effectiveDateTime = "2024-03-18T00:00:00+01:00"
* valueCodeableConcept = $athena#4188539 "yes"