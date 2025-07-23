Instance: adverseEvent2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/adverseEvent2FHIR"
* name = "AdverseEvent2FHIR"
* title = "AdverseEvent Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the AdverseEvent model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/AdverseEvent"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/adverseEvent-eu-i4rc"
* group[=].element[+].code = #treatmentReference[x]
* group[=].element[=].display = "Treatment reference (M)"
* group[=].element[=].target.code = #AdverseEvent.suspectEntity.instance
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #adverseEventType
* group[=].element[=].display = "Adverse event type (CTCAE Term) (M)"
* group[=].element[=].target.code = #AdverseEvent.event
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #adverseEventStartingDate
* group[=].element[=].display = "Adverse event starting date (M)"
* group[=].element[=].target.code = #AdverseEvent.detected
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #adverseEventDuration
* group[=].element[=].display = "Adverse event duration (M)"
* group[=].element[=].target.code = #AdverseEvent.extension:OccurrenceR5
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If ocurrence.repeat.durationMax = 1 and ocurrence.repeat.durationUnit is wk, then the code is 2000100050 'Less than one week'; If ocurrence.repeat.durationMax = 1 and ocurrence.repeat.durationUnit is mo, then the code is 2000100051 'More than one week but less than a month'; If ocurrence.repeat.durationMax = 3 and ocurrence.repeat.durationUnit is mo, then the code is 2000100052 'More than a month but less than 3 months'; If ocurrence.repeat.durationMax = 1 and ocurrence.repeat.durationUnit is a, then the code is 2000100053 'More than 3 months'"
