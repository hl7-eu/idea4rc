Instance: diseaseExtent2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/diseaseExtent2FHIR"
* name = "DiseaseExtent2FHIR"
* title = "DiseaseExtent Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the DiseaseExtent model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/DiseaseExtent"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-secondaryCancer-eu-i4rc"
* group[=].element[+].code = #episodeEvent
* group[=].element[=].display = "Episode Event Reference (M)"
* group[=].element[=].target.code = #Condition.extension:relatedPrimaryCancerCondition.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #regionalNodalMetastases
* group[=].element[=].display = "Regional nodal metastases (M)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4241958 'Lymph node' and extension:qualifier.value=4260906 'Regional'"
* group[=].element[+].code = #sites.softTissue
* group[=].element[=].display = "Soft tissue (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4338971 'soft tissue'"
* group[=].element[+].code = #sites.distantLymphNode
* group[=].element[=].display = "distant lymph node (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4241958 'Lymph node' and extension:qualifier.value=4209878 'Remote'"
* group[=].element[+].code = #sites.lung
* group[=].element[=].display = "lung (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4213162 'lung'"
* group[=].element[+].code = #sites.metastasisatbone
* group[=].element[=].display = "metastasisAtBone (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4241958 'bone'"
* group[=].element[+].code = #sites.liver
* group[=].element[=].display = "liver (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4009105 'liver'"
* group[=].element[+].code = #sites.pleura
* group[=].element[=].display = "pleura (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4150673 'pleura'"
* group[=].element[+].code = #sites.peritoneum
* group[=].element[=].display = "peritoneum (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4035784 'peritoneum'"
* group[=].element[+].code = #sites.brain
* group[=].element[=].display = "brain (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4133034 'brain'"
* group[=].element[+].code = #sites.otherViscera
* group[=].element[=].display = "other viscera (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4159589 'Abdominal viscera'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/DiseaseExtent"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/locoRegional-category"
* group[=].element[+].code = #locoRegional
* group[=].element[=].display = "Loco-regional (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If it is present an observation with value = 32943 'Invasive Disease', it is 'true', else 'false'"
* group[=].element[+].code = #isTransitMetastasisWithClinicalConfirmation
* group[=].element[=].display = "Is Transit metastasis with clinical confirmation (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If it is present an observation with value = 36769249 'Transit Metastasis with Clinical Confirmation', it is ''true'', else 'false'"
* group[=].element[+].code = #isMultifocalTumor
* group[=].element[=].display = "Is Multifocal tumor (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If it is present an observation with value = 36769933 'Multifocal Tumor', it is 'true', else 'false'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/DiseaseExtent"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/sarcoma-cancer-stage-group"
* group[=].element[+].code = #localised
* group[=].element[=].display = "Localised (M)"
* group[=].element[=].target.code = #Observation.hasMember:localized
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See group for Observation: Localized Category (Stage, Sarcoma)"
* group[=].element[+].code = #numberOfTumorNodules
* group[=].element[=].display = "Number of tumor nodules (R)"
* group[=].element[=].target.code = #Observation.hasMember:localized
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See group for Observation: Number of tumor nodules"
