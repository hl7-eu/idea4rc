Instance: GOFSH-GENERATED-ID-30
InstanceOf: MedicationAdministration
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/MedicationAdministration-eu-i4rc"
* extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension[=].valueCodeableConcept = $athena#4162591 "Curative - procedure intent"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.category"
* extension[=].valueCodeableConcept = $athena#44808409 "Neo-adjuvant"
* extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/chemiotherapy-info"
* extension[=].valueCodeableConcept = $athena#3184898 "Hyperthermic intraperitoneal chemotherapy"
* extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/number-of-cycles-administrations"
* extension[=].valueDecimal = 5
* extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/regimen-changed"
* extension[=].valuePeriod.start = "2021-12-15T00:00:00+01:00"
* extension[=].valuePeriod.end = "2022-03-14T00:00:00+01:00"
* extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/reason-for-end-of-treatment"
* extension[=].valueCodeableConcept = $athena#4082735 "Treatment completed"
* extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/treatment-response"
* extension[=].valueCodeableConcept = $athena#32947 "Partial Remission"
* status = #unknown
* subject = Reference(patient-id-17)
* effectivePeriod.start = "2021-12-15T00:00:00+01:00"
* effectivePeriod.end = "2022-03-14T00:00:00+01:00"
* medicationCodeableConcept = $athena#1379408 "Unknown" // Added ex-post
* reasonReference = Reference(urn:uuid:5a5bd0ce-8470-458c-897e-823efc99154f)