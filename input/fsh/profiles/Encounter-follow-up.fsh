
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  EncounterI4rc
Parent:   Encounter
Id:       Encounter-eu-i4rc
Title:    "Encounter: IDEA4RC"
Description: "This profile defines how to represent the Patient follow-up model and when needed the treatmement center in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------

* status ^short = "Status of the Encounter"
* class ^short = "Classification of patient encounter." // Add binding
* type ^short = "=> Code to be checked"
* type = $sct#390906007 "Follow-up encounter" // TO BE CHANGED / CHECKED
* period ^short = "Start and end time of the encounter."
* period.start 1..
  * ^short = "First Contact Date"
* subject 1..1
* subject only Reference (PatientI4rc)
* episodeOfCare only Reference(EpisodeOfCareI4rc)
* reasonReference only Reference(ConditionPrimaryCancerI4rc)
* reasonReference 1..
  * ^short = "Reference to the first Primary Cancer"
* hospitalization 0..
* location 0..
* serviceProvider only Reference (Organization)
  * ^short = "Treatment center"
  * ^definition = "Report here the institution in which most of the treatment was given for this Encounter."

