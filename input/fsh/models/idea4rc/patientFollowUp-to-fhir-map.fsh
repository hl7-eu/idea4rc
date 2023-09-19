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
* group[=].element[=].target.code = #Encounter.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "CLARIFY THE MEANING OF THE MODEL ELEMENT"					
* group[=].element[+].code = #PatientFollowUpI4rc.patientFollowUpDate					
* group[=].element[=].display = "Patient Follow Up date"					
* group[=].element[=].target.code = #Encounter.period.end					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "check if the period end is the appropriate date"					
* group[=].element[+].code = #PatientFollowUpI4rc.newCancerDiagnosis					
* group[=].element[=].display = "New cancer diagnosis"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #PatientFollowUpI4rc.dateOfNewCancerDiagnosis					
* group[=].element[=].display = "Date of new cancer diagnosis"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #PatientFollowUpI4rc.newCancerTopography					
* group[=].element[=].display = "New cancer topography"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
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
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "CLARIFY THE MEANING OF THE MODEL ELEMENT"					
* group[=].element[+].code = #PatientFollowUpI4rc.patientFollowUpDate					
* group[=].element[=].display = "Patient Follow Up date"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #PatientFollowUpI4rc.newCancerDiagnosis					
* group[=].element[=].display = "New cancer diagnosis"					
* group[=].element[=].target.code = #Encounter.extension:condition-occurredFollowing					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If  extension:condition-occurredFollowing exists, this is a new primary cancer diagnosis identified during a follow up"					
* group[=].element[+].code = #PatientFollowUpI4rc.dateOfNewCancerDiagnosis					
* group[=].element[=].display = "Date of new cancer diagnosis"					
* group[=].element[=].target.code = #Encounter.extension:assertedDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #PatientFollowUpI4rc.newCancerTopography					
* group[=].element[=].display = "New cancer topography"					
* group[=].element[=].target.code = #Encounter.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
