Logical: RegionalDeepHyperthemiaI4RC
Id: RegionalDeepHyperthemia
Title: "Regional Deep Hyperthemia"
Description: """Regional Deep Hyperthemia
Maturity Level: 0 Draft"""
* diagnosisReference 1..* Diagnosis "Diagnosis reference (M)" """Diagnosis reference in case the treatment was done for baseline 
"""
* diagnosisReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* episodeEventReference 1..* EpisodeEvent "Episode Event reference (M)" """EpisodeEvent element containing the data regarding the patient's cancer 
"""
* episodeEventReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* regionaldeephyperthemiaDoneAthospital 1..* string "RegionalDeepHyperthemia done atHospital (M)" """In which hospital was the Other Local Treatment performed 
"""
* regionaldeephyperthemiaDoneAthospital insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* startDate 1..* date "Start date (M)" """Date when local treatment started 
"""
* startDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* endDate 1..* date "End  date (M)" """Date when local treatment ended 
"""
* endDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* treatmentResponse 0..* CodeableConcept "Treatment response (R)" """Measures how well a cancer patient responds to treatment. RECIST criteria should not be applied. The definition of Complete response; Partial response; Stable disease; Progression, should be based on the clinical judgement based on imaging.  Only when setting=neoadiuvant or  palliative 
OLD

Complete response - 4163135
Partial response -  4161302
Stable disease - 32948
Progression - 4168352

"A treatment response is a record of the EPISODE table;
episode_start_date is end date of regimen;
episode_object_concept_id is the overarching sarcoma"




"""
* treatmentResponse insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* treatmentResponse ^comment = """Complete Remission - 32946
Partial Remission - 32947
Stable Disease - 32948
Progression - 32949
Not applicable - 4294169 (Not usable in OMOP)"""
