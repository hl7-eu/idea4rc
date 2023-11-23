// -------------------------------------------------------------------------------					
//  Concept Model. File: 					episodeEvent-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: episodeEvent2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "EpisodeEvent2FHIR"					
* title = "Episode Event Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Episode Event Model to this guide Map"					
* purpose = "It shows how the Episode Event model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEventI4rc"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEventI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #EpisodeEvent.cancerEpisode					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.extension:condition-occurredFollowing					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if not 'Baseline'"					
* group[=].element[+].code = #EpisodeEvent.cancerEpisode					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If 'Baseline': new Condition"					
* group[=].element[+].code = #EpisodeEvent.eventType					
* group[=].element[=].display = "Event type"					
* group[=].element[=].target.code = #Condition.clinicalStatus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "It might be a combination of status / previous status and existance of previous Condition resources.

The clincalStatus has a required binding with http://hl7.org/fhir/R4/valueset-condition-clinical.html.
active | recurrence | relapse | inactive | remission | resolved
Map the expected concepts with that value set

First episode => status='active'; extension:condition-occurredFollowing.empty()
Progression - 4168352 => status='active'; extension:condition-occurredFollowing.exists() (To be checked)
Recurrence - 4097297 => status='recurrence'; extension:condition-occurredFollowing.exists()
Stable disease - 32948 => status='remission'; extension:condition-occurredFollowing.exists() (To be checked)"					
* group[=].element[+].code = #EpisodeEvent.definedAt					
* group[=].element[=].display = "Defined At"					
* group[=].element[=].target.code = #Condition.extension:definedAt					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations.
It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."					
* group[=].element[+].code = #EpisodeEvent.dateOfEpisode					
* group[=].element[=].display = "Date of episode"					
* group[=].element[=].target.code = #Condition.recordedDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "If it is when this particular Condition record was created in the system"					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
