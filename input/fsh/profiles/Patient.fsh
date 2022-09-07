
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PatientI4rc
Parent:   Patient
Id:       Patient-eu-i4rc
Title:    "Patient Idea4RC"
Description: "This profile defines how to represent Patient in FHIR for the purpose of the Idea4RC project."
//-------------------------------------------------------------------------------------------
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Information about an individual receiving health care services"

* extension contains 
   SexForClinicalUse named sexForClinicalUse 0..1
   and RecordedSexOrGender named recordedSexOrGender 0..1

// defined in R5 CI build

/* * identifier 1.. MS
* name.family 1.. MS
* name.given 1.. MS */
* gender ^short = "Administrative gender"
* birthDate 1..
* birthDate.extension contains $data-absent-reason named data-absent-reason 0..1
* maritalStatus ^short = "Marital status"
* address.country ^short = "Country of Residence"

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