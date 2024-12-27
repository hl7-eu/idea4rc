Logical: PatientFollowUpI4rc
Id: PatientFollowUp
Title: "Patient Follow Up"
Description: """Patient Follow Up
Maturity Level: 0 Draft"""
* patient 1..* Subject "Patient (M)" """Patient element 
"""
* patient insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* patient insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* statusOfPatientAtLastFollowUp 1..* CodeableConcept "Status of patient at last follow-up (M)" """Describes the status at last follow-up 
If DOD, DOC or DUC register the death in the DEATH table (with date of last contact as death date). If the death cause is specified use the cause_concept_id.
If lost to follow up register an observation.
All the other information can be derived from the other data.

Maybe it should be moved to Patient entity"""
* statusOfPatientAtLastFollowUp insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* statusOfPatientAtLastFollowUp insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* statusOfPatientAtLastFollowUp ^comment = """Alive, No Evidence of Disease (NED) - 2000100071
 Dead of Disease (DOD) - 2000100072
Dead of Other Cause (DOC) - 2000100073
Dead of Unknown Cause (DUC) - 2000100074
Alive With Disease (AWD) - 2000100075
Lost to follow-up - 4163894"""
* statusOfDiseaseAtLastFollowUp 1..* BackboneElement "Status of disease at last follow-up (M) type EpisodeEvent" """Describes the disease status at the last follow-up. This value is redundant as it could be derived from the disease status in EpisodeEvent. If a Patient has 3 follow-ups, but the disease status (e.g., stable disease) did not change during those, the follow-ups will be grouped into a single one with the last date of the three of them. 
"""
* statusOfDiseaseAtLastFollowUp insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* statusOfDiseaseAtLastFollowUp insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* statusOfDiseaseAtLastFollowUp ^comment = """Complete Remission - 32946
Partial Remission - 32947
Stable Disease - 32948
Progression - 32949
Recurrence - 2000100002
recurrence is algorithmically derived from previous episode (if it was complete remission)
"""
* patientFollowUpDate 1..* date "Patient Follow Up date (M)" """Date of the clinical follow-up 
"""
* patientFollowUpDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* patientFollowUpDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* newCancerDiagnosis 1..* boolean "New cancer diagnosis (M)" """identifies whether the patient has developed a subsequent primary cancer 
Check"""
* newCancerDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* newCancerDiagnosis ^comment = """Yes - 4188539
No -  4188540"""
* dateOfNewCancerDiagnosis 1..* date "Date of new cancer diagnosis (M)" """date of subsequent primary cancer diagnosis 
"""
* dateOfNewCancerDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* newCancerTopography 1..* CodeableConcept "New cancer topography (M)" """clarifies the site of the subsequent primary cancer (from a predefined list of sites) 
"""
* newCancerTopography insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* newCancerTopography ^comment = """Any value of Class ICDO Condition"""
* lastContact 1..* date "Last Contact (M)" """Date of the last contact with the patient, of any kind. 
"""
* lastContact insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
