// -------------------------------------------------------------------------------					
//  Concept Model. File: 					stage-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: stage2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Stage2FHIR"					
* title = "Stage Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Stage Model to this guide Map"					
* purpose = "It shows how the Stage Model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/StageI4rc"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-cancer-stage-group"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/StageI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-cancer-stage-group"					
					
* group[=].element[+].code = #Stage.episodeEvent					
* group[=].element[=].display = "Episode Event Reference"					
* group[=].element[=].target.code = #Observation.focus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Stage.type					
* group[=].element[=].display = "Type of stage"					
* group[=].element[=].target.code = #Observation.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.t					
* group[=].element[=].display = "T"					
* group[=].element[=].target.code = #Observation.hasMember:tnmPrimaryTumorCategory.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.n					
* group[=].element[=].display = "N"					
* group[=].element[=].target.code = #Observation.hasMember:tnmRegionalNodesCategory.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.m					
* group[=].element[=].display = "M"					
* group[=].element[=].target.code = #Observation.hasMember:tnmDistantMetastasesCategory.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.rENE					
* group[=].element[=].display = "Radiological Extra-nodal extension (rENE)"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "check if this should be a new has member observation with obs.code = 2960001000004100  Status of extranodal extension of nodal tumour"					
* group[=].element[+].code = #Stage.localised					
* group[=].element[=].display = "Localised"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Stage.locoRegional					
* group[=].element[=].display = "Loco-regional"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Stage.isMetastatic					
* group[=].element[=].display = "Is metastatic"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "check is the existance of metastatic conditions is enough"					
* group[=].element[+].code = #Stage.ajccEdition					
* group[=].element[=].display = "Ajcc edition"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept.coding.system					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if the ajcc system is used for the classification (to be checked)"					
* group[=].element[+].code = #Stage.regionalNodalMetastases					
* group[=].element[=].display = "Regional nodal metastases"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "check if it could be documented in the metastatic condition"					
* group[=].element[+].code = #Stage.sites					
* group[=].element[=].display = "sites"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "documented in the metastatic condiiton"					
* group[=].element[+].code = #Stage.stagingClassification					
* group[=].element[=].display = "Staging classification"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/StageI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-primary-tumor-category"					
					
* group[=].element[+].code = #Stage.type					
* group[=].element[=].display = "Type of stage"					
* group[=].element[=].target.code = #Observation.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.t					
* group[=].element[=].display = "T"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.n					
* group[=].element[=].display = "N"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Stage.m					
* group[=].element[=].display = "M"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/StageI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-regional-nodes-category"					
					
* group[=].element[+].code = #Stage.type					
* group[=].element[=].display = "Type of stage"					
* group[=].element[=].target.code = #Observation.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.t					
* group[=].element[=].display = "T"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Stage.n					
* group[=].element[=].display = "N"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.m					
* group[=].element[=].display = "M"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/StageI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-distant-metastases-category"					
					
* group[=].element[+].code = #Stage.type					
* group[=].element[=].display = "Type of stage"					
* group[=].element[=].target.code = #Observation.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.t					
* group[=].element[=].display = "T"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Stage.n					
* group[=].element[=].display = "N"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Stage.m					
* group[=].element[=].display = "M"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/StageI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-extraNodalExtension-eu-i4rc"					
					
* group[=].element[+].code = #Stage.rENE					
* group[=].element[=].display = "Radiological Extra-nodal extension (rENE)"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "check if this should be a new has member observation with obs.code = 2960001000004100  Status of extranodal extension of nodal tumour"					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/StageI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-secondaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #Stage.episodeEvent					
* group[=].element[=].display = "Episode Event Reference"					
* group[=].element[=].target.code = #Observation.extension:relatedPrimaryCancerCondition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.localised					
* group[=].element[=].display = "Localised"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Stage.locoRegional					
* group[=].element[=].display = "Loco-regional"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Stage.isMetastatic					
* group[=].element[=].display = "Is metastatic"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Stage.regionalNodalMetastases					
* group[=].element[=].display = "Regional nodal metastases"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Stage.sites					
* group[=].element[=].display = "sites"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Stage.sites.softTissue					
* group[=].element[=].display = "Soft tissue"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.distantLymphNode					
* group[=].element[=].display = "distant lymph node"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.lung					
* group[=].element[=].display = "lung"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.bone					
* group[=].element[=].display = "bone"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.liver					
* group[=].element[=].display = "liver"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.pleura					
* group[=].element[=].display = "pleura"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.peritoneum					
* group[=].element[=].display = "peritoneum"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.brain					
* group[=].element[=].display = "brain"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.otherViscera					
* group[=].element[=].display = "other viscera"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
* group[=].element[+].code = #Stage.sites.unknown					
* group[=].element[=].display = "unknown"					
* group[=].element[=].target.code = #Observation.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded concept for this site to be determined"					
//---END					
//---END					
//---END					
