Logical: SystemicTreatmentI4RC
Id: SystemicTreatment
Title: "Systemic Treatment"
Description: """Systemic Treatment
Maturity Level: 0 Draft"""
* diagnosisReference 1..* Diagnosis "Diagnosis reference (M)" """Diagnosis reference in case the treatment was done for baseline"""
* diagnosisReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* diagnosisReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* episodeEvent 1..* EpisodeEvent "Episode Event reference (M)" """EpisodeEvent element containing the data regarding the patient's cancer"""
* episodeEvent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* systemicTreatmentHospital 1..* string "SystemicTreatment Hospital (M)" """In which hospital was the SystemicTreatment performed"""
* systemicTreatmentHospital insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* systemicTreatmentHospital insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* typeOfSystemicTreatment 1..* CodeableConcept "type of systemic treatment (M)" """Select the type of systemic treatment administered. It is possible to directly select the single treatment as appropriate."""
* typeOfSystemicTreatment insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* typeOfSystemicTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* typeOfSystemicTreatment ^comment = """Chemotherapy - 4273629
Immunotherapy - 40310107
Targeted therapy -  912065
"""
* intent 0..* CodeableConcept "Intent (O)" """Clarifies the reasons why systemic therapy is administered
• Curative chemotherapy is chemotherapy administered with the goal of achieving a complete remission and preventing the recurrence of cancer. 
• Palliative chemotherapy refers to any chemotherapy administration that is not curative but administered simply to decrease tumor load and increase life expectancy. It has been defined also as “…treatment in circumstances where the impact of intervention is insufficient to result in major survival advantage, but does affect improvement in terms of tumor‐related symptoms…”
"""
* intent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* intent ^comment = """Palliative - 4179711
Curative procedure intent - 4162591"""
* setting 0..* CodeableConcept "Setting (O)" """Clarifies the context / how the therapy was administered alone or in conjunction with other treatments
• Neoadjuvant: treatment given as a first step to shrink a tumor before the main treatment, which is usually surgery, is given. Examples of neoadjuvant therapy include chemotherapy, radiation therapy, and hormone therapy. It is a type of induction therapy.
• Adjuvant: additional cancer treatment given after the primary treatment to lower the risk that the cancer will come back. Adjuvant therapy may include chemotherapy, radiation therapy, hormone therapy, targeted therapy, or biological therapy.
• Concomitant/concurrent: A treatment that is given at the same time as another (es. Chemotherapy and radiotherapy).
"""
* setting insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* setting ^comment = """Neo-adjuvant - 44808409
Concomitant - 2000100028
 Adjuvant - 44804498
Systemic treatment alone - 2000100029"""
* chemotherapyInfo 0..* CodeableConcept "Chemotherapy info (O)" """Information for chemotherapy"""
* chemotherapyInfo insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* chemotherapyInfo ^comment = """Preoperative - 4119031
Postoperative period - 4118656
Hyperthermic intraperitoneal chemotherapy - 3184898
Therapeutic - 4133895"""
* startDateSystemicTreatment 1..* date "Start date systemic treatment (M)" """Specifies when systemic treatment begins"""
* startDateSystemicTreatment insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* startDateSystemicTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* endDateSystemicTreatment 1..* date "End date systemic treatment (M)" """Specifies when systemic treatment ends"""
* endDateSystemicTreatment insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* endDateSystemicTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* numberOfCycles 0..* Quantity "Number of cycles/ administrations (O)" """Clarifies how many times the treatment was administered. A cycle of treatment is a period of treatment followed by a period of rest (no treatment). For example, treatment given for one week followed by three weeks of rest is one cycle of treatment. A cycle can be repeated multiple times."""
* numberOfCycles insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* numberOfCycles insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* regimen 0..* CodeableConcept "Regimen (O)" """The regimen applied to the patient. If this is not present, or the specific regimen is not listed here, use the DrugsForTreatments entity."""
* regimen insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* regimen insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* regimen ^comment = """Doxorubicin and Ifosfamide - 35806965
Ifosfamide and Paclitaxel - 35805248
doxorubicin and vincristine - 2000100054
Epirubicin monotherapy - 35804228
Etoposide monotherapy - 35803691
Gemcitabine monotherapy - 35804135
Ifosfamide and Gemcitabine - 35806435
gemcitabine and vincristine - 2000100055
high dose cisplatin - 2000100056
Ifosfamide monotherapy - 35804542
ifosfamide and etoposide - 2000100057
Irinotecan liposomal monotherapy - 35805368
Lenvatinib monotherapy - 35805795
Methotrexate monotherapy - 35804095
Nivolumab monotherapy - 35803677
ADT (other androgen deprivation therapy) - 35806821
Oxaliplatin monotherapy - 35805078
Paclitaxel monotherapy - 35804166
Gemcitabine and Paclitaxel - 35804158
Ifosfamide and Paclitaxel - 35805248
Paclitaxel and Trastuzumab (TH) - 35804201
Paclitaxel and Vinorelbine - 35101452
  Pembrolizumab monotherapy - 35803678
Sorafenib monotherapy - 35803487
Trastuzumab emtansine monotherapy (TDM1) - 35805230
Trastuzumab monotherapy - 35804222
Vinorelbine monotherapy - 35804241
weekly carboplatin - 2000100058
weekly cisplatin - 2000100059

Epirubicin and Ifosfamide - 35806948
Vincristine and Doxorubicin and Ifosfamide - 2000100060
Vincristine,  Actinomycin D, Ifosfamide (
VAI) - 35805452
Docetaxel and Gemcitabine - 35803577
Dacarbazine and Doxorubicin - 35806964
Methotrexate and Doxorubicin and Cisplatin - 2000100061
Methotrexate and Doxorubicin and Ifosfamide - 2000100062
Doxorubicin and Cisplatin and Ifosfamide - 2000100063
Cisplatin and Doxorubicin - 35804819
Methotrexate and Vinorelbine - 2000100064
Ifosfamide and Etoposide (IE) - 35805454
Vincristine and Doxorubicin and Cyclophosphamide - 2000100065
Cyclophosphamide and Etoposide - 35806476
Doxorubicin and Ifosfamide and Dacarbazine - 2000100066
Dacarbazine and Gemcitabine - 35806969
Cyclophosphamide and Topotecan - 35805453
Irinotecan and Vincristine - 2000100067
Irinotecan and Temozolomide - 35805455
Busulfan and Melphalan - 35804000
TNF and Melphalan - 2000100068
Cyclophosphamide and Vinorelbine - 2000100069
Vincristine, Ifosfamide, Doxorubicin, Etoposide (VIDE) - 35805451
Pazopanib monotherapy - 35805690
Regorafenib monotherapy - 35804569
high dose Ifosfamide - 2000100070"""
* startDateRegimenChanged 1..* date "Start date regimen changed (M)" """Specifies when the new systemic treatment begins, if a combination please specify the start of the first drug"""
* startDateRegimenChanged insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* endDateRegimenChanged 1..* date "End date regimen changed (M)" """Specifies when the new  systemic treatment ends,if a combination please specify the end of the last drug"""
* endDateRegimenChanged insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* reasonForEndOfTreatment 1..* CodeableConcept "Reason for end of treatment (M)" """Clarifies the reasons why the treatment ended or was interrupted"""
* reasonForEndOfTreatment insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* reasonForEndOfTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* reasonForEndOfTreatment ^comment = """Completed successfully - 44788181
Chemotherapy changed acute chemotherapy toxicity - 4162594 
Treatment ended due to comorbidity - 2000100030
Intolerance to drug - 4240582
Procedure discontinued by patient - 37017062
Death - 4306655"""
* treatmentResponse 1..* CodeableConcept "Treatment response (based on imaging alone; no recist or other criteria) (M)" """Measures how well a cancer patient responds to treatment. RECIST criteria should not be applied. The definition of Complete response; Partial response; Stable disease; Progression, should be based on the clinical judgement based on imaging.  Only when setting=neoadiuvant or  palliative"""
* treatmentResponse insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* treatmentResponse insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* treatmentResponse ^comment = """Complete Remission - 32946
Partial Remission - 32947
Stable Disease - 32948
Progression - 32949
Not applicable - 4294169 (Not usable in OMOP)"""
