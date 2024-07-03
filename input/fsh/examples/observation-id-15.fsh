Instance: observation-id-15
InstanceOf: ObservationDateLastContact
Title: "Observation: date of the last contact"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-dateLastContact-eu-i4rc"
* status = #final
* code = $loinc#21975-8
* subject = Reference(patient-id-17)
* encounter = Reference(encounter-id-14)
* valueDateTime = "2024-02-03"