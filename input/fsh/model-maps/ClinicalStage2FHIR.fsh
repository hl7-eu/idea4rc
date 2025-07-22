Instance: clinicalStage2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/clinicalStage2FHIR"
* name = "ClinicalStage2FHIR"
* title = "ClinicalStage Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the ClinicalStage model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
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
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Observation-diagnosis-eu-i4rc"
* group[=].element[+].code = #diagnosisReference
* group[=].element[=].display = "Diagnosis Reference (M)"
* group[=].element[=].target.code = #Observation.derivedFrom.observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-immaging-clinical-stage-eu-i4rc"
* group[=].element[+].code = #imagingForPrimarySite
* group[=].element[=].display = "Imaging for primary site (M)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been in ValueSet Immaging for Clinical Stage for primary or must be 2000100025 'Fluorodeoxyglucose positron emission tomography' or 2000100026 'Positron emission tomography using other tracers' and bodySite must be in ValueSet Cancer site: Athena"
* group[=].element[+].code = #imagingForPrimarySite.ct
* group[=].element[=].display = "CT for primary site (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 4300757 'Computed tomography' and bodySite must be in ValueSet Cancer site: Athena"
* group[=].element[+].code = #imagingForPrimarySite.mri
* group[=].element[=].display = "MRI for primary site (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 4013636 'Magnetic resonance imaging' and bodySite must be in ValueSet Cancer site: Athena"
* group[=].element[+].code = #imagingForPrimarySite.us
* group[=].element[=].display = "US for primary site (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 4037672 'Ultrasonography' and bodySite must be in ValueSet Cancer site: Athena"
* group[=].element[+].code = #imagingForPrimarySite.other
* group[=].element[=].display = "Other imaging for primary site (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 2000100025 'Fluorodeoxyglucose positron emission tomography' or 2000100026 'Positron emission tomography using other tracers' and bodySite must be in ValueSet Cancer site: Athena"
* group[=].element[+].code = #imagingForNeck
* group[=].element[=].display = "Imaging for neck (M)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been in ValueSet Immaging for Clinical Stage for neck or must be 2000100025 'Fluorodeoxyglucose positron emission tomography' or 2000100026 'Positron emission tomography using other tracers' and bodySite must be 4048840 'Region of neck'"
* group[=].element[+].code = #imagingForNeck.ct
* group[=].element[=].display = "CT for neck (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 3307719 'Computed tomography of neck' and bodySite must be 4048840 'Region of neck'"
* group[=].element[+].code = #imagingForNeck.mri
* group[=].element[=].display = "MRI for neck (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 4218948 'Magnetic resonance imaging of neck' and bodySite must be 4048840 'Region of neck'"
* group[=].element[+].code = #imagingForNeck.us
* group[=].element[=].display = "US for neck (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 2793113 'Ultrasonography of Neck' and bodySite must be 4048840 'Region of neck'"
* group[=].element[+].code = #imagingForNeck.other
* group[=].element[=].display = "Other imaging for neck (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 2000100025 'Fluorodeoxyglucose positron emission tomography' or 2000100026 'Positron emission tomography using other tracers' and bodySite must be 4048840 'Region of neck'"
* group[=].element[+].code = #imagingForMetastasis
* group[=].element[=].display = "Imaging for metastasis (M)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been in ValueSet Immaging for metastasis or must be 2000100025 'Fluorodeoxyglucose positron emission tomography' or 2000100026 'Positron emission tomography using other tracers' and bodySite must be in ValueSet: Site of metastasis"
* group[=].element[+].code = #imagingForMetastasis.ct
* group[=].element[=].display = "CT for metastasis (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 4058335 'CT of chest' or 4061009 'CT of abdomen' or  4058336 'CT of pelvis' or 4145739 'CT of brain' and bodySite must be in ValueSet: Site of metastasis"
* group[=].element[+].code = #imagingForMetastasis.mri
* group[=].element[=].display = "MRI for metastasis (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 4083230 'MRI of abdomen' or 4097527 'MRI of pelvis' or 37311324 'MRI of brain' and bodySite must be in ValueSet: Site of metastasis"
* group[=].element[+].code = #imagingForMetastasis.us
* group[=].element[=].display = "US for metastasis (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been4261497 'Ultrasonography of abdomen' and bodySite must be in ValueSet: Site of metastasis"
* group[=].element[+].code = #imagingForMetastasis.other
* group[=].element[=].display = "Other imaging for metastasis (R)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code must been 4056836 'Standard chest X-ray' or 4217238 'Radioisotope scan of bone' or 4305790 'Positron emission tomography' or 2000100025 'Fluorodeoxyglucose positron emission tomography' or 2000100026 'Positron emission tomography using other tracers' and bodySite must be in ValueSet: Site of metastasis"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/hn-cancer-stage-group"
* group[=].element[+].code = #stagingProceduresDoneBy
* group[=].element[=].display = "Staging procedures done by (M)"
* group[=].element[=].target.code = #Observation.performer:organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #ct
* group[=].element[=].display = "cT (M)"
* group[=].element[=].target.code = #Observation.hasMember:tnmPrimaryTumorCategory
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See group for Observation: TNM Primary Tumor Category"
* group[=].element[+].code = #cn
* group[=].element[=].display = "cN (M)"
* group[=].element[=].target.code = #Observation.hasMember:tnmRegionalNodesCategory
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See group for Observation: TNM Regional Nodes Category"
* group[=].element[+].code = #cm
* group[=].element[=].display = "cM (M)"
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
* group[=].element[+].code = #clinicalStaging
* group[=].element[=].display = "Clinical Staging (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code =  4221079 'Clinical TNM stage grouping'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-distant-metastases-category"
* group[=].element[+].code = #cm
* group[=].element[=].display = "cM (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code =  21907-1 'Distant metastases.clinical [Class] Cancer'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-primary-tumor-category"
* group[=].element[+].code = #ct
* group[=].element[=].display = "cT (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code = 21905-5 'Primary tumor.clinical [Class] Cancer'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-regional-nodes-category"
* group[=].element[+].code = #cn
* group[=].element[=].display = "cN (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code =  21906-3 'Regional lymph nodes.clinical [Class] Cancer'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-extraNodalExtension-eu-i4rc"
* group[=].element[+].code = #extraNodalExtension
* group[=].element[=].display = "Extra-nodal extension (rEne) (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-number-tumor-nodules"
* group[=].element[+].code = #numberOfTumorNodules
* group[=].element[=].display = "Number of tumor nodules (R)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
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
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/sarcoma-extent-category"
* group[=].element[+].code = #localised
* group[=].element[=].display = "Localised (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'true', code=32942 'Confined Disease' else code=32944 'Metastatic Disease'"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ClinicalStage"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/sarcoma-locoRegional-category"
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
