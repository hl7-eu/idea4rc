// -------------------------------------------------------------------------------			
//  Concept Model. File: 			clinicalStage-to-fhir-map.fsh
// -------------------------------------------------------------------------------			
Instance: clinicalStage2FHIR			
InstanceOf: ConceptMap			
Usage: #definition			
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"			
* name = "ClinicalStage2FHIR"			
* title = "Clinical Stage Model to this guide Map"			
* status = #draft			
* experimental = true			
* description = "Clinical Stage Model to this guide Map"			
* purpose = "It shows how the Clinical Stage model is mapped into this guide"			
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"			
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-cancer-stage-group"			
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"			
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-cancer-stage-group"		
		
* group[=].element[+].code = #ClinicalStage.episodeEvent			
* group[=].element[=].display = "Episode Event"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "Condition.stage.assessment"			
* group[=].element[+].code = #ClinicalStage.cT			
* group[=].element[=].display = "cT"			
* group[=].element[=].target.code = #Observation.hasMember:tnmPrimaryTumorCategory			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "where code = 21908-9 'Stage group.clinical'"			
* group[=].element[+].code = #ClinicalStage.cN			
* group[=].element[=].display = "cN"			
* group[=].element[=].target.code = #Observation.hasMember:tnmRegionalNodesCategory			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "where code = 21908-9 'Stage group.clinical'"			
* group[=].element[+].code = #ClinicalStage.radiologicalExtraNodalExtension			
* group[=].element[=].display = "Radiological Extra-nodal extension (rENE)"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "TO BE DEFINED"			
* group[=].element[+].code = #ClinicalStage.cM			
* group[=].element[=].display = "cM"			
* group[=].element[=].target.code = #Observation.hasMember:tnmDistantMetastasesCategory			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equal			
* group[=].element[=].target.comment = "where code = 21908-9 'Stage group.clinical'"			
* group[=].element[+].code = #ClinicalStage.clinicalStaging			
* group[=].element[=].display = "Clinical staging"			
* group[=].element[=].target.code = #Observation.valueCodeableConcept			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent			
* group[=].element[=].target.comment = "where code = 21908-9 'Stage group.clinical'"			
* group[=].element[+].code = #ClinicalStage.ajccEdition			
* group[=].element[=].display = "Ajcc edition"			
* group[=].element[=].target.code = #Observation.valueCodeableConcept.coding.system			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "where code = 21908-9 'Stage group.clinical'
a code system version can be specifed as part of the system"			
* group[=].element[+].code = #ClinicalStage.softTissue			
* group[=].element[=].display = "Soft tissue"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.distantLymphNode			
* group[=].element[=].display = "distant lymph node"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.lung			
* group[=].element[=].display = "lung"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.bone			
* group[=].element[=].display = "bone"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.liver			
* group[=].element[=].display = "liver"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.pleura			
* group[=].element[=].display = "pleura"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.peritoneum			
* group[=].element[=].display = "peritoneum"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.brain			
* group[=].element[=].display = "brain"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.otherViscera			
* group[=].element[=].display = "other viscera"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
* group[=].element[+].code = #ClinicalStage.unknown			
* group[=].element[=].display = "unknown"			
* group[=].element[=].target.code = #Observation.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "CLARIFY HOW THIS DIFFERS FROM THE EQUIVALENT DATA IN EPISODE EVENT"			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END			
//---END		
	
	
	
		
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"			
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-primary-tumor-category"		
		
* group[=].element[+].code = #ClinicalStage.cT			
* group[=].element[=].display = "cT"			
* group[=].element[=].target.code = #Observation.valueCodeableConcept			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto		
		
* group[=].element[+].code = #ClinicalStage.cN			
* group[=].element[=].display = "cN"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched		
		
* group[=].element[+].code = #ClinicalStage.radiologicalExtraNodalExtension			
* group[=].element[=].display = "Radiological Extra-nodal extension (rENE)"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched		
		
//---END			
//---END			
//---END			
//---END		
	
		
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"			
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-regional-nodes-category"		
		
* group[=].element[+].code = #ClinicalStage.cT			
* group[=].element[=].display = "cT"			
* group[=].element[=].target.code = #Observation.valueCodeableConcept			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto		
		
* group[=].element[+].code = #ClinicalStage.cN			
* group[=].element[=].display = "cN"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched		
		
* group[=].element[+].code = #ClinicalStage.radiologicalExtraNodalExtension			
* group[=].element[=].display = "Radiological Extra-nodal extension (rENE)"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched		
		
* group[=].element[+].code = #ClinicalStage.cM			
* group[=].element[=].display = "cM"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched		
		
//---END			
//---END			
//---END			
//---END		
	
		
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"			
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-distant-metastases-category"		
		
* group[=].element[+].code = #ClinicalStage.cT			
* group[=].element[=].display = "cT"			
* group[=].element[=].target.code = #Observation.valueCodeableConcept			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto		
		
* group[=].element[+].code = #ClinicalStage.cN			
* group[=].element[=].display = "cN"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched		
		
* group[=].element[+].code = #ClinicalStage.radiologicalExtraNodalExtension			
* group[=].element[=].display = "Radiological Extra-nodal extension (rENE)"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched		
		
* group[=].element[+].code = #ClinicalStage.cM			
* group[=].element[=].display = "cM"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched		
		
//---END			
//---END			
//---END			
//---END			
//---END			
