Instance: observation-id-35
InstanceOf: ObservationSimpleResult
Title: "Observation: C reactive protein Positive"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-testResult-eu-i4rc"
* status = #final
* code = $athena#3000965 "C reactive protein [Presence] in Serum or Plasma"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#9191 "Positive"