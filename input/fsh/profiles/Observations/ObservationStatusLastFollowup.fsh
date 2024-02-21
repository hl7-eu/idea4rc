Profile: ObservationStatusLastFollowup
Parent: Observation
Id: observation-lastFollowupStatus-eu-i4rc
Title: "Observation: Status at the Last Follow Up"
Description: "This profile constrains the Observation resource to represent the status at the Last Follow Up."
* code 1..1
* code = CsGenericI4rc#last-followup-status // "Status at last follow-up"
* subject 1..
* subject only Reference(PatientI4rc)
* encounter 1..1
* encounter only Reference(EncounterI4rc)
* valueCodeableConcept 1..
* valueCodeableConcept from VsStatusLastFollowupI4rc
* component ..0
* hasMember ..0