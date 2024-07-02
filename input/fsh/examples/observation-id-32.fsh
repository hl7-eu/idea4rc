Instance: observation-id-32
InstanceOf: ObservationSimpleResult
Title: "Observation: Number of mitoses per HPF"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-testResult-eu-i4rc"
* status = #final
* code = $athena#4227243 "Number of mitoses per 10 high power fields"
* subject = Reference(patient-id-17)
* valueQuantity = 15 '/[HPF]'