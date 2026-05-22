Instance: regionalDeepHyperthemia2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/regionalDeepHyperthemia2FHIR"
* name = "RegionalDeepHyperthemia2FHIR"
* title = "RegionalDeepHyprethemia Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the RegionalDeepHyperthemia model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/RegionalDeepHyperthemia"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-otherTreatment-eu-i4rc"
* group[=].element[+].code = #RegionalDeepHyperthemia.diagnosisReference
* group[=].element[=].display = "Diagnosis reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where Procedure.code = 4302161  'Hyperthermia treatment of cancer'"
* group[=].element[+].code = #RegionalDeepHyperthemia.episodeEventReference
* group[=].element[=].display = "Episode Event reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #RegionalDeepHyperthemia.regionaldeephyperthemiaDoneAthospital
* group[=].element[=].display = "RegionalDeepHyperthemia done atHospital (M)"
* group[=].element[=].target.code = #Procedure.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "In case the actual Organization performing the procedure is captured. It could be a perfomer of type Organization; or a perfomer.organization if of type PractitionerRole"
* group[=].element[+].code = #RegionalDeepHyperthemia.regionaldeephyperthemiaDoneAthospital
* group[=].element[=].display = "RegionalDeepHyperthemia done atHospital (M)"
* group[=].element[=].target.code = #Procedure.extension:sameHospital
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations. It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."
* group[=].element[+].code = #RegionalDeepHyperthemia.startDate
* group[=].element[=].display = "Start date (M)"
* group[=].element[=].target.code = #Procedure.performed[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use type Period and element start."
* group[=].element[+].code = #RegionalDeepHyperthemia.endDate
* group[=].element[=].display = "End  date (M)"
* group[=].element[=].target.code = #Procedure.performed[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use type Period and element end."
* group[=].element[+].code = #RegionalDeepHyperthemia.treatmentResponse
* group[=].element[=].display = "Treatment response (R)"
* group[=].element[=].target.code = #Procedure.outcome
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
