Instance:  procedure-id-29
InstanceOf: ProcedureSurgeryI4rc
Title: "Procedure: Isolated limb perfusion"
Description: "Procedure: Isolated limb perfusion. With Macroscopic residual tumor and Grade III complication"
Usage: #example

// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-surgery-eu-i4rc"
* extension[surgeryHospital].valueBoolean = true
* extension[ProcedureCategoryR5][type].valueCodeableConcept = $athena#4315400 "Local excision"
* extension[ProcedureCategoryR5][intent].valueCodeableConcept = $athena#4162591 "Curative - procedure intent"



/*  "http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.category"
* extension[=].extension[0].url = "http://hl7.eu/fhir/ig/idea4rc/ValueSet/vs-surgicalProcedureCategory-eu-i4rc"
* extension[=].extension[=].valueCodeableConcept = $athena#4315400 "Local excision"
* extension[=].extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/ValueSet/surgery-intention-eu-i4rc"
* extension[=].extension[=].valueCodeableConcept = $athena#4162591 "Curative - procedure intent"
* extension[+].url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/same-custodian-flag"
* extension[=].valueString = "INT" */

* status = #in-progress
* category = $sct#387713003 "Surgical procedure (procedure)"
* code = $athena#4019656 "Isolated limb perfusion"
* subject = Reference(patient-id-17)
* performedDateTime = "2023-11-12T00:00:00+01:00"
* reasonReference = Reference(condition-id-10)
* outcome = $athena#1634484 "R2: Macroscopic residual tumor"
* complication = $athena#715976 "Clavien-Dindo complication scale: Grade III"