// -------------------------------------------------------------------------------					
//  Concept Model. File: 					sarcoma-stage-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: sarcomaStage2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "SarcomaStage2FHIR"					
* title = "Stage Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Stage Model to this guide Map"					
* purpose = "It shows how the Stage Model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/SarcomaStage"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Bundle-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/SarcomaStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/sarcoma-cancer-stage-group"					
					
* group[=].element[+].code = #SarcomaStage.episodeEvent					
* group[=].element[=].display = "Episode Event Reference"					
* group[=].element[=].target.code = #Observation.focus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #SarcomaStage.localised					
* group[=].element[=].display = "Localised"					
* group[=].element[=].target.code = #Observation.hasMember:localized					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SarcomaStage.locoRegional					
* group[=].element[=].display = "Loco-regional"					
* group[=].element[=].target.code = #Observation.hasMember:locoRegional					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/SarcomaStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/sarcoma-extent-category"					
					
* group[=].element[+].code = #SarcomaStage.localised					
* group[=].element[=].display = "Localised"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Localized if = $athena#32942 Confined Disease if not  #32944 Metastatic Disease"					
* group[=].element[+].code = #SarcomaStage.localised					
* group[=].element[=].display = "Localised"					
* group[=].element[=].target.code = #Observation.component.value[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "number of lesions if localized"					
//---END					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/SarcomaStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/locoRegional-category"					
					
* group[=].element[+].code = #SarcomaStage.locoRegional					
* group[=].element[=].display = "Loco-regional"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/SarcomaStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-secondaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #SarcomaStage.episodeEvent					
* group[=].element[=].display = "Episode Event Reference"					
* group[=].element[=].target.code = #Condition.extension:relatedPrimaryCancerCondition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SarcomaStage.regionalNodalMetastases					
* group[=].element[=].display = "Regional nodal metastases"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If this exists with  code = $athena#36769269  'Regional spread to lymph node'"					
* group[=].element[+].code = #SarcomaStage.sites.softTissue					
* group[=].element[=].display = "Soft tissue"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code = $athena#35225724 Metastasis to soft tissues"					
* group[=].element[+].code = #SarcomaStage.sites.distantLymphNode					
* group[=].element[=].display = "distant lymph node"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#36769243 Distant spread to lymph node"					
* group[=].element[+].code = #SarcomaStage.sites.lung					
* group[=].element[=].display = "lung"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#36770283  Metastasis to lung"					
* group[=].element[+].code = #SarcomaStage.sites.bone					
* group[=].element[=].display = "bone"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#36769301 Metastasis to bone"					
* group[=].element[+].code = #SarcomaStage.sites.liver					
* group[=].element[=].display = "liver"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#36770544 Metastasis to liver"					
* group[=].element[+].code = #SarcomaStage.sites.pleura					
* group[=].element[=].display = "pleura"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#35226258 Metastasis to pleura"					
* group[=].element[+].code = #SarcomaStage.sites.peritoneum					
* group[=].element[=].display = "peritoneum"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#35226253 Metastasis to peritoneum"					
* group[=].element[+].code = #SarcomaStage.sites.brain					
* group[=].element[=].display = "brain"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#36768862 Metastasis to brain"					
* group[=].element[+].code = #SarcomaStage.sites.otherViscera					
* group[=].element[=].display = "other viscera"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#36769180 Metastasis"					
* group[=].element[+].code = #SarcomaStage.sites.unknown					
* group[=].element[=].display = "unknown"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4129922 'unknown'"					
* group[=].element[+].code = #SarcomaStage.regionalNodalMetastases					
* group[=].element[=].display = "Regional nodal metastases"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4241958 'Lymph node' and bodysite.extension:qualifier = $sct#410674003'Regional'"					
* group[=].element[+].code = #SarcomaStage.sites					
* group[=].element[=].display = "sites"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SarcomaStage.sites.softTissue					
* group[=].element[=].display = "Soft tissue"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4338971 'soft tissue'"					
* group[=].element[+].code = #SarcomaStage.sites.distantLymphNode					
* group[=].element[=].display = "distant lymph node"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4241958 'Lymph node' and bodysite.extension:qualifier = $sct#5686001 'Remote'"					
* group[=].element[+].code = #SarcomaStage.sites.lung					
* group[=].element[=].display = "lung"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4213162 'lung'"					
* group[=].element[+].code = #SarcomaStage.sites.bone					
* group[=].element[=].display = "bone"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4000496 'bone'"					
* group[=].element[+].code = #SarcomaStage.sites.liver					
* group[=].element[=].display = "liver"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4009105 'liver'"					
* group[=].element[+].code = #SarcomaStage.sites.pleura					
* group[=].element[=].display = "pleura"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4150673 'pleura'"					
* group[=].element[+].code = #SarcomaStage.sites.peritoneum					
* group[=].element[=].display = "peritoneum"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4035784 'peritoneum'"					
* group[=].element[+].code = #SarcomaStage.sites.brain					
* group[=].element[=].display = "brain"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4133034 'brain'"					
* group[=].element[+].code = #SarcomaStage.sites.otherViscera					
* group[=].element[=].display = "other viscera"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ALTERNATIVE : If this exists with  code =$athena#36769180 Metastasis and bodySite =$athena#4159589 'Abdominal viscera'  

TO BE checked the original concept was OTHER VISCERA"					
//---END					
//---END					
//---END					
//---END					
//---END					
