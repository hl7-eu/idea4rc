
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PatientI4rc
Parent:   Patient
Id:       patient-eu-i4rc
Title:    "Patient: IDEA4RC"
Description: "This profile defines how to represent Patient in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Information about an individual receiving health care services"

* extension contains RaceExtension named race 0..1
* extension[race].value[x] from VsRaceI4rc 

/* THE SEX ELEMENT IS INTENDED TO BE ADMINISTRATIVE GENDER */
/*
   SexForClinicalUse named sexForClinicalUse 0..1
   and RecordedSexOrGender named recordedSexOrGender 0..1
 */
/* * extension contains 
   $patient-sexForClinicalUse named sexForClinicalUse 0..1
   and $individual-recordedSexOrGender named recordedSexOrGender 0..1 */

/* * extension[sexForClinicalUse]
* extension[RecordedSexOrGender] */

/* * identifier 1.. MS
* name.family 1.. MS
* name.given 1.. MS */
* gender ^short = "Administrative gender"
* gender 1..   
* birthDate 0..

/* * birthDate.extension contains $data-absent-reason named data-absent-reason 0..1 */
/* * maritalStatus ^short = "Marital status" */
* address.country ^short = "Country of Residence"
  * extension contains $iso21090-SC-coding named countryCode 0..1
  * extension[countryCode].valueCoding from VsCountryI4rc

/* to enforce the fact tha is the residence we should use a specific extension to be discussed */

/* * contact.telecom 1.. MS
* generalPractitioner
* generalPractitioner ^slicing.discriminator.type = #type
* generalPractitioner ^slicing.discriminator.path = "resolve()"
* generalPractitioner ^slicing.rules = #open
* generalPractitioner ^slicing.description = "Slice based on the reference type"
* generalPractitioner contains 
	primaryTreatmentCenter	0..1 MS
* generalPractitioner[primaryTreatmentCenter] only Reference (OrganizationCenterPcsp or Organization)
  * ^short = "Primary treatment center"
  * ^definition = "Report here the institution in which most of the treatment was given"
  * identifier ^short = "Business identifier of the Primary treatment center"
  * display ^short = "Short textual description of the Primary treatment center" */

