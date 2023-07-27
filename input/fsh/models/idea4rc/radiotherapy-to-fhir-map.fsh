// -------------------------------------------------------------------------------			
//  Concept Model. File: 			radiotherapy-to-fhir-map.fsh
// -------------------------------------------------------------------------------			
Instance: radiotherapy2FHIR			
InstanceOf: ConceptMap			
Usage: #definition			
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"			
* name = "radiotherapy2FHIR"			
* title = "Radiotherapy Model to this guide Map"			
* status = #draft			
* experimental = true			
* description = "Radiotherapy Model to this guide Map"			
* purpose = "It shows how the Radiotherapy model is mapped into this guide"			
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Radiotherapy"			
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-radiotheraphy-eu-i4rc"			
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Radiotherapy"			
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-radiotheraphy-eu-i4rc"			
			
* group[=].element[+].code = #Radiotherapy.episodeEventReference			
* group[=].element[=].display = "Episode Event reference"			
* group[=].element[=].target.code = #Procedure.reasonReference			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
			
* group[=].element[+].code = #Radiotherapy.radiotherapy			
* group[=].element[=].display = "Radiotherapy"			
* group[=].element[=].target.code = #Procedure.extension:procedureCategoryR5			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be analyzed: derive this from a combination of elements or use other cathegories (R5 extension)"			
* group[=].element[+].code = #Radiotherapy.intent			
* group[=].element[=].display = "Intent"			
* group[=].element[=].target.code = #Procedure.extension:procedureIntent.valueCodeableConcept			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.setting			
* group[=].element[=].display = "Setting"			
* group[=].element[=].target.code = #Procedure.extension:procedureCategoryR5			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be analyzed: derive this from a combination of elements or use other cathegories (R5 extension)"			
* group[=].element[+].code = #Radiotherapy.beamQuality			
* group[=].element[=].display = "Beam quality"			
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:modality.valueCodeableConcept			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.otherSpecify			
* group[=].element[=].display = "Other; specify"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.treatmentTechnique			
* group[=].element[=].display = "Treatment technique"			
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:technique.valueCodeableConcept			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.totalDoseTdGy			
* group[=].element[=].display = "Total Dose (TD) Gy"			
* group[=].element[=].target.code = #Procedure.extension:doseToVolume.extension:totalDoseDelivered			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent			
			
* group[=].element[+].code = #Radiotherapy.fractionSizeFs			
* group[=].element[=].display = "Fraction Size (FS)"			
//-- unmatched			
//-- unmatched			
* group[=].element[=].target.equivalence = #unmatched			
* group[=].element[=].target.comment = "check if this can be derived form TD and number of fractions"			
* group[=].element[+].code = #Radiotherapy.numberOfFractions			
* group[=].element[=].display = "Number of fractions"			
* group[=].element[=].target.code = #Procedure.fractionsDelivered			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
			
* group[=].element[+].code = #Radiotherapy.adaptiveRt			
* group[=].element[=].display = "Adaptive RT"			
* group[=].element[=].target.code = #Procedure.extension:terminationReason			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be reviewed; extension to be localized to change the used value set"			
* group[=].element[+].code = #Radiotherapy.igrtImageGuideRadiotherapy			
* group[=].element[=].display = "IGRT  (image guide radiotherapy)"			
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:technique.valueCodeableConcept			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.startDate			
* group[=].element[=].display = "Start date"			
* group[=].element[=].target.code = #Procedure.performedPeriod.start			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equal			
			
* group[=].element[+].code = #Radiotherapy.endDate			
* group[=].element[=].display = "End  date"			
* group[=].element[=].target.code = #Procedure.performedPeriod.end			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equal			
			
* group[=].element[+].code = #Radiotherapy.treatmentSites			
* group[=].element[=].display = "Treatment Sites:"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent			
			
* group[=].element[+].code = #Radiotherapy.treatmentSites.primary			
* group[=].element[=].display = "Primary"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.treatmentSites.neck			
* group[=].element[=].display = "Neck"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.treatmentSites.primaryAndIpsilateralNeck			
* group[=].element[=].display = "Primary and Ipsilateral Neck"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.treatmentSites.primaryAndBilateralNeck			
* group[=].element[=].display = "Primary and Bilateral Neck"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.treatmentSites.distantMetastasis			
* group[=].element[=].display = "Distant Metastasis"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSites			
* group[=].element[=].display = "Metastatic Treatment Sites:"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSites.lung			
* group[=].element[=].display = "Lung
"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSites.mediastinum			
* group[=].element[=].display = "Mediastinum
"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSites.bone			
* group[=].element[=].display = "Bone
"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSites.softTissue			
* group[=].element[=].display = "Soft Tissue
"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSites.liver			
* group[=].element[=].display = "Liver
"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be checked"			
* group[=].element[+].code = #Radiotherapy.treatmentCompletedAsPlanned			
* group[=].element[=].display = "Treatment Completed as Planned?"			
* group[=].element[=].target.code = #Procedure.extension:terminationReason			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be reviewed; extension to be localized to change the used value set. Chack if the statusReason can be sued for this scope"			
//---END			
//---END			
//---END			
//---END			
			
			
			
			
			
			
			
			
