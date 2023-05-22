  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationI4RC
Parent:   Observation 
Id:       observation-i4rc 
Title:    "Observation (Idea4RC)"
Description: "This profile defines how to represent observations in FHIR for the scope of the IDEA4RC project"
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	from VsTestResultI4RC (extensible)
* subject	0..1 MS
// * subject only PatientI4rc //	Who and/or what the observation is about
* effective[x]	MS

