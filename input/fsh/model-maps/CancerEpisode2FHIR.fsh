Instance: cancerEpisode2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/cancerEpisode2FHIR"
* name = "CancerEpisode2FHIR"
* title = "CancerEpisod Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the CancerEpisod model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* group[=].element[+].code = #patient
* group[=].element[=].display = "Patient (M)"
* group[=].element[=].target.code = #Condition.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #cancerStartDate
* group[=].element[=].display = "Cancer start date (M)"
* group[=].element[=].target.code = #Condition.onsetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If the onsetAge is not used"
* group[=].element[+].code = #cancerStartDate
* group[=].element[=].display = "Cancer start date (M)"
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If the onsetAge is used, see group 2"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Observation-diagnosis-eu-i4rc"
* group[=].element[+].code = #cancerStartDate
* group[=].element[=].display = "Cancer start date (M)"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
