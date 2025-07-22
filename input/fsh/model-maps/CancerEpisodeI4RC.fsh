Logical: CancerEpisodeI4RC
Id: CancerEpisode
Title: "Cancer Episode"
Description: """Cancer Episode
Maturity Level: 0 Draft"""
* patient 1..* Subject "Patient (M)" """Patient element containing the data regarding the patient followed by the hospital"""
* patient insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* patient insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* cancerStartDate 1..* date "Cancer start date (M)" """Date when the cancer was detected. Must match the date of the first diagnosis. It works as the "overarching" episode"""
* cancerStartDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* cancerStartDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
