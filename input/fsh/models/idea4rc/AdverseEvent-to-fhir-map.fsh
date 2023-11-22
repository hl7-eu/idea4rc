// -------------------------------------------------------------------------------					
//  Concept Model. File: 					AdverseEvent-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: treatmentResponse2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "treatmentResponse2FHIR"					
* title = "Radiotherapy Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Radiotherapy Model to this guide Map"					
* purpose = "It shows how the Radiotherapy model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/AdverseEventI4rc"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/AdverseEvent-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/AdverseEventI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/AdverseEvent-eu-i4rc"					
					
* group[=].element[+].code = #AdverseEventI4rc.episodeEvent					
* group[=].element[=].display = "Episode Event reference"					
* group[=].element[=].target.code = #AdverseEvent.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Clariify if this is the right concept.."					
* group[=].element[+].code = #AdverseEventI4rc.type					
* group[=].element[=].display = "Adverse event type (CTCAE Term)"					
* group[=].element[=].target.code = #AdverseEvent.event					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked based on the clarificaiton on the used coded concepts"					
* group[=].element[+].code = #AdverseEventI4rc.eventStartingDate					
* group[=].element[=].display = "Adverse event starting date ÿ"					
* group[=].element[=].target.code = #AdverseEvent.extension:R5occurrencePeriod.start					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #AdverseEventI4rc.eventDuration					
* group[=].element[=].display = "Adverse event duration"					
* group[=].element[=].target.code = #AdverseEvent.extension:R5occurrencePeriod.end					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
