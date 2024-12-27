Logical: EpisodeEventI4RC
Id: EpisodeEvent
Title: "Episode Event"
Description: """Episode Event
Maturity Level: 0 Draft"""
* cancerEpisode 1..* CancerEpisode "Cancer Episode Reference (M)" """CancerEpisode element containing the data regarding the patient's cancer 
"""
* cancerEpisode insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* cancerEpisode insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* diseaseStatus 1..* CodeableConcept "Disease status (M)" """Update to the disease status 
"""
* diseaseStatus insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* diseaseStatus insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* diseaseStatus ^comment = """Complete Remission - 32946
Partial Remission - 32947
Progression - 32949
Stable Disease - 32948
Recurrence - CUSTOM CODE"""
* definedAt 0..* string "Defined At (O)" """Whether or not the progression/recurrence or persistent disease  was performed at the registering hospital or another hospital. 
"""
* definedAt insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* definedAt insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* dateOfEpisode 1..* date "Date of episode (M)" """Start date of progression/recurrence or persistent disease 
"""
* dateOfEpisode insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* dateOfEpisode insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
