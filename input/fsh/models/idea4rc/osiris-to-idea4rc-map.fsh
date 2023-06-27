// -------------------------------------------------------------------------------					
//  Concept Model. File: 					osiris-to-idea4rc-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMapOsiris2I4rc					
InstanceOf: ConceptMap					
Usage: #definition					
* url = "http://terminology.hl7.it/ConceptMap/ConceptMap-osiris2idea4rc"					
* name = "Osiris2I4rc"					
* title = "Osiris to IDEA4RC models mapping"					
* status = #draft					
* experimental = true					
* description = """Osiris to IDEA4RC models mapping"""					
* purpose = "Show how the OSIRIS models is covered by the IDEA4RC one"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Osiris"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
					
* group[0].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Osiris"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
					
* group[=].element[+].code = #Osiris.Patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Subject					
* group[=].element[=].target.display = "Subject of care"					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Osiris.Patient.Id					
* group[=].element[=].display = "Patient Id [C1]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Osiris.Patient.Gender					
* group[=].element[=].display = "Gender [C2]"					
* group[=].element[=].target.code = #Subject.sexOrGender					
* group[=].element[=].target.display = "Gender/Sex"					
* group[=].element[=].target.equivalence = #wider					
* group[=].element[+].code = #Osiris.Patient.Race					
* group[=].element[=].display = "Race [C3]"					
* group[=].element[=].target.code = #Subject.race					
* group[=].element[=].target.display = "Race"					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Osiris.Patient.BirthDate					
* group[=].element[=].display = "Birth Date [C4]"					
* group[=].element[=].target.code = #Subject.dateOfBirth.date					
* group[=].element[=].target.display = "Date of birth"					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Osiris.Patient.DeathDate					
* group[=].element[=].display = "Death Date [C5]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Osiris.Patient.ProviderCenterId					
* group[=].element[=].display = "Provider  Center  Id [C6]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Osiris.Patient.OriginCenterId					
* group[=].element[=].display = "Origin  Center  Id [C71]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Osiris.Patient.CauseOfDeath					
* group[=].element[=].display = "Cause of death [C7]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Osiris.Patient.LastNewsDate					
* group[=].element[=].display = "Last News Date [C8]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Osiris.Patient.LastNewsStatus					
* group[=].element[=].display = "Last News Status [C9]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
//---END					
//---END					
//---END					
