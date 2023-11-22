Profile: ObservationTestResult
Parent: Observation
Id: observation-testResult-eu-i4rc
Title: "Observation: test results"
Description: "This profile constrains the Observation resource to represent test results for the purpose of the IDEA4RC project."
* obeys obs-valueOftype-quantity
* obeys obs-valueOftype-codeable
* code 1..1
* code from VsTestResultI4rc
* subject 1..
* subject only Reference(PatientI4rc)
/* * effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing." */
* value[x] 1..
* valueCodeableConcept 0..
* valueCodeableConcept from VsPositiveNegativeNTAthenaI4rc (example)
  * insert AdditionalBinding (required, VsYesNoUnkAthenaI4rc,Yes-No-Unkwnon)
  * insert AdditionalBinding (required, VsPositiveNegativeNTAthenaI4rc, Positive-Negative-Not Tested)
  * insert AdditionalBinding (extensible, VsPositiveNegativeNTSnomedI4rc, Positive-Negative-Not Tested)
* valueQuantity 0..


Invariant: obs-valueOftype-quantity
Description: "If the type is 371472000 Mitotic count score then the value is a quantity"
Severity:    #warning
Expression:  "( code.where(code = '371472000') or code.where(code = '21889-1') ) and valueCodeableConcept.exists()"

Invariant: obs-valueOftype-codeable
Description: "If the type is 371472000 Mitotic count score then the value is a CodeableConcept"
Severity:    #warning
Expression:  "( code.where(code = '371472000') or code.where(code = '21889-1') )  and valueCodeableConcept.empty()"