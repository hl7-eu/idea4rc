Instance: systemicTreatment2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/systemicTreatment2FHIR"
* name = "SystemicTreatment2FHIR"
* title = "SystemicTreatment Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the SystemicTreatment model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/SystemicTreatment"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/MedicationAdministration-eu-i4rc"
* group[=].element[+].code = #SystemicTreatment.diagnosisReference
* group[=].element[=].display = "Diagnosis reference (M)"
* group[=].element[=].target.code = #MedicationAdministration.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SystemicTreatment.episodeEvent
* group[=].element[=].display = "Episode Event reference (M)"
* group[=].element[=].target.code = #MedicationAdministration.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SystemicTreatment.systemicTreatmentHospital
* group[=].element[=].display = "SystemicTreatment Hospital (M)"
* group[=].element[=].target.code = #MedicationAdministration.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SystemicTreatment.systemicTreatmentHospital
* group[=].element[=].display = "SystemicTreatment Hospital (M)"
* group[=].element[=].target.code = #MedicationAdministration.extension:sameHospital
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SystemicTreatment.typeOfSystemicTreatment
* group[=].element[=].display = "type of systemic treatment (M)"
* group[=].element[=].target.code = #MedicationAdministration.extension:categoryR5
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code is in Value Set: Type of Systemic Treatment"
* group[=].element[+].code = #SystemicTreatment.intent
* group[=].element[=].display = "Intent (O)"
* group[=].element[=].target.code = #MedicationAdministration.extension:intent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SystemicTreatment.setting
* group[=].element[=].display = "Setting (O)"
* group[=].element[=].target.code = #MedicationAdministration.extension:categoryR5
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code is in Value Set: Treatment Setting"
* group[=].element[+].code = #SystemicTreatment.chemotherapyInfo
* group[=].element[=].display = "Chemotherapy info (O)"
* group[=].element[=].target.code = #MedicationAdministration.extension:categoryR5
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where code is in Value Set: Chemiotherapy Info"
* group[=].element[+].code = #SystemicTreatment.startDateSystemicTreatment
* group[=].element[=].display = "Start date systemic treatment (M)"
* group[=].element[=].target.code = #MedicationAdministration.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use type Period and element start."
* group[=].element[+].code = #SystemicTreatment.endDateSystemicTreatment
* group[=].element[=].display = "End date systemic treatment (M)"
* group[=].element[=].target.code = #MedicationAdministration.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use type Period and element end."
* group[=].element[+].code = #SystemicTreatment.numberOfCycles
* group[=].element[=].display = "Number of cycles/ administrations (O)"
* group[=].element[=].target.code = #MedicationAdministration.dosage.extension:chemotherapyTiming
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use element value.repeat.count"
* group[=].element[+].code = #SystemicTreatment.regimen
* group[=].element[=].display = "Regimen (O)"
* group[=].element[=].target.code = #MedicationAdministration.medication[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Applicable only if Code is in ValueSet: Regimen"
* group[=].element[+].code = #SystemicTreatment.startDateRegimenChanged
* group[=].element[=].display = "Start date regimen changed (M)"
* group[=].element[=].target.code = #MedicationAdministration.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use type Period and element start."
* group[=].element[=].target.comment = "It must be calculated from the update of the same MedicationAdministration"
* group[=].element[+].code = #SystemicTreatment.endDateRegimenChanged
* group[=].element[=].display = "End date regimen changed (M)"
* group[=].element[=].target.code = #MedicationAdministration.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use type Period and element end."
* group[=].element[=].target.comment = "It must be calculated from the update of the same MedicationAdministration"
* group[=].element[+].code = #SystemicTreatment.reasonForEndOfTreatment
* group[=].element[=].display = "Reason for end of treatment (M)"
* group[=].element[=].target.code = #MedicationAdministration.statusReason
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If status = 'completed' or 'stopped'"
* group[=].element[+].code = #SystemicTreatment.treatmentResponse
* group[=].element[=].display = "Treatment response (based on imaging alone; no recist or other criteria) (M)"
* group[=].element[=].target.code = #MedicationAdministration.extension:outcome
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
