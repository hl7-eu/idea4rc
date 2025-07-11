//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureImmagingClinicalStageI4rc
Parent:   Procedure 
Id:       Procedure-immaging-clinical-stage-eu-i4rc
Title:    "Procedure: Immaging for Clinical Stage"
Description: "This profile defines how to represent Procedures in FHIR for describing Immaging for Clinical Stage."
//-------------------------------------------------------------------------------------------

* insert SubjectRules

* code ^short = "Identification of the procedure." 
* code from VsImmagingClinicalStageI4rc (required)

* bodySite from VsImmagingBodySitesI4rc (required)
