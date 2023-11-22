RuleSet: PerformanceStatusCommonRules
* insert CategorySlicingRules
* category = $observation-category#survey
* subject 1..1
* insert NotUsed(bodySite)
* insert NotUsed(specimen)
* insert NotUsed(device)
* insert NotUsed(hasMember)
* insert NotUsed(component)
* basedOn only Reference (ServiceRequest or CarePlan)
* partOf only Reference (Procedure)
* insert SubjectRules
* effective[x] only dateTime or Period


Profile:    KarnofskyPerformanceStatus
Parent:     Observation
Id: observation-karnofsky-performance-statuseu-i4rc
Title:      "Observation: Karnofsky Performance Status"
Description:    "The Karnofsky Performance Status (KPS) is a tool used to measure a patient's functional status. It can be used to compare the effectiveness of different therapies and to help assess the prognosis of certain patients, such as those with certain cancers. The KPS score ranges from 0 to 100 in intervals of 10. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death."
* insert PerformanceStatusCommonRules
* code = $loinc#89243-0 //"Karnofsky Performance Status score"
* value[x] only integer
* interpretation from http://loinc.org/vs/LL4986-7 (required)


Profile:    ECOGPerformanceStatus
Parent:     Observation
Id: observation-ecog-performance-status-eu-i4rc
Title:      "Observation: ECOG Performance Status"
Description:    "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/))"
* insert PerformanceStatusCommonRules
* code = $loinc#89247-1 //"ECOG Performance Status score"
// UPDATED BASED ON THE NEW MODEL * value[x] only integer
* value[x] only CodeableConcept
* valueCodeableConcept from VsEcogI4rc
* interpretation from http://loinc.org/vs/LL529-9 (required)


Profile:    CharlsonComorbidityIndex
Parent:     Observation
Id: observation-cci-eu-i4rc
Title:      "Observation: Charlson Comorbidity Index"
Description:    "The Charlson Comorbidity Index predicts 10-year survival in patients with multiple comorbidities."
* insert PerformanceStatusCommonRules
* code = $sct#762713009 // "Charlson Comorbidity Index"
// UPDATED BASED ON THE NEW MODEL * value[x] only integer
* value[x] only integer


