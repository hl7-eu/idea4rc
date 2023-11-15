//===================================================	
//  Logical Model	i4rc-PatientFollowUp.fsh
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





	
//--- END	
//--- END	
//--- END





// -------------------------------------------------------------------------------	
// Obligations H&N	
// -------------------------------------------------------------------------------	
* patient insert ObligationActorAndCode($actor-headneck, #handle)	
* statusAtLastFollowUp insert ObligationActorAndCode($actor-headneck, #handle)	
* patientFollowUpDate insert ObligationActorAndCode($actor-headneck, #handle)	
* newCancerDiagnosis insert ObligationActorAndCode($actor-headneck, #handle)	
* dateOfNewCancerDiagnosis insert ObligationActorAndCode($actor-headneck, #handle)	
* newCancerTopography insert ObligationActorAndCode($actor-headneck, #handle)	
//--- END	
//--- END	
//--- END



// -------------------------------------------------------------------------------	
// Obligations Sarcoma	
// -------------------------------------------------------------------------------	
* patient insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* statusAtLastFollowUp insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* patientFollowUpDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)



//--- END	
//--- END	
//--- END	
