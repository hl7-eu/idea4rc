// -------------------------------------------------------------------------------					
//  Concept Model. File: 					hn-stage-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: hNstage2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "HnStage2FHIR"					
* title = "HN Stage Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Hn Stage Model to this guide Map"					
* purpose = "It shows how the HN Stage Model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HnStage"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Bundle-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HnStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-cancer-stage-group"					
					
* group[=].element[+].code = #HnStage.episodeEvent					
* group[=].element[=].display = "Episode Event Reference"					
* group[=].element[=].target.code = #Observation.focus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HnStage.Ct					
* group[=].element[=].display = "cT"					
* group[=].element[=].target.code = #Observation.hasMember:tnmPrimaryTumorCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see group 2 for details"					
* group[=].element[+].code = #HnStage.Cn					
* group[=].element[=].display = "cN"					
* group[=].element[=].target.code = #Observation.hasMember:tnmRegionalNodesCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see group 3 for details"					
* group[=].element[+].code = #HnStage.Cm					
* group[=].element[=].display = "cM"					
* group[=].element[=].target.code = #Observation.hasMember:tnmDistantMetastasesCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see group 4 for details"					
* group[=].element[+].code = #HnStage.Pt					
* group[=].element[=].display = "pT"					
* group[=].element[=].target.code = #Observation.hasMember:tnmPrimaryTumorCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see group 2 for details"					
* group[=].element[+].code = #HnStage.Pn					
* group[=].element[=].display = "pN"					
* group[=].element[=].target.code = #Observation.hasMember:tnmRegionalNodesCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see group 3 for details"					
* group[=].element[+].code = #HnStage.Pm					
* group[=].element[=].display = "pM"					
* group[=].element[=].target.code = #Observation.hasMember:tnmDistantMetastasesCategory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see group 4 for details"					
* group[=].element[+].code = #HnStage.rEne					
* group[=].element[=].display = "Radiological Extra-nodal extension (rEne)"					
* group[=].element[=].target.code = #Observation.hasMember:extraNodalExtension					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see group 5 for details"					
* group[=].element[+].code = #HnStage.StagingClassification					
* group[=].element[=].display = "Staging classification"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HnStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-primary-tumor-category"					
					
* group[=].element[+].code = #HnStage.Ct					
* group[=].element[=].display = "cT"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where code = $loinc21905-5 Primary tumor.clinical"					
* group[=].element[+].code = #HnStage.Cn					
* group[=].element[=].display = "cN"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Cm					
* group[=].element[=].display = "cM"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Pt					
* group[=].element[=].display = "pT"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where code = $loinc21905-5 Primary tumor.clinical"					
* group[=].element[+].code = #HnStage.Pn					
* group[=].element[=].display = "pN"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Pm					
* group[=].element[=].display = "pM"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HnStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-regional-nodes-category"					
					
* group[=].element[+].code = #HnStage.Ct					
* group[=].element[=].display = "cT"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Cn					
* group[=].element[=].display = "cN"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where code = $loinc21905-5 Primary tumor.clinical"					
* group[=].element[+].code = #HnStage.Cm					
* group[=].element[=].display = "cM"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Pt					
* group[=].element[=].display = "pT"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Pn					
* group[=].element[=].display = "pN"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where code = $loinc21905-5 Primary tumor.clinical"					
* group[=].element[+].code = #HnStage.Pm					
* group[=].element[=].display = "pM"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HnStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-distant-metastases-category"					
					
* group[=].element[+].code = #HnStage.Ct					
* group[=].element[=].display = "cT"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Cn					
* group[=].element[=].display = "cN"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Cm					
* group[=].element[=].display = "cM"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where code = $loinc21905-5 Primary tumor.clinical"					
* group[=].element[+].code = #HnStage.Pt					
* group[=].element[=].display = "pT"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Pn					
* group[=].element[=].display = "pN"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HnStage.Pm					
* group[=].element[=].display = "pM"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where code = $loinc21905-5 Primary tumor.clinical"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HnStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-extraNodalExtension-eu-i4rc"					
					
* group[=].element[+].code = #HnStage.rEne					
* group[=].element[=].display = "Radiological Extra-nodal extension (rEne)"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "check if this should be a new has member observation with obs.code = 2960001000004100  Status of extranodal extension of nodal tumour"					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HnStage"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-secondaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #HnStage.episodeEvent					
* group[=].element[=].display = "Episode Event Reference"					
* group[=].element[=].target.code = #Condition.extension:relatedPrimaryCancerCondition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HnStage.sites.softTissue					
* group[=].element[=].display = "Soft tissue"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code = $athena#35225724 Metastasis to soft tissues "					
* group[=].element[+].code = #HnStage.sites.distantLymphNode					
* group[=].element[=].display = "distant lymph node"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#36769243 Distant spread to lymph node "					
* group[=].element[+].code = #HnStage.sites.lung					
* group[=].element[=].display = "lung"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#36770283         Metastasis to lung "					
* group[=].element[+].code = #HnStage.sites.bone					
* group[=].element[=].display = "bone"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#36769301 Metastasis to bone"					
* group[=].element[+].code = #HnStage.sites.liver					
* group[=].element[=].display = "liver"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#36770544 Metastasis to liver"					
* group[=].element[+].code = #HnStage.sites.pleura					
* group[=].element[=].display = "pleura"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#35226258 Metastasis to pleura"					
* group[=].element[+].code = #HnStage.sites.peritoneum					
* group[=].element[=].display = "peritoneum"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#35226253 Metastasis to peritoneum"					
* group[=].element[+].code = #HnStage.sites.brain					
* group[=].element[=].display = "brain"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#36768862 Metastasis to brain"					
* group[=].element[+].code = #HnStage.sites.otherViscera					
* group[=].element[=].display = "other viscera"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#36769180 Metastasis"					
* group[=].element[+].code = #HnStage.sites.unknown					
* group[=].element[=].display = "unknown"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If exists where  code =$athena#36769180 Metastasis and bodySite =$athena#261665006 'unknown'"					
* group[=].element[+].code = #HnStage.sites					
* group[=].element[=].display = "sites"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HnStage.sites.softTissue					
* group[=].element[=].display = "Soft tissue"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "optional. where bodySite is the Athena concept 87784001 'soft tissue'"					
* group[=].element[+].code = #HnStage.sites.distantLymphNode					
* group[=].element[=].display = "distant lymph node"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Optional the site is provded by the code. Where bodySite is the Athena concept 59441001 'distant lymph node'"					
* group[=].element[+].code = #HnStage.sites.lung					
* group[=].element[=].display = "lung"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Optional the site is provded by the code. Where bodySite is the Athena concept 39607008 'lung'"					
* group[=].element[+].code = #HnStage.sites.bone					
* group[=].element[=].display = "bone"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Optional the site is provded by the code. Where bodySite is the Athena concept 119186007 'bone'"					
* group[=].element[+].code = #HnStage.sites.liver					
* group[=].element[=].display = "liver"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Optional the site is provded by the code. Where bodySite is the Athena concept 10200004 'liver'"					
* group[=].element[+].code = #HnStage.sites.pleura					
* group[=].element[=].display = "pleura"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Optional the site is provded by the code. Where bodySite is the Athena concept 3120008 'pleura'"					
* group[=].element[+].code = #HnStage.sites.peritoneum					
* group[=].element[=].display = "peritoneum"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Optional the site is provded by the code. Where bodySite is the Athena concept 15425007 'peritoneum'"					
* group[=].element[+].code = #HnStage.sites.brain					
* group[=].element[=].display = "brain"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Optional the site is provded by the code. Where bodySite is the Athena concept 12738006 'brain'"					
* group[=].element[+].code = #HnStage.sites.otherViscera					
* group[=].element[=].display = "other viscera"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Optional the site is provded by the code. Where bodySite is the Athena concept 4159589 'Abdominal viscera'  // TO BE checked the original concept was OTHER VISCERA"					
* group[=].element[+].code = #HnStage.sites.unknown					
* group[=].element[=].display = "unknown"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where bodySite is the Athena concept 261665006 'unknown'"					
//---END					
//---END					
//---END					
//---END					
