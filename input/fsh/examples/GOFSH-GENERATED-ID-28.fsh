Instance: GOFSH-GENERATED-id-28
InstanceOf: ProcedureRadiotherapyI4rc
Title: "Procedure: Radiotherapy"
Description: "Radiotherapy procedure with curative intent, postoperative course, interstitial brachytherapy and stereotactic technique."
Usage: #example

* extension[sameHospital].valueBoolean = true
* extension[procedureIntent].valueCodeableConcept = $athena#4162591 "Curative - procedure intent"
* extension[procedureCategoryR5].valueCodeableConcept = $athena#4058775 "Postoperative course of radiotherapy"
* extension[modalityAndTechnique].extension[modality].valueCodeableConcept = $athena#4012485 "Interstitial brachytherapy"
* extension[modalityAndTechnique].extension[technique].valueCodeableConcept = $athena#4215577 "Stereotactic radiotherapy"
* status = #in-progress
* category = $sct#108290001 "Radiotherapy"
* code = $sct#108290001 "Radiotherapy"
* subject = Reference(patient-id-17)
* performedPeriod.start = "2022-05-14T00:00:00+02:00"
* performedPeriod.end = "2022-11-15T00:00:00+01:00"
* reasonReference = Reference(condition-id-10)