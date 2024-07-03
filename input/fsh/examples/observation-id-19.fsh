Instance: observation-id-19
InstanceOf: ObservationAlcoholUse
Title: "Observation: Alcohol use"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-alcoholuse-eu-i4rc"
* status = #final
* code = $loinc#11331-6 "History of Alcohol use"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#37204556 "Lifetime non-drinker of alcohol"