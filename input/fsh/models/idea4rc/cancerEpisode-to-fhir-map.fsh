// -------------------------------------------------------------------------------					
//  Concept Model. File: 					cancerEpisode-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: cancerEpisode2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "CancerEpisode2FHIR"					
* title = "Cancer Episode Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Cancer Episode Model to this guide Map"					
* purpose = "It shows how the Cancer Episode model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #CancerEpisode.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Condition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.dateOfDiagnosis					
* group[=].element[=].display = "Date of diagnosis (biopsy or surgical piece)"					
* group[=].element[=].target.code = #Condition.onsetDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the onsetAge is not used"					
* group[=].element[+].code = #CancerEpisode.dateOfDiagnosis					
* group[=].element[=].display = "Date of diagnosis (biopsy or surgical piece)"					
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in group2"					
* group[=].element[+].code = #CancerEpisode.typeOfBiopsy					
* group[=].element[=].display = "Type of biopsy"					
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in group2"					
* group[=].element[+].code = #CancerEpisode.biopsyDoneBy					
* group[=].element[=].display = "Biopsy done by"					
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in group2"					
* group[=].element[+].code = #CancerEpisode.ageAtDiagnosis					
* group[=].element[=].display = "Age at diagnosis"					
* group[=].element[=].target.code = #Condition.onsetAge					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "Applicable only if onSetDateTime is not used otherwise is a calculated value from birthdate and onSetDateTime"					
* group[=].element[+].code = #CancerEpisode.radiotherapyInducedSarcoma					
* group[=].element[=].display = "Radiotherapy induced sarcoma"					
* group[=].element[=].target.code = #Condition.extension:condition-dueTo					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "true' when extension:condition-dueTo.valueCodeableConcept = $sct#108290001 'Radiation oncology AND/OR radiotherapy'"					
* group[=].element[+].code = #CancerEpisode.grading					
* group[=].element[=].display = "Grading"					
* group[=].element[=].target.code = #Condition.stage.summary					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.hnClassification					
* group[=].element[=].display = "Classification for Head and Neck tumors"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "At this stage represented as condition.code.
Evaluate if it represents a morphology/hystology classification.
This comment applies to all the inlcuded elements."					
* group[=].element[+].code = #CancerEpisode.hnClassification.histologySquamous					
* group[=].element[=].display = "Histology Squamous"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.hnClassification.histologyAdenocarcinoma					
* group[=].element[=].display = "Histology Adenocarcinoma"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.hnClassification.histologyNeuroendocrine					
* group[=].element[=].display = "Histology Neuroendocrine"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.hnClassification.histologyOdontogenicCarcinoma					
* group[=].element[=].display = "Histology Odontogenic Carcinoma"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.hnClassification.histologySNUC					
* group[=].element[=].display = "Histology Sinonasal undifferentiated carcinoma"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification					
* group[=].element[=].display = "Sarcoma classification"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "At this stage represented as condition.code.
Evaluate if it represents a morphology/hystology classification.
This comment applies to all the inlcuded elements."					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.adipocyticTumours					
* group[=].element[=].display = "Histology subgroup Adipocytic tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.fmtTumours					
* group[=].element[=].display = "Histology subgroup Fibroblastic and myofibroblastic tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.socalledFibrohistiocyticTumours					
* group[=].element[=].display = "Histology subgroup So-called fibrohistiocytic tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.vascularTumours					
* group[=].element[=].display = "Vascular tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.pericyticPerivascularTumours					
* group[=].element[=].display = "Pericytic (perivascular) tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.smoothMuscleTumours					
* group[=].element[=].display = "Smooth muscle tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.skeletalMuscleTumours					
* group[=].element[=].display = "Skeletal muscle tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.chondroOsseousTumours					
* group[=].element[=].display = "Chondro-osseous tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.peripheralNerveSheathTumours					
* group[=].element[=].display = "Peripheral nerve sheath tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.tumoursOfUncertainDifferentiation					
* group[=].element[=].display = "Tumours of uncertain differentiation"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.undifSmallRCelSarcBonAndSofTis					
* group[=].element[=].display = "Undifferentiated small round cell sarcomas of bone and soft tissue"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.estAndRelatedTumours					
* group[=].element[=].display = "Endometrial stromal and related tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.miscellaniousMesenchimalTumors					
* group[=].element[=].display = "Miscellanious mesenchimal tumors"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.sarcomaClassification.mixedEpithelialAndMesenchymalTumours					
* group[=].element[=].display = "Mixed epithelial and mesenchymal tumours"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.subsites					
* group[=].element[=].display = "subsites"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.nasalCavityAndParanasalSinuses					
* group[=].element[=].display = "Nasal cavity and paranasal sinuses subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.nasopharynx					
* group[=].element[=].display = "Nasopharynx  subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.hypopharynx					
* group[=].element[=].display = "Hypopharynx subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.oropharynx					
* group[=].element[=].display = "Oropharynx subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.larynx					
* group[=].element[=].display = "Larynx subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.oralCavity					
* group[=].element[=].display = "Oral cavity subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.lip					
* group[=].element[=].display = "Lip subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.upperAndLowerLimbs					
* group[=].element[=].display = "Upper and Lower limbs subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.trunkWallSubsite					
* group[=].element[=].display = "Trunk wall subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.intraAbdominalSubsite					
* group[=].element[=].display = "Intra abdominal subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.intraThoracicSubsite					
* group[=].element[=].display = "Intra thoracic subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.genitoUrinarySubsite					
* group[=].element[=].display = "Genito urinary subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.headAndNeckSubsite					
* group[=].element[=].display = "Head and Neck subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.breast					
* group[=].element[=].display = "Breast subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.subsites.others					
* group[=].element[=].display = "Other subsite"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.tumorSize					
* group[=].element[=].display = "Tumor Size"					
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueQuantity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Where  detail.resolve().ofType(Observation).code='$athena#36768664'"					
* group[=].element[+].code = #CancerEpisode.depth					
* group[=].element[=].display = "Depth"					
* group[=].element[=].target.code = #Condition.bodySite.extension:qualifier.value[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.biopsyMitoticCount					
* group[=].element[=].display = "Biopsy Mitotic count"					
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#4227243"					
* group[=].element[+].code = #CancerEpisode.plasmaticEbvDnaAtBaseline					
* group[=].element[=].display = "Plasmatic EBV DNA at baseline"					
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#4047317"					
* group[=].element[+].code = #CancerEpisode.hpvStatus					
* group[=].element[=].display = "HPV status"					
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#35952576"					
* group[=].element[+].code = #CancerEpisode.crpCReactiveProteinTested					
* group[=].element[=].display = "CRP - C reactive protein tested"					
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#44789521"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Observation-diagnosis-eu-i4rc"					
					
					
* group[=].element[+].code = #CancerEpisode.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Observation.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.dateOfDiagnosis					
* group[=].element[=].display = "Date of diagnosis (biopsy or surgical piece)"					
* group[=].element[=].target.code = #Observation.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.typeOfBiopsy					
* group[=].element[=].display = "Type of biopsy"					
* group[=].element[=].target.code = #Observation.method					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #CancerEpisode.biopsyDoneBy					
* group[=].element[=].display = "Biopsy done by"					
* group[=].element[=].target.code = #Observation.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
