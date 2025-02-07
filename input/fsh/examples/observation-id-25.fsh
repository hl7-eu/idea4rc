Instance: observation-id-25
InstanceOf: KarnofskyPerformanceStatus
Title: "Observation: Karnofsky Performance Status score"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-karnofsky-performance-status-eu-i4rc"
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#89243-0 "Karnofsky Performance Status score"
* subject = Reference(patient-id-17)
* valueInteger = 60 // "Requires occasional assistance but is able to care for most needs"
// it should be an integer * valueString = "Requires occasional assistance but is able to care for most needs"