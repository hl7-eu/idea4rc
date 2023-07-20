// -------------------------------------------------------------------------------					
//  Concept Model. File: 					pathologicalStage-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: pathologicalStage2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "PathologicalStage2FHIR"					
* title = "Pathological Stage Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Pathological Stage Model to this guide Map"					
* purpose = "It shows how the Pathological Stage model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-cancer-stage-group"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-cancer-stage-group"					
					
* group[=].element[+].code = #PathologicalStage.episodeEventReference					
* group[=].element[=].display = "Episode Event Reference"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Condition.stage.assessment"					
* group[=].element[+].code = #PathologicalStage.pT					
* group[=].element[=].display = "pT"					
* group[=].element[=].target.code = #Observation.hasMember:tnmPrimaryTumorCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where code = 21902-2	 'Stage group.pathology'"					
* group[=].element[+].code = #PathologicalStage.pN					
* group[=].element[=].display = "pN"					
* group[=].element[=].target.code = #Observation.hasMember:tnmRegionalNodesCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where code = 21902-2	 'Stage group.pathology'"					
* group[=].element[+].code = #PathologicalStage.pM					
* group[=].element[=].display = "pM"					
* group[=].element[=].target.code = #Observation.hasMember:tnmDistantMetastasesCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "where code = 21902-2	 'Stage group.pathology'"					
* group[=].element[+].code = #PathologicalStage.extranodalExtension					
* group[=].element[=].display = "Extranodal extension (ENE)"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY MAPPING"					
* group[=].element[+].code = #PathologicalStage.extranodalExtent					
* group[=].element[=].display = "Extranodal Extent"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY MAPPING"					
* group[=].element[+].code = #PathologicalStage.sentinelNode					
* group[=].element[=].display = "Sentinel node"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY MAPPING"					
* group[=].element[+].code = #PathologicalStage.neckDissection					
* group[=].element[=].display = "Neck dissection"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY MAPPING"					
* group[=].element[+].code = #PathologicalStage.pathologicalStaging					
* group[=].element[=].display = "Pathological staging"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where code = 21902-2	 'Stage group.pathology'"					
* group[=].element[+].code = #PathologicalStage.ajccEdition					
* group[=].element[=].display = "Ajcc edition"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept.coding.system					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where code = 21902-2	 'Stage group.pathology'
a code system version can be specifed as part of the system"					
* group[=].element[+].code = #PathologicalStage.softTissue					
* group[=].element[=].display = "Soft Tissue"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.distantLymphNode					
* group[=].element[=].display = "distant lymph node"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.lung					
* group[=].element[=].display = "lung"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.bone					
* group[=].element[=].display = "bone"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.liver					
* group[=].element[=].display = "liver"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.pleura					
* group[=].element[=].display = "pleura"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.peritoneum					
* group[=].element[=].display = "peritoneum"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.brain					
* group[=].element[=].display = "brain"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.otherViscera					
* group[=].element[=].display = "other viscera"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
* group[=].element[+].code = #PathologicalStage.unknown					
* group[=].element[=].display = "unknown"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-primary-tumor-category"					
					
* group[=].element[+].code = #PathologicalStage.cT					
* group[=].element[=].display = "cT"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where code = 21902-2	 'Stage group.pathology'"					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-regional-nodes-category"					
					
* group[=].element[+].code = #PathologicalStage.cN					
* group[=].element[=].display = "cN"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where code = 21902-2	 'Stage group.pathology'"					
//---END					
//---END					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-distant-metastases-category"					
					
* group[=].element[+].code = #PathologicalStage.cM					
* group[=].element[=].display = "cM"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
//---END					
//---END					
//---END					
