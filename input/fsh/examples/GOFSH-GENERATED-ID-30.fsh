Instance: GOFSH-GENERATED-id-30
InstanceOf: MedicationAdministration
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/MedicationAdministration-eu-i4rc"
* extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension[=].valueCodeableConcept = $athena#4162591 "Curative - procedure intent"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.category"
* extension[=].valueCodeableConcept = $athena#44808409 "Neoadjuvant chemotherapy"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationAdministration.category"
* extension[=].valueCodeableConcept.coding.system = "http://fhir.ohdsi.org/CodeSystem/concepts"
* extension[=].valueCodeableConcept.coding.code = #912065
* extension[=].valueCodeableConcept.coding.display = "Target therapy"
* status = #unknown
* subject = Reference(patient-id-17)
* effectivePeriod.start = "2021-12-15T00:00:00+01:00"
* effectivePeriod.end = "2022-03-14T00:00:00+01:00"
* medicationCodeableConcept = $athena#1379408 "Unknown" // Added ex-post
* reasonReference = Reference(condition-id-10)