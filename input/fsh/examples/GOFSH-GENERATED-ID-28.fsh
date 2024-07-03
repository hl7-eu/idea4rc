Instance: GOFSH-GENERATED-id-28
InstanceOf: Procedure
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-radiotheraphy-eu-i4rc"
* extension[0].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/same-custodian-flag"
* extension[=].valueString = "INT"
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension[=].valueCodeableConcept = $athena#4162591 "Curative - procedure intent"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.category"
* extension[=].valueCodeableConcept = $athena#4058775 "Postoperative course of radiotherapy"
* extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[=].extension[0].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-radiotherapy-modality"
* extension[=].extension[=].valueCodeableConcept = $athena#4012485 "Interstitial brachytherapy"
* extension[=].extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-radiotherapy-technique"
* extension[=].extension[=].valueCodeableConcept = $athena#4215577 "Stereotactic radiotherapy"
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* extension[=].extension[0].url = "totalDoseDelivered"
* extension[=].extension[=].valueQuantity.value = 10.699999809265137
* extension[=].extension[=].valueQuantity.system = "http://unitsofmeasure.org"
* extension[=].extension[=].valueQuantity.unit = "Gy"
* extension[=].extension[+].url = "fractionsDelivered"
* extension[=].extension[=].valueDecimal = 8.5
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-termination-reason"
* extension[=].valueCodeableConcept = $athena#4188540 "no"
* status = #in-progress
* category = $sct#108290001 "Radiotherapy"
* code = $sct#108290001 "Radiotherapy"
* subject = Reference(patient-id-17)
* performedPeriod.start = "2022-05-14T00:00:00+02:00"
* performedPeriod.end = "2022-11-15T00:00:00+01:00"
* reasonReference = Reference(condition-id-10)