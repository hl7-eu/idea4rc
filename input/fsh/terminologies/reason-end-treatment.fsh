ValueSet: VsReasonToEndTreatment
Id: reason-to-end-treatment
Title: "Reason to End Treatment"
Description: "A ValueSet containing reasons why a treatment was ended, based on Athena concepts."

* ^status = #active
* ^experimental = false

* $athena#44788181 "Completed successfully"
* $athena#4162594 "Chemotherapy changed acute chemotherapy toxicity"
* $cs-idea4rc-vocab-eu-i4rc#2000100030 "Treatment ended due to comorbidity"
* $athena#4240582 "Intolerance to drug"
* $athena#37017062 "Procedure discontinued by patient"
* $athena#4306655 "Death"