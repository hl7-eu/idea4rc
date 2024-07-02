Instance: observation-id-31
InstanceOf: ObservationSimpleResult
Title: "Observation: Dimension of Tumor"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-testResult-eu-i4rc"
* status = #final
* code = $athena#36768664 "Dimension of Tumor"
* subject = Reference(patient-id-17)
* valueQuantity = 2.5 'cm' "centimeter"