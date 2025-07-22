Instance: overallTreatmentResponse2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/overallTreatmentResponse2FHIR"
* name = "OverallTreatmentResponse2FHIR"
* title = "OverallTreatmentResponse Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the OverallTreatmentResponse model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/OverallTreatmentResponse"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-overallTreatment-eu-i4rc"
* group[=].element[+].code = #diagnosisReference
* group[=].element[=].display = "Diagnosis reference (M)"
* group[=].element[=].target.code = #Observation.reasonReferencen
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #episodeEvent
* group[=].element[=].display = "Episode Event Reference (M)"
* group[=].element[=].target.code = #Observation.reasonReferencen
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #overallTreatmentResponse
* group[=].element[=].display = "Overall Treatment response (based on imaging alone; no recist or other criteria) (M)"
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #overallTreatmentResponseDefined
* group[=].element[=].display = "Overall Treatment response defined/done (M)"
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "In case the actual Organization performing the procedure is captured. It could be a perfomer of type Organization; or a perfomer.organization if of type PractitionerRole"
* group[=].element[+].code = #overallTreatmentResponseDefined
* group[=].element[=].display = "Overall Treatment response defined/done (M)"
* group[=].element[=].target.code = #Observation.extension:sameHospital
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations. It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."
