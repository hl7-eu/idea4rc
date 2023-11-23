
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: EpisodeOfCareI4rc
Parent:   EpisodeOfCare
Id:       episodeOfCare-eu-i4rc
Title:    "EpisodeOfCare: IDEA4RC"
Description: "This profile defines how to represent the Hospital Patient Records model in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------

* extension contains SameCustodianFlag named definedAt 0..1
* extension[definedAt].valueBoolean
* status ^short = "Status of the EpisodeOfCare"
* patient 1..
* patient only Reference (PatientI4rc)
* diagnosis.condition only Reference (ConditionPrimaryCancerI4rc)
* managingOrganization	1..
* managingOrganization.display 1..
  * ^short = "Hospital Name"
* period.start 1..
  * ^short = "First Contact Date" 

