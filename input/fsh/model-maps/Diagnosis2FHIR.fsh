Instance: diagnosis2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/diagnosis2FHIR"
* name = "Diagnosis2FHIR"
* title = "Diagnosis Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the Diagnosis model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Diagnosis"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* group[=].element[+].code = #cancerepisode
* group[=].element[=].display = "CancerEpisode (M)"
* group[=].element[=].target.code = #Condition.id
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #dateOfDiagnosis
* group[=].element[=].display = "Date of diagnosis (biopsy or surgical piece) (M)"
* group[=].element[=].target.code = #Condition.onsetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If the onsetAge is not used"
* group[=].element[+].code = #dateOfDiagnosis
* group[=].element[=].display = "Date of diagnosis (biopsy or surgical piece) (M)"
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See details in group2"
* group[=].element[+].code = #typeOfBiopsy
* group[=].element[=].display = "Type of biopsy (M)"
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See details in group2"
* group[=].element[+].code = #biopsyDoneBy
* group[=].element[=].display = "Biopsy done by (M)"
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See details in group2"
* group[=].element[+].code = #ageAtDiagnosis
* group[=].element[=].display = "Age at diagnosis (M)"
* group[=].element[=].target.code = #Condition.onsetAge
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Applicable only if onSetDateTime is not used otherwise is a calculated value from birthdate and onSetDateTime"
* group[=].element[+].code = #radiotherapyInducedSarcoma
* group[=].element[=].display = "Radiotherapy induced sarcoma (M)"
* group[=].element[=].target.code = #Condition.extension:condition-dueTo
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "'true' when extension:condition-dueTo.valueCodeableConcept = $sct#108290001 'Radiation oncology AND/OR radiotherapy'"
* group[=].element[+].code = #biopsyGrading
* group[=].element[=].display = "Biopsy grading (O)"
* group[=].element[=].target.code = #Condition.stage.summary
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #histologyGroup
* group[=].element[=].display = "Histology group (O)"
* group[=].element[=].target.code = #Condition.histologyMorphologyBehavior
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The value must be one of the ones in ValueSet: Cancer histology: Athena "
* group[=].element[+].code = #site
* group[=].element[=].display = "Site (O)"
* group[=].element[=].target.code = #Condition.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The value must be one of the ones in Site: Athena"
* group[=].element[+].code = #histologySubgroup
* group[=].element[=].display = "Histology subgroup (O)"
* group[=].element[=].target.code = #Condition.histologyMorphologyBehavior
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The value must be one of the ones in ValueSet: Cancer histology subgroup: Athena"
* group[=].element[+].code = #subsite
* group[=].element[=].display = "Subsite (O)"
* group[=].element[=].target.code = #Condition.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The value must be one of the ones in Subsites: Athena"
* group[=].element[+].code = #diagnosisCode
* group[=].element[=].display = "Diagnosis code (M)"
* group[=].element[=].target.code = #Condition.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If HNC, the value must be one of the ones in ValueSet: HNC ConditionList: Athen. If Sarc, the value must be one of the ones in ValueSet: Sarcome List: Athena "
* group[=].element[+].code = #diagnosisCode
* group[=].element[=].display = "Diagnosis code (M)"
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See details in group2"
* group[=].element[+].code = #tumorSize
* group[=].element[=].display = "Tumor Size (M)"
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#36768664"
* group[=].element[+].code = #superficialDepth
* group[=].element[=].display = "Superficial depth (M)"
* group[=].element[=].target.code = #Condition.bodySite.extension:qualifier.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where qualifier.value is $athena#36768911"
* group[=].element[+].code = #superficialDepth
* group[=].element[=].display = "Superficial depth (M)"
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#36768749"
* group[=].element[+].code = #deepDepth
* group[=].element[=].display = "Deep depth (M)"
* group[=].element[=].target.code = #Condition.bodySite.extension:qualifier.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where qualifier.value is $athena#36768749"
* group[=].element[+].code = #deepDepth
* group[=].element[=].display = "Deep depth (M)"
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#36768749"
* group[=].element[+].code = #biopsyMitoticCount
* group[=].element[=].display = "Biopsy Mitotic count (M)"
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#4227243"
* group[=].element[+].code = #mitoticIndex
* group[=].element[=].display = "Mitotic Index (M)"
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#4099595"
* group[=].element[+].code = #plasmaticEbvDnaAtBaseline
* group[=].element[=].display = "Plasmatic EBV DNA at baseline (R)"
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#3043849"
* group[=].element[+].code = #hpvStatus
* group[=].element[=].display = "HPV status (M for OROPHARYNGEAL (not oral cavity) carcinomas)"
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#46236082"
* group[=].element[+].code = #crpTested
* group[=].element[=].display = "CRP – C reactive protein tested (O)"
* group[=].element[=].target.code = #Condition.evidence:simpleResult.detail.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where detail.resolve().ofType(Observation).code is $athena#3000965"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Diagnosis"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Observation-diagnosis-eu-i4rc"
* group[=].element[+].code = #dateOfDiagnosis
* group[=].element[=].display = "Date of diagnosis (biopsy or surgical piece) (M)"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #typeOfBiopsy
* group[=].element[=].display = "Type of biopsy (M)"
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #biopsyDoneBy
* group[=].element[=].display = "Biopsy done by (M)"
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #diagnosisCode
* group[=].element[=].display = "Diagnosis code (M)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If HNC, the value must be one of the ones in ValueSet: HNC ConditionList: Athen. If Sarc, the value must be one of the ones in ValueSet: Sarcome List: Athena"
