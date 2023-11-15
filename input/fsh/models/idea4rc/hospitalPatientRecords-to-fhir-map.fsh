// -------------------------------------------------------------------------------		
//  Concept Model. File: 		hospitalPatientRecords-to-fhir-map.fsh
// -------------------------------------------------------------------------------		
Instance: hospitalPatientRecords2FHIR		
InstanceOf: ConceptMap		
Usage: #definition		
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"		
* name = "hospitalPatientRecords2FHIR"		
* title = "Hospital Patient Records Model to this guide Map"		
* status = #draft		
* experimental = true		
* description = "Hospital Patient Records Model to this guide Map"		
* purpose = "It shows how the Hospital Patient Records model is mapped into this guide"		
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HospitalPatientRecords"		
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/episodeOfCare-eu-i4rc"		
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HospitalPatientRecords"		
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/episodeOfCare-eu-i4rc"	
	
* group[=].element[+].code = #HospitalPatientRecords.patient		
* group[=].element[=].display = "Patient"		
* group[=].element[=].target.code = #EpisodeOfCare.patient		
* group[=].element[=].target.display = ""		
* group[=].element[=].target.equivalence = #equal	
	
* group[=].element[+].code = #HospitalPatientRecords.hospital		
* group[=].element[=].display = "Hospital"		
* group[=].element[=].target.code = #EpisodeOfCare.managingOrganization		
* group[=].element[=].target.display = ""		
* group[=].element[=].target.equivalence = #equivalent	
	
* group[=].element[+].code = #HospitalPatientRecords.hospital.name		
* group[=].element[=].display = "Hospital Name"		
* group[=].element[=].target.code = #EpisodeOfCare.managingOrganization.display		
* group[=].element[=].target.display = ""		
* group[=].element[=].target.equivalence = #equivalent	
	
* group[=].element[+].code = #HospitalPatientRecords.firstContactDate		
* group[=].element[=].display = "Date of first contact with the hospital"		
* group[=].element[=].target.code = #EpisodeOfCare.period.start		
* group[=].element[=].target.display = ""		
* group[=].element[=].target.equivalence = #equal	
	
//---END		
//---END		
//---END	


	
