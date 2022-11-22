// -------------------------------------------------------------------------------					
//  Concept Model. File: 					subject-to-osiris-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMapSubject2Osiris					
InstanceOf: ConceptMap					
Usage: #definition					
* url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Subject2Osiris"					
* title = "IDEA4RC Subject model to Osiris mapping"					
* status = #draft					
* experimental = true					
* description = """IDEA4RC Subject model to Osiris mapping"""					
* purpose = "It shows how the IDEA4RC subject model is mapped into Osiris"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Osiris"					
					
* group[0].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Osiris"					
					
* group[=].element[+].code = #Subject					
* group[=].element[=].display = "Subject of care"					
* group[=].element[=].target.code = #Osiris.Patient					
* group[=].element[=].target.display = "Patient"					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.dateOfBirth					
* group[=].element[=].display = "Date of birth"					
* group[=].element[=].target.code = #Osiris.Patient.BirthDate					
* group[=].element[=].target.display = "Birth Date [C4]"					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Subject.dateOfBirth.date					
* group[=].element[=].display = "Date of birth"					
* group[=].element[=].target.code = #Osiris.Patient.BirthDate					
* group[=].element[=].target.display = "Birth Date [C4]"					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.dateOfBirth.unknown					
* group[=].element[=].display = "Date of birth day unknown"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Subject.maritalStatus					
* group[=].element[=].display = "Marital status"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Subject.sexOrGender					
* group[=].element[=].display = "Gender/Sex"					
* group[=].element[=].target.code = #Osiris.Patient.Gender					
* group[=].element[=].target.display = "Gender [C2]"					
* group[=].element[=].target.equivalence = #narrower					
* group[=].element[+].code = #Subject.race					
* group[=].element[=].display = "Race"					
* group[=].element[=].target.code = #Osiris.Patient.Ethnicity					
* group[=].element[=].target.display = "Ethnicity [C3]"					
* group[=].element[=].target.equivalence = #wider					
* group[=].element[+].code = #Subject.countryOfResidence					
* group[=].element[=].display = "Country of Residence "					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
