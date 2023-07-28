//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsTreatmentCompletedAsPlannedI4RC
Id: treatment-completed-as-planned-i4rc
Title: "Treatment completed as planned"
Description: "refers to whether patient completed all treatment as planned or if it had to be interrupted due to several reasons"
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = true

* $athena#4058777 "completion"
* $athena#438028 "toxicity"
* $athena#4162706 "comorbidity"
* $athena#4105297 "patient intolerance"
* $athena#4306655 "death"
* $athena#4129922 "unknown"





