Alias: $associatedEncounter = http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter
Alias: $statusAtFollowUp = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/status-Follow-Up

CodeSystem: StatusFollowUpCS
Id: status-follow-up-cs
Title: "Status at FollowUp : CS"
Description:  "Coded concepts specified by this Project."
* #alive "Alive"
* #NED "No Evidence of Disease"
* #DOD "Dead of Disease"
* #DOC "Dead of Other Cause"
* #DUC "Dead of Unknown Cause"
* #AWD "Alive With Disease "

ValueSet: StatusAtFollowUpVS
Id: status-follow-up-vs
Title: "Status at FollowUp : VS"
Description: "Value Set for the Status at FollowUp "
* StatusFollowUpCS#alive "Alive"
* StatusFollowUpCS#NED "No Evidence of Disease"
* StatusFollowUpCS#DOD "Dead of Disease"
* StatusFollowUpCS#DOC "Dead of Other Cause"
* StatusFollowUpCS#DUC "Dead of Unknown Cause"
* StatusFollowUpCS#AWD "Alive With Disease "


Extension: StatusAtFollowUp
Id: status-Follow-Up
Title: "Status at FollowUp"
Description: "Extension for the Status at FollowUp "
* value[x] 1..1 
* value[x] only CodeableConcept 
* value[x] from StatusAtFollowUpVS (required)



//-----------------------------------------------------------------------------------

Profile: PatientFollowUpI4RC
Parent: Encounter
Id: patient-followup-i4rc
Title: "Patient Follow Up : I4RC"
Description: "Patient Follow Up"
* extension contains
    $associatedEncounter named associatedEncounter 0..1 MS and
    $statusAtFollowUp named statusAtFollowUp 1..1 MS // not fan, but what other solution ?
* subject 1..1
* reasonReference 1..1 // new cancer episode => is it the reason of the encounter ? otherwise it should be diagnosis
* reasonReference only Reference(ConditionSecondaryCancerI4rc or ConditionPrimaryCancerI4rc)
* period 1..1 
  * ^short = "Date of the clinical follow-up"
