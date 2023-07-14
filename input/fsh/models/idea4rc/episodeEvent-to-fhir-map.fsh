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
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent"					
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
* group[=].element[=].target.comment = "it might be used in conjuction with the extension:previousStatus to indicate for example that a relapse is now in remission.

The clincalStatus has a required binding with http://hl7.org/fhir/R4/valueset-condition-clinical.html.
Map the expected concepts with that value set"					
* group[=].element[+].code = #EpisodeEvent.definedAt					
* group[=].element[=].display = "Defined At"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CONCEPT TO BE CLARIFIED"					
* group[=].element[+].code = #EpisodeEvent.dateOfEpisode					
* group[=].element[=].display = "Date of episode"					
* group[=].element[=].target.code = #Condition.effectivePeriod.start					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
* group[=].element[+].code = #EpisodeEvent.isLocal					
* group[=].element[=].display = "Is local"					
* group[=].element[=].target.code = #Condition.extension:relapseType					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be further analized"					
* group[=].element[+].code = #EpisodeEvent.isRegional					
* group[=].element[=].display = "Is regional"					
* group[=].element[=].target.code = #Condition.extension:relapseType					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be further analized"					
* group[=].element[+].code = #EpisodeEvent.isMetastatic					
* group[=].element[=].display = "Is metastatic"					
* group[=].element[=].target.code = #Condition.extension:relapseType					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be further analized"					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis					
* group[=].element[=].display = "Site of metastasis"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Condition conforming to http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-secondaryCancer-eu-i4rc"					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.softTissue					
* group[=].element[=].display = "Site of metastasis_soft tissue"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.distantLymphNodes					
* group[=].element[=].display = "Site of metastasis_distant lymph nodes"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.lung					
* group[=].element[=].display = "Site of metastasis_lung"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.bone					
* group[=].element[=].display = "Site of metastasis_bone"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.liver					
* group[=].element[=].display = "Site of metastasis_liver"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.pleura					
* group[=].element[=].display = "Site of metastasis_pleura"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.peritoneum					
* group[=].element[=].display = "Site of metastasis_peritoneum"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.brain					
* group[=].element[=].display = "Site of  metastasis_brain"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.otherViscera					
* group[=].element[=].display = "Site of  metastasis_other viscera"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #EpisodeEvent.siteOfMetastasis.unknown					
* group[=].element[=].display = "Site of  metastasis_unknown"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
