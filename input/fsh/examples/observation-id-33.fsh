Instance: observation-id-33
InstanceOf: Observation
Title: "Observation: Epstein Barr virus DNA"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-testResult-eu-i4rc"
* status = #final
* code = $athena#3043849 "Epstein Barr virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#9189 "Negative"