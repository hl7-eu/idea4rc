//===================================================				
//  Logical Model				i4rc-PatientFollowUp.fsh
//===================================================				
Logical: PatientFollowUpI4rc				
Id: PatientFollowUp				
Title: "Patient Follow Up"				
Description:  """Patient Follow Up"""				
* patient 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject "Patient" """Patient element"""				
* statusAtLastFollowUp 1..1 CodeableConcept "Status at last follow-up" """Describes the status at last follow-up"""				
* patientFollowUpDate 1..1 date "Patient Follow Up date" """Date of the clinical follow-up"""				
* newCancerDiagnosis 1..1 CodeableConcept "New cancer diagnosis" """identifies whether the patient has developed a subsequent primary cancer"""				
* dateOfNewCancerDiagnosis 1..1 date "Date of new cancer diagnosis" """date of subsequent primary cancer diagnosis"""				
* newCancerTopography 1..1 CodeableConcept "New cancer topography" """clarifies the site of the subsequent primary cancer (from a predefined list of sites)"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
* statusAtLastFollowUp ^comment = """Alive, No Evidence of Disease (NED); Dead of Disease (DOD); Dead of Other Cause (DOC); Dead of Unknown Cause (DUC) ; Alive With Disease (AWD)"""				
* patientFollowUpDate ^comment = """YYYY-MM-DD"""				
* newCancerDiagnosis ^comment = """Yes; No; Unknown"""				
* dateOfNewCancerDiagnosis ^comment = """YYYY-MM-DD"""				
* newCancerTopography ^comment = """TBD"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
* patient insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* statusAtLastFollowUp insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* patientFollowUpDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* newCancerDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfNewCancerDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* newCancerTopography insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
* patient insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* statusAtLastFollowUp insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* patientFollowUpDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
				
				
				
//--- END				
//--- END				
//--- END				
