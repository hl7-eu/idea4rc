// -------------------------------------------------------------------------------					
//  Concept Model. File: 					otherTreatment-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: otherTreatment2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "otherTreatment2FHIR"					
* title = "Other Treatment to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Other Treatment to this guide Map"					
* purpose = "It shows how the Other Treatment model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/OtherTreatment"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-otherTreatment-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/OtherTreatment"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-otherTreatment-eu-i4rc"					
					
* group[=].element[+].code = #OtherTreatment.episodeEvent					
* group[=].element[=].display = "Episode Event reference"					
* group[=].element[=].target.code = #Procedure.reasonReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #OtherTreatment.type					
* group[=].element[=].display = "Type of local treatment"					
* group[=].element[=].target.code = #Procedure.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Check if it should be a category or a code"					
* group[=].element[+].code = #OtherTreatment.startDate					
* group[=].element[=].display = "Start date"					
* group[=].element[=].target.code = #Procedure.performedPeriod.start					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #OtherTreatment.endDate					
* group[=].element[=].display = "End  date"					
* group[=].element[=].target.code = #Procedure.performedPeriod.end					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #OtherTreatment.treatmentResponse					
* group[=].element[=].display = "Treatment response"					
* group[=].element[=].target.code = #Procedure.outcome					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
//---END					
//---END					
//---END					
//---END					
