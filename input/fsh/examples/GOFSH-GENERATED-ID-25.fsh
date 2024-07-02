Instance: GOFSH-GENERATED-ID-25
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-karnofsky-performance-statuseu-i4rc"
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#89243-0 "Karnofsky Performance Status score"
* subject = Reference(patient-id-17)
* valueString = "Requires occasional assistance but is able to care for most needs"