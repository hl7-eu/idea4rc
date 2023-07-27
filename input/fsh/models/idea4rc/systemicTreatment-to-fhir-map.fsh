// -------------------------------------------------------------------------------			
//  Concept Model. File: 			systemicTreatment-to-fhir-map.fsh
// -------------------------------------------------------------------------------			
Instance: systemicTreatment2FHIR			
InstanceOf: ConceptMap			
Usage: #definition			
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"			
* name = "systemicTreatment2FHIR"			
* title = "Systemic Treatment to this guide Map"			
* status = #draft			
* experimental = true			
* description = "Systemic Treatment to this guide Map"			
* purpose = "It shows how the Systemic Treatment model is mapped into this guide"			
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/SystemicTreatment"			
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/MedicationAdministration-eu-i4rc"			
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/SystemicTreatment"			
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/MedicationAdministration-eu-i4rc"			
			
* group[=].element[+].code = #SystemicTreatment.episodeEventReference			
* group[=].element[=].display = "Episode Event reference"			
* group[=].element[=].target.code = #Procedure.reasonReference			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
			
* group[=].element[+].code = #SystemicTreatment.typeOfSystemicTreatment			
* group[=].element[=].display = "type of systemic treatment"			
* group[=].element[=].target.code = #Procedure.category			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent			
* group[=].element[=].target.comment = "TO BE ANALYZED IF THIS IS REPRESENTED BY USING A MedicationAdministration OR IT IS A PROCEDURE COMPOSED BY ONE OR MORE "			
* group[=].element[+].code = #SystemicTreatment.intent			
* group[=].element[=].display = "Intent"			
* group[=].element[=].target.code = #Procedure.extension:intent			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #SystemicTreatment.setting			
* group[=].element[=].display = "Setting"			
* group[=].element[=].target.code = #Procedure.extension			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #SystemicTreatment.startDateSystemicTreatment			
* group[=].element[=].display = "Start date systemic treatment"			
* group[=].element[=].target.code = #Procedure.effectivePeriod.start			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
			
* group[=].element[+].code = #SystemicTreatment.endDateSystemicTreatment			
* group[=].element[=].display = "End date systemic treatment"			
* group[=].element[=].target.code = #Procedure.effectivePeriod.end			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
			
* group[=].element[+].code = #SystemicTreatment.numberOfCyclesAdministrations			
* group[=].element[=].display = "Number of cycles/ administrations"			
* group[=].element[=].target.code = #Procedure.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
			
* group[=].element[+].code = #SystemicTreatment.regimen			
* group[=].element[=].display = "Regimen"			
* group[=].element[=].target.code = #Procedure.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
			
* group[=].element[+].code = #SystemicTreatment.regimen.drugs1			
* group[=].element[=].display = "Drugs 1"			
* group[=].element[=].target.code = #Procedure.medication[x]			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #SystemicTreatment.regimen.drugs2			
* group[=].element[=].display = "Drugs 2"			
* group[=].element[=].target.code = #Procedure.medication[x]			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #SystemicTreatment.regimen.drugs3			
* group[=].element[=].display = "Drugs 3"			
* group[=].element[=].target.code = #Procedure.medication[x]			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #SystemicTreatment.regimen.startDateRegimenChanged			
* group[=].element[=].display = "Start date regimen changed"			
* group[=].element[=].target.code = #Procedure.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #SystemicTreatment.regimen.endDateRegimenChanged			
* group[=].element[=].display = "End date regimen changed"			
* group[=].element[=].target.code = #Procedure.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #SystemicTreatment.reasonForEndOfTreatment			
* group[=].element[=].display = "Reason for end of treatment"			
* group[=].element[=].target.code = #Procedure.statusReason			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
			
* group[=].element[+].code = #SystemicTreatment.treatmentResponseBasedOnImagingAloneNoRecistOrOtherCriteria			
* group[=].element[=].display = "Treatment response (based on imaging alone; no recist or other criteria)"			
* group[=].element[=].target.code = #Procedure.extension:outcome			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked, consdier if we should use procedure + amdinistration ; or careplan ..tbd.."			
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
//---END			
//---END			
//---END			
//---END			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
