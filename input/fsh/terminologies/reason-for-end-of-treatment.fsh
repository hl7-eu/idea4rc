//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsReasonForEndofTreatmentI4rc
Id: reason-for-end-of-treatment-eu-i4rc
Title: "Reason For End Of Treatment"
Description: "Clarifies the reasons why the treatment ended or was interrupted"
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $athena#4058777 "completion"
* $athena#438028 "toxicity"
* $athena#4122706 "comorbidity"
* $athena#4105297 "patient intolerance"
// TO BE ADDED PATIENT DECISION
* $athena#4306655 "death"
* $athena#4129922 "unknown"





