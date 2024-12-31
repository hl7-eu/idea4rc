Instance: followup2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/eps/ConceptMap/followup2FHIR"
* name = "Followup2FHIR"
* title = "Patient Follow up Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the Patient Follow up model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* group[=].element[+].code = #patient
* group[=].element[=].display = "Patient (M)"
* group[=].element[=].target.code = #Condition.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis)"
* group[=].element[+].code = #statusOfDiseaseAtLastFollowUp
* group[=].element[=].display = "Status of disease at last follow-up (M) type EpisodeEvent"
* group[=].element[=].target.code = #Condition.clinicalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis)"
* group[=].element[+].code = #newCancerDiagnosis
* group[=].element[=].display = "New cancer diagnosis (M)"
* group[=].element[=].target.code = #Condition.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis)"
* group[=].element[+].code = #dateOfNewCancerDiagnosis
* group[=].element[=].display = "Date of new cancer diagnosis (M)"
* group[=].element[=].target.code = #Condition.onSetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis). See the CancerEpisode map for further details about the representation of the date of diagnosis"
* group[=].element[+].code = #newCancerTopography
* group[=].element[=].display = "New cancer topography (M)"
* group[=].element[=].target.code = #Condition.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis)"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Encounter-eu-i4rc"
* group[=].element[+].code = #patient
* group[=].element[=].display = "Patient (M)"
* group[=].element[=].target.code = #Encounter.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #statusOfDiseaseAtLastFollowUp
* group[=].element[=].display = "Status of disease at last follow-up (M) type EpisodeEvent"
* group[=].element[=].target.code = #Encounter.diagnosis.condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"
* group[=].element[+].code = #patientFollowUpDate
* group[=].element[=].display = "Patient Follow Up date (M)"
* group[=].element[=].target.code = #Encounter.period.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #newCancerDiagnosis
* group[=].element[=].display = "New cancer diagnosis (M)"
* group[=].element[=].target.code = #Encounter.diagnosis.condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"
* group[=].element[+].code = #dateOfNewCancerDiagnosis
* group[=].element[=].display = "Date of new cancer diagnosis (M)"
* group[=].element[=].target.code = #Encounter.diagnosis.condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"
* group[=].element[+].code = #newCancerTopography
* group[=].element[=].display = "New cancer topography (M)"
* group[=].element[=].target.code = #Encounter.diagnosis.condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-dateLastContact-eu-i4rc"
* group[=].element[+].code = #patient
* group[=].element[=].display = "Patient (M)"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #lastContact
* group[=].element[=].display = "Last Contact (M)"
* group[=].element[=].target.code = #Observation.valueDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-lastFollowupStatus-eu-i4rc"
* group[=].element[+].code = #patient
* group[=].element[=].display = "Patient (M)"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #statusOfPatientAtLastFollowUp
* group[=].element[=].display = "Status of patient at last follow-up (M)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
