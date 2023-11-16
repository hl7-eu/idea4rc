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
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUpI4rc"					
* targetUri = "http://hl7.org/fhir/StrcutureDefinition/DomainResource"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUpI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/encounter-followup-eu-i4rc"					
					
* group[=].element[+].code = #PatientFollowUpI4rc.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Encounter.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientFollowUpI4rc.statusAtLastFollowUp					
* group[=].element[=].display = "Status at last follow-up"					
* group[=].element[=].target.code = #Encounter.diagnosis.condition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where use = CsGenericI4rc#last-followup-dx (Diagnosis at the last follow-up)
Details in the referred Condition"					
* group[=].element[+].code = #PatientFollowUpI4rc.patientFollowUpDate					
* group[=].element[=].display = "Patient Follow Up date"					
* group[=].element[=].target.code = #Encounter.period.end					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientFollowUpI4rc.newCancerDiagnosis					
* group[=].element[=].display = "New cancer diagnosis"					
* group[=].element[=].target.code = #Encounter.diagnosis.condition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"					
* group[=].element[+].code = #PatientFollowUpI4rc.dateOfNewCancerDiagnosis					
* group[=].element[=].display = "Date of new cancer diagnosis"					
* group[=].element[=].target.code = #Encounter.diagnosis.condition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"					
* group[=].element[+].code = #PatientFollowUpI4rc.newCancerTopography					
* group[=].element[=].display = "New cancer topography"					
* group[=].element[=].target.code = #Encounter.diagnosis.condition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where use = $diagnosis-role#DD (Discharge Diagnosis)
Details in the referred Condition"					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/PatientFollowUpI4rc"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #PatientFollowUpI4rc.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Encounter.patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientFollowUpI4rc.statusAtLastFollowUp					
* group[=].element[=].display = "Status at last follow-up"					
* group[=].element[=].target.code = #Encounter.clinicalStatus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = CsGenericI4rc#last-followup-dx (Diagnosis at the last follow-up)"					
* group[=].element[+].code = #PatientFollowUpI4rc.patientFollowUpDate					
* group[=].element[=].display = "Patient Follow Up date"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #PatientFollowUpI4rc.newCancerDiagnosis					
* group[=].element[=].display = "New cancer diagnosis"					
* group[=].element[=].target.code = #Encounter.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis)"					
* group[=].element[+].code = #PatientFollowUpI4rc.dateOfNewCancerDiagnosis					
* group[=].element[=].display = "Date of new cancer diagnosis"					
* group[=].element[=].target.code = #Encounter.onSetDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis). See the CancerEpisode map for further details about the representation of the date of diagnosis"					
* group[=].element[+].code = #PatientFollowUpI4rc.newCancerTopography					
* group[=].element[=].display = "New cancer topography"					
* group[=].element[=].target.code = #Encounter.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Parent Encounter.diagnosis with use = $diagnosis-role#DD (Discharge Diagnosis)"					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
