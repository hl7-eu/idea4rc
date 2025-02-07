Logical: OverallTreatmentResponseI4RC
Id: OverallTreatmentResponse
Title: "Overall Treatment Response"
Description: """Overall Treatment Response
Maturity Level: 0 Draft"""
* diagnosisReference 1..* Diagnosis "Diagnosis reference (M)" """Diagnosis reference in case the treatment was done for baseline 
"""
* diagnosisReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* diagnosisReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* episodeEvent 1..* EpisodeEvent "Episode Event Reference (M)" """EpisodeEvent element containing the data regarding the patient's cancer 
"""
* episodeEvent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* overallTreatmentResponse 1..* CodeableConcept "Overall Treatment response (based on imaging alone; no recist or other criteria) (M)" """It refers to the response to the entire therapy administered to the patient. It measures how well a cancer patient responds to treatment. RECIST criteria should not be applied. The definition of Complete response; Partial response; Stable disease; Progression, should be based on the clinical judgement based on imaging. 
"""
* overallTreatmentResponse insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* overallTreatmentResponse insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* overallTreatmentResponse ^comment = """Complete Remission - 32946
Partial Remission - 32947
Stable Disease - 32948
Progression - 32949

"""
* overallTreatmentResponseDefined 1..* string "Overall Treatment response defined/done (M)" """refers to whether overall treatment reponse was assessed at the registering hospital or another. 
"""
* overallTreatmentResponseDefined insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* overallTreatmentResponseDefined insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
