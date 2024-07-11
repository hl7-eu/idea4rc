// -------------------------------------------------------------------------------					
//  Concept Model. File: 					patientFollowUp-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: followup2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "followup2FHIR"					
* title = "Patient Follow up Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Patient Follow up Model to this guide Map"					
* purpose = "It shows how the Patient Follow up model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition//Bundle-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Encounter-eu-i4rc"					
					
* group[=].element[+].code = #PatientFollowUp.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Encounter.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientFollowUp.statusAtLastFollowUp					
* group[=].element[=].display = "Status at last follow-up"					
* group[=].element[=].target.code = #Encounter.diagnosis.condition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "THE STATUS AS DESCRIBED IN THE MODEL IS MAPPED INTO A SEPARET OBSERVATION (see below)

If intended as the diagnosis at the last follow up. 
use = $diagnosis-role#AD (AdmissionDiagnosis)
Details in the referred Condition"					
* group[=].element[+].code = #PatientFollowUp.patientFollowUpDate					
* group[=].element[=].display = "Patient Follow Up date"					
* group[=].element[=].target.code = #Encounter.period.start					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientFollowUp.newCancerDiagnosis					
* group[=].element[=].display = "New cancer diagnosis"					
* group[=].element[=].target.code = #Encounter.diagnosis.condition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"					
* group[=].element[+].code = #PatientFollowUp.dateOfNewCancerDiagnosis					
* group[=].element[=].display = "Date of new cancer diagnosis"					
* group[=].element[=].target.code = #Encounter.diagnosis.condition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"					
* group[=].element[+].code = #PatientFollowUp.newCancerTopography					
* group[=].element[=].display = "New cancer topography"					
* group[=].element[=].target.code = #Encounter.diagnosis.condition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #PatientFollowUp.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Condition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientFollowUp.statusAtLastFollowUp					
* group[=].element[=].display = "Status at last follow-up"					
* group[=].element[=].target.code = #Condition.clinicalStatus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "THE STATUS AS DESCRIBED IN THE MODEL IS MAPPED INTO A SEPARET OBSERVATION (see below)

If intended as the diagnosis at the last follow up. 
use = $diagnosis-role#AD (AdmissionDiagnosis)
Details in the referred Condition"					
* group[=].element[+].code = #PatientFollowUp.patientFollowUpDate					
* group[=].element[=].display = "Patient Follow Up date"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #PatientFollowUp.newCancerDiagnosis					
* group[=].element[=].display = "New cancer diagnosis"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis)"					
* group[=].element[+].code = #PatientFollowUp.dateOfNewCancerDiagnosis					
* group[=].element[=].display = "Date of new cancer diagnosis"					
* group[=].element[=].target.code = #Condition.onSetDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis). See the CancerEpisode map for further details about the representation of the date of diagnosis"					
* group[=].element[+].code = #PatientFollowUp.newCancerTopography					
* group[=].element[=].display = "New cancer topography"					
* group[=].element[=].target.code = #Condition.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis)"					
//---END					
//---END					
//---END					
					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-lastFollowupStatus-eu-i4rc"					
					
* group[=].element[+].code = #PatientFollowUp.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Observation.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientFollowUp.statusAtLastFollowUp					
* group[=].element[=].display = "Status at last follow-up"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUp"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-dateLastContact-eu-i4rc"					
					
* group[=].element[+].code = #PatientFollowUp.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Observation.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientFollowUp.					
* group[=].element[=].display = "Patient Follow Up date"					
* group[=].element[=].target.code = #Observation.valueDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
