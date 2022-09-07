Instance: Subject
InstanceOf: StructureDefinition
Description: "Subject of care 
Maturity Level: 0 Draft"
Title: "Subject of care"
Usage: #definition
* publisher = "IDEA4RC project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* name = "Subject"
* title = "Subject of care"
* status = #draft
* experimental = true
* description = "Subject of care 
Maturity Level: 0 Draft"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* mapping[1].identity = "cda"
* mapping[1].uri = "http://hl7.org/v3/cda"
* mapping[1].name = "CDA (R2)"
* kind = #logical
* abstract = true
* type = "Subject"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "Subject"
* differential.element[0].path = "Subject"
* differential.element[0].short = "Subject of care"
* differential.element[0].definition = "Subject of care"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "Subject.dateOfBirth"
* differential.element[1].path = "Subject.dateOfBirth"
* differential.element[1].short = "Date of birth"
* differential.element[1].definition = "Date of birth as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #BackboneElement
* differential.element[2].id = "Subject.dateOfBirth.date"
* differential.element[2].path = "Subject.dateOfBirth.date"
* differential.element[2].short = "Date of birth"
* differential.element[2].definition = "Date of birth as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #date
* differential.element[3].id = "Subject.dateOfBirth.unknown"
* differential.element[3].path = "Subject.dateOfBirth.unknown"
* differential.element[3].short = "Date of birth day unknown"
* differential.element[3].definition = "Describes if day of date of birthday is unknown"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #boolean
* differential.element[4].id = "Subject.maritalStatus"
* differential.element[4].path = "Subject.maritalStatus"
* differential.element[4].short = "Marital status"
* differential.element[4].definition = "Describes the marital status declared by the patient, at the time of diagnosis (section 4, Primary Cancer)"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #CodeableConcept
* differential.element[5].id = "Subject.sexOrGender"
* differential.element[5].path = "Subject.sexOrGender"
* differential.element[5].short = "Gender/Sex"
* differential.element[5].definition = "Describes biological sex as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"
* differential.element[5].min = 1
* differential.element[5].max = "1"
* differential.element[5].type.code = #CodeableConcept
* differential.element[6].id = "Subject.race"
* differential.element[6].path = "Subject.race"
* differential.element[6].short = "Race"
* differential.element[6].definition = "Describes race as recorded in  the hospital record, the one declared by the patient,, otherwise, the onerecognized by the observer"
* differential.element[6].min = 0
* differential.element[6].max = "*"
* differential.element[6].type.code = #CodeableConcept
* differential.element[7].id = "Subject.countryOfResidence"
* differential.element[7].path = "Subject.countryOfResidence"
* differential.element[7].short = "Country of Residence "
* differential.element[7].definition = "Country of residence at the time of diagnosis"
* differential.element[7].min = 0
* differential.element[7].max = "*"
* differential.element[7].type.code = #CodeableConcept
// 
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Patient"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".birthDate"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".birthDate"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".birthDate.extension('data-absent-reason').where(valueCode = 'unknown')"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".maritalStatus"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = ".gender"

* differential.element[5].mapping[1].identity = "fhir"
* differential.element[5].mapping[1].map = ".extension('individual-recordedSexOrGender').value"

* differential.element[5].mapping[2].identity = "fhir"
* differential.element[5].mapping[2].map = ".extension('patient-sexForClinicalUse').value"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = ".extension('patient-sexForClinicalUse').value"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = ".address.country"













































































































































































// 
