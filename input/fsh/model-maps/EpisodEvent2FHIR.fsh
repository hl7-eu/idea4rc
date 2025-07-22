Instance: episodeEvent2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/episodeEvent2FHIR"
* name = "EpisodEvent2FHIR"
* title = "EpisodeEvent Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the EpisodeEvent model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* group[=].element[+].code = #cancerEpisodeReference
* group[=].element[=].display = "Cancer Episode Reference (M)"
* group[=].element[=].target.code = #Condition.extension:condition-occurredFollowing
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If not 'Baseline'"
* group[=].element[+].code = #cancerEpisodeReference
* group[=].element[=].display = "Cancer Episode Reference (M)"
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If 'Baseline': new Condition"
* group[=].element[+].code = #diseaseStatus
* group[=].element[=].display = "Disease status (M)"
* group[=].element[=].target.code = #Condition.clinicalStatus.coding:athena
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The eventType is recoded in the coding athena slice, however the type has to be consistent with the combination of status / previous status and existance of previous Condition resources. The clincalStatus has in fact a required binding with http://hl7.org/fhir/R4/valueset-condition-clinical.html. active | recurrence | relapse | inactive | remission | resolved. For example Stable disease - 32948 may have status='active' and extension:condition-occurredFollowing.exists(), Complete Remission may have status='inactive' and extension:condition-occurredFollowing.exists(); Recurrence - 2000100002 may have status.: 'recurrence' and extension:condition-occurredFollowing.exists(). Progression - 32949  may have status='relapse' and extension:condition-occurredFollowing.exists()."
* group[=].element[+].code = #definedAt
* group[=].element[=].display = "Defined At (O)"
* group[=].element[=].target.code = #Condition.extension:sameHospital
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations. It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."
* group[=].element[+].code = #dateOfEpisode
* group[=].element[=].display = "Date of episode (M)"
* group[=].element[=].target.code = #Condition.onset
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If it is when this particular Condition record was created in the system"
