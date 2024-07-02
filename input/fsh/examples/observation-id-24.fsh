Instance: observation-id-24
InstanceOf:  ECOGPerformanceStatus
Title: "Observation: ECOG Performance Status score"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-ecog-performance-status-eu-i4rc"
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#89247-1 "ECOG Performance Status score"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#4173614 "ECOG performance status grade 1"