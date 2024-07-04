Instance: observation-id-27
InstanceOf: ObservationCancerTreatment
Title: "Observation: Surgery treatment occurred"
Usage: #example

// Clarify if a link to the condition should be provided

// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-treatment-eu-i4rc"
* status = #final
* code = $loinc#63933-6 "Cancer treatment [PhenX]"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#4121697 "Surgery"