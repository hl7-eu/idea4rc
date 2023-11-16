
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  EncounterI4rc
Parent:   Encounter
Id:       Encounter-eu-i4rc
Title:    "Encounter: IDEA4RC"
Description: "This profile defines how to represent the Patient follow-up model and when needed the treatmement center in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------

// * ^contained[+] = DischargeDiagnosisVs
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
* diagnosis ^short = "Typycally used for the discharge diagnosis"
  * condition only Reference(ConditionPrimaryCancerI4rc)
  // * use from DischargeDiagnosisVs (extensible)
* hospitalization 0..
* location 0..
* serviceProvider only Reference (Organization)
  * ^short = "Treatment center"
  * ^definition = "Report here the institution in which most of the treatment was given for this Encounter."


/* Instance: DischargeDiagnosisVs
InstanceOf: ValueSet
Usage: #inline 
* status = #active
// * url =  http://hl7.eu/fhir/ig/idea4rc/ValueSet/dd-i4rc
* name = "DischargeDiagnosisVs" 
* id = "dd-i4rc"
* title = "Discharge Diagnosis"
* description = "Discharge Diagnosis"
* experimental = false
* compose
  * include[+]
    * system = $diagnosis-role
    * concept[+]
      * code = #DD
      * display = "Discharge diagnosis"
  * include[+]
    * system = $cs-generic-eu-i4rc
    * concept[+]
      * code = #last-followup-dx "Diagnosis at the last follow-up"
      * display = "Diagnosis at the last follow-up"       */