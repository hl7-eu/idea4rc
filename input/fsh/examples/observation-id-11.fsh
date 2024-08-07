Instance: observation-id-11
InstanceOf: ObservationYesNo
Title: "Observation: immunohiostochemestry analysis performed"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-yesNo-eu-i4rc"
* status = #final
* code = $cs-generic-eu-i4rc#immunohistochemistryPerformed "A immunohiostochemestry analysis is performed"
* subject = Reference(patient-id-17)
* effectiveDateTime = "2024-03-18T00:00:00+01:00"
* valueCodeableConcept = $athena#4188539 "yes"