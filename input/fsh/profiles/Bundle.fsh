//==========================
// PROFILE
//==========================

Profile: BundleI4rc
Parent: Bundle
Id: Bundle-eu-i4rc
Title: "Bundle: IDEA4RC"
Description: "This profile defines how to represent a Bundle in FHIR for the purpose of the IDEA4RC project."

* type = #collection
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0

* entry ^slicing.discriminator[0].type = #pattern
* entry ^slicing.discriminator[0].path = "resource"
// * entry ^slicing.ordered = true => changed on 2023-07-19  to be checked
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains patient 1..1
* entry[patient].resource only PatientI4rc

* entry contains condition 1..*
* entry[condition].resource only ConditionPrimaryCancerI4rc or ConditionSecondaryCancerI4rc

* entry contains observation 0..*
* entry[observation].resource only Observation

* entry contains encounter 0..*
* entry[encounter].resource only EncounterI4rc

* entry contains episodeOfCare 0..*
* entry[episodeOfCare].resource only EpisodeOfCareI4rc

* entry contains procedure-radio 0..*
* entry[procedure-radio].resource only ProcedureRadiotherapyI4rc

* entry contains procedure-surgery 0..*
* entry[procedure-surgery].resource only ProcedureSurgeryI4rc

* entry contains medicationAdministration 0..*
* entry[medicationAdministration].resource only MedicationAdministrationI4rc