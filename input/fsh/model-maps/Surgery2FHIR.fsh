Instance: surgery2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/surgery2FHIR"
* name = "Surgery2FHIR"
* title = "SurgeryModel to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the Surgery model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Surgery"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* group[=].element[+].code = #surgicalSpecimenGradingOnlyInUntreatedTumours
* group[=].element[=].display = "Surgical specimen grading only in untreated tumours (M)"
* group[=].element[=].target.code = #Condition.stage.summary
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Surgery"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-surgery-eu-i4rc"
* group[=].element[+].code = #diagnosisReference
* group[=].element[=].display = "Diagnosis reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #episodeEventReference
* group[=].element[=].display = "Episode Event reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #surgeryType
* group[=].element[=].display = "Surgery type (M)"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #surgeryHospital
* group[=].element[=].display = "Surgery Hospital (M)"
* group[=].element[=].target.code = #Procedure.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "In case the actual Organization performing the procedure is captured. It could be a perfomer of type Organization; or a perfomer.organization if of type PractitionerRole"
* group[=].element[+].code = #dateOfSurgery
* group[=].element[=].display = "Date of surgery (M)"
* group[=].element[=].target.code = #Procedure.performedDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #surgeryIntention
* group[=].element[=].display = "Surgery intention (O)"
* group[=].element[=].target.code = #Procedure.extension:ProcedureCategoryR5/intent.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #typeOfSurgicalApproachOnTumour
* group[=].element[=].display = "Type of surgical approach on Tumour (M)"
* group[=].element[=].target.code = #Procedure.extension:procedure-method.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #marginsAfterSurgery
* group[=].element[=].display = "Margins after surgery (M)"
* group[=].element[=].target.code = #Procedure.outcome
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #tumorRupture
* group[=].element[=].display = "Tumor rupture (M)"
* group[=].element[=].target.code = #Procedure.extension:supportingInfoR5
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If it is present an observation with code 36768904 'Tumor Rupture' it is 'true'"
* group[=].element[+].code = #reconstruction
* group[=].element[=].display = "Reconstruction (M)"
* group[=].element[=].target.code = #Procedure.partOf
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, with code = 3010988 'Surgery reconstruction', it is 'true', else it is false"
* group[=].element[+].code = #neckSurgery
* group[=].element[=].display = "Neck surgery (M)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, with bodySite = 36770046 'Neck' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfNeckSurgery
* group[=].element[=].display = "Date of Neck surgery (M)"
* group[=].element[=].target.code = #Procedure.performedDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "The surgery procedure is another surgery procedure, related through partOf with the main surgery, with bodySite = 36770046 'Neck'"
* group[=].element[+].code = #lateralityOfTheDissection
* group[=].element[=].display = "Laterality of the dissection (M)"
* group[=].element[=].target.code = #Procedure.bodySite.extension:lateralityQualifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The surgery procedure is another surgery procedure, related through partOf with the main surgery, with bodySite = 36770046 'Neck'"
* group[=].element[+].code = #surgeryOnM
* group[=].element[=].display = "Surgery on M (M)"
* group[=].element[=].target.code = #Procedure.partOf
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is one of 36769180 'Metastasis', 35225724 'Metastasis to soft tissues', 36769243 'Distant spread to lymph node', 36770283 'Metastasis to lung' it is 'true', 36769301 'Metastasis to bone', 36770544 'Metastasis to liver', 35226258 'Metastasis to pleura', 3522625 'Metastasis to peritoneum', 367688623 'Metastasis to brain' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfSurgeryOnM
* group[=].element[=].display = "Date of surgery on M (M)"
* group[=].element[=].target.code = #Procedure.performedDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "The surgery procedure is another surgery procedure, related through partOf with the main surgery, where bodySite is one of 36769180 'Metastasis', 35225724 'Metastasis to soft tissues', 36769243 'Distant spread to lymph node', 36770283 'Metastasis to lung' it is 'true', 36769301 'Metastasis to bone', 36770544 'Metastasis to liver', 35226258 'Metastasis to pleura', 3522625 'Metastasis to peritoneum', 367688623 'Metastasis to brain'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis
* group[=].element[=].display = "Site of surgery on metastasis"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.softTissue
* group[=].element[=].display = "Site of surgery on metastasis_soft tissue (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is 35225724 'Metastasis to soft tissues' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.distantLymphNodes
* group[=].element[=].display = "Site of surgery on metastasis_distant lymph nodes (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is 36769243 'Distant spread to lymph node' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.lung
* group[=].element[=].display = "Site of surgery on metastasis_lung (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is 36770283 'Metastasis to lung' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.bone
* group[=].element[=].display = "Site of surgery on metastasis_bone (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is 36769301 'Metastasis to bone' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.liver
* group[=].element[=].display = "Site of surgery on metastasis_liver (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is 36770544 'Metastasis to liver' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.pleura
* group[=].element[=].display = "Site of surgery on metastasis_pleura (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is 35226258 'Metastasis to pleura' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.peritoneum
* group[=].element[=].display = "Site of surgery on metastasis_peritoneum (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is 3522625 'Metastasis to peritoneum' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.brain
* group[=].element[=].display = "Site of surgery on metastasis_brain (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where bodySite is 367688623 'Metastasis to brain' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.otherViscera
* group[=].element[=].display = "Site of surgery on metastasis_other viscera (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "IIf there is a surgery procedure, related through partOf with the main surgery, where bodySite is 36769180 'Metastasis' it is 'true', else it is 'false'"
* group[=].element[+].code = #siteOfSurgeryOnMetastasis.unknown
* group[=].element[=].display = "Site of surgery on metastasis_unknown (O)"
* group[=].element[=].target.code = #Procedure.bodySite.extension:locationQualifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If there is a surgery procedure, related through partOf with the main surgery, where is 36769180 'Metastasis' and locationQualifier is 4129922 'Unknown' it is 'true', else it is 'false'"
* group[=].element[+].code = #surgicalComplications
* group[=].element[=].display = "Surgical complications (Clavien-Dindo Classification) (M)"
* group[=].element[=].target.code = #Procedure.complication
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Surgery"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-extraNodalExtension-eu-i4rc"
* group[=].element[+].code = #extraNodalExtension
* group[=].element[=].display = "Extra-nodal extension (rEne) (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Surgery"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-testResult-eu-i4rc"
* group[=].element[+].code = #surgicalSpecimenMitoticCount
* group[=].element[=].display = "Surgical specimen Mitotic count (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code is 4227243 'Number of mitoses per 10 high power fields'"
