Instance: isolatedLimbPerfusion2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/isolatedLimbPerfusion2FHIR"
* name = "IsolatedLimbPerfusion2FHIR"
* title = "IsolatedLimbPerfusion Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the IsolatedLimbPerfusion model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/IsolatedLimbPerfusion"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-otherTreatment-eu-i4rc"
* group[=].element[+].code = #diagnosisReference
* group[=].element[=].display = "Diagnosis reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where Procedure.code = 4019656 'Isolated limb perfusion'"
* group[=].element[+].code = #episodeEventReference
* group[=].element[=].display = "Episode Event reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #isolatedLimbPerfusionHospital
* group[=].element[=].display = "Isolated Limb perfusion Hospital (M)"
* group[=].element[=].target.code = #Procedure.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "In case the actual Organization performing the procedure is captured. It could be a perfomer of type Organization; or a perfomer.organization if of type PractitionerRole"
* group[=].element[+].code = #isolatedLimbPerfusionHospital
* group[=].element[=].display = "Isolated Limb perfusion Hospital (M)"
* group[=].element[=].target.code = #Procedure.extension:sameHospital
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations. It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."
* group[=].element[+].code = #startDate
* group[=].element[=].display = "Start date (M)"
* group[=].element[=].target.code = #Procedure.performedPeriod.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #endDate
* group[=].element[=].display = "End date (M)"
* group[=].element[=].target.code = #Procedure.performedPeriod.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #treatmentResponse
* group[=].element[=].display = "Treatment response (R)"
* group[=].element[=].target.code = #Procedure.outcome
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
