
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  EncounterI4rc
Parent:   Encounter
Id:       Encounter-eu-i4rc
Title:    "Encounter: IDEA4RC"
Description: "This profile defines how to represent the Patient follow-up model and when needed the treatmement center in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------

// * ^contained[+] = Inline-VsTypeofDiagnosisI4rc // VsTypeofDiagnosisI4rc
* status ^short = "Status of the Encounter"
* class ^short = "Classification of patient encounter." // Add binding
* type = $sct#390906007 "Follow-up encounter" // TO BE CHANGED / CHECKED
* period ^short = "Start and end time of the encounter."
* period.start 1..
  * ^short = "First Contact Date"
* insert SubjectRules
* episodeOfCare only Reference(EpisodeOfCareI4rc)
* reasonReference only Reference(ConditionPrimaryCancerI4rc)
* reasonReference 1..
  * ^short = "Reference to the first Primary Cancer"
* diagnosis ^short = "Typically used for the discharge diagnosis"
  * condition only Reference(ConditionPrimaryCancerI4rc)
  * use from VsTypeofDiagnosisI4rc (extensible)
/*   * use ^binding.valueSet = Canonical(Inline-VsTypeofDiagnosisI4rc)
  * use ^binding.strength = #extensible */
* hospitalization 0..
* location 0..
* serviceProvider only Reference (Organization)
  * ^short = "Treatment center"
  * ^definition = "Report here the institution in which most of the treatment was given for this Encounter."


