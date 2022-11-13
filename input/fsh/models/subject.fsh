// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: SubjectI4rc
Id: Subject
Title: "Subject of care"
Description:  """Subject of care 
Maturity Level: 0 Draft"""
* dateOfBirth 1..1 BackboneElement "Date of birth" """Date of birth as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"""
* dateOfBirth.date 0..1 date "Date of birth" """Date of birth as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"""
* dateOfBirth.unknown 0..1 boolean "Date of birth day unknown" """Describes if day of date of birthday is unknown"""
* maritalStatus 0..1 CodeableConcept "Marital status" """Describes the marital status declared by the patient, at the time of diagnosis (section 4, Primary Cancer)"""
* sexOrGender 1..1 CodeableConcept "Gender/Sex" """Describes biological sex as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"""
* race 0..* CodeableConcept "Race" """Describes race as recorded in  the hospital record, the one declared by the patient,, otherwise, the onerecognized by the observer"""
* countryOfResidence 0..* CodeableConcept "Country of Residence " """Country of residence at the time of diagnosis"""















// -------------------------------------------------------------------------------
//  Map to FHIR R4
// -------------------------------------------------------------------------------
Mapping: fhir
Id: fhir
Title: "Idea4RC Subject model to FHIR R4 Map"
Source: Subject
Target: "hl7.org/fhir/r4"

* -> "Patient"
* dateOfBirth -> ".birthDate"
* dateOfBirth.date -> ".birthDate"
* dateOfBirth.unknown -> ".birthDate.extension('data-absent-reason').where(valueCode = 'unknown')"
* maritalStatus -> ".maritalStatus"
* sexOrGender -> ".gender"
* sexOrGender -> ".extension('individual-recordedSexOrGender').value"
* sexOrGender -> ".extension('patient-sexForClinicalUse').value"
* race -> ".extension('patient-sexForClinicalUse').value"
* countryOfResidence -> ".address.country"






























































































































































