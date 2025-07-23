Instance: pathologicalStage2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/pathologicalStage2FHIR"
* name = "PathologicalStage2FHIR"
* title = "PathologicalStage Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the PathologicalStage model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-secondaryCancer-eu-i4rc"
* group[=].element[+].code = #regionalNodalMetastases
* group[=].element[=].display = "Regional nodal metastases (M)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4241958 'Lymph node' and extension:qualifier.value=4260906 'Regional'"
* group[=].element[+].code = #sites
* group[=].element[=].display = "sites (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
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
* group[=].element[+].code = #sites.unknown
* group[=].element[=].display = "unknown (R)"
* group[=].element[=].target.code = #Condition.bodysite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where code=4129922 'unknown'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Observation-diagnosis-eu-i4rc"
* group[=].element[+].code = #diagnosisReference
* group[=].element[=].display = "Diagnosis Reference (M)"
* group[=].element[=].target.code = #Observation.derivedFrom.Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-otherTreatment-eu-i4rc"
* group[=].element[+].code = #sentinelNode
* group[=].element[=].display = "Sentinel node (M)"
* group[=].element[=].target.code = #Procedure.partOf
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If it is present a procedure with code 4263386 'Sentinel lymph node biopsy' related to the observation, it is 'true'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/hn-cancer-stage-group"
* group[=].element[+].code = #stagingProceduresDoneBy
* group[=].element[=].display = "Staging procedures done by (M)"
* group[=].element[=].target.code = #Observation.performer:organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #pt
* group[=].element[=].display = "pT (M)"
* group[=].element[=].target.code = #Observation.hasMember:tnmPrimaryTumorCategory
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See group for Observation: TNM Primary Tumor Category"
* group[=].element[+].code = #pn
* group[=].element[=].display = "pN (M)"
* group[=].element[=].target.code = #Observation.hasMember:tnmRegionalNodesCategory
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See group for Observation: TNM Regional Nodes Category"
* group[=].element[+].code = #pm
* group[=].element[=].display = "pM (M)"
* group[=].element[=].target.code = #Observation.hasMember:tnmDistantMetastasesCategory	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See group for Observation: TNM Distant Metastases Category"
* group[=].element[+].code = #extraNodalExtension
* group[=].element[=].display = "Extra-nodal extension (rEne) (M)"
* group[=].element[=].target.code = #Observation.hasMember:extraNodalExtension
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See group for Observation: Radiological Extra-nodal extension (rENE)"
* group[=].element[+].code = #pathologicalStaging
* group[=].element[=].display = "Pathological staging (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code =  4221515  'Pathologic TNM stage grouping'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
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
* group[=].element[=].target.comment = "If it is present an observation with value = 36769249 'Transit Metastasis with Clinical Confirmation', it is 'true', else 'false'"
* group[=].element[+].code = #isMultifocalTumor
* group[=].element[=].display = "Is Multifocal tumor (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If it is present an observation with value = 36769933 'Multifocal Tumor', it is 'true', else 'false'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-distant-metastases-category"
* group[=].element[+].code = #pm
* group[=].element[=].display = "pM (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code =  21901-4 'Distant metastases.pathology [Class] Cancer'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-primary-tumor-category"
* group[=].element[+].code = #pt
* group[=].element[=].display = "pT (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code = 21899-0 'Primary tumor.pathology Cancer'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-regional-nodes-category"
* group[=].element[+].code = #pn
* group[=].element[=].display = "pN (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code = 21900-6 'Regional lymph nodes.pathology [Class] Cancer'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-extraNodalExtension-eu-i4rc"
* group[=].element[+].code = #extraNodalExtension
* group[=].element[=].display = "Extra-nodal extension (rEne) (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-number-tumor-nodules"
* group[=].element[+].code = #numberOfTumorNodules
* group[=].element[=].display = "Number of tumor nodules (R)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
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
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PathologicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/sarcoma-extent-category"
* group[=].element[+].code = #localised
* group[=].element[=].display = "Localised (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code=32942 'Confined Disease' else code=32944 'Metastatic Disease'"
