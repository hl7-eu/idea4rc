Instance: radiotherapy2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/radiotherapy2FHIR"
* name = "Radiotherapy2FHIR"
* title = "Radiotherapy Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the Radiotherapy model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Radiotherapy"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-radiotheraphy-eu-i4rc"
* group[=].element[+].code = #Radiotherapy.diagnosisReference
* group[=].element[=].display = "Diagnosis reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Radiotherapy.episodeEventReference
* group[=].element[=].display = "Episode Event reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Radiotherapy.radiotherapyHospital
* group[=].element[=].display = "Radiotherapy Hospital (M)"
* group[=].element[=].target.code = #Procedure.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "In case the actual Organization performing the procedure is captured. It could be a perfomer of type Organization; or a perfomer.organization if of type PractitionerRole"
* group[=].element[+].code = #Radiotherapy.radiotherapyHospital
* group[=].element[=].display = "Radiotherapy Hospital (M)"
* group[=].element[=].target.code = #Procedure.extension:sameHospital
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations. It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."
* group[=].element[+].code = #Radiotherapy.intent
* group[=].element[=].display = "Intent (M)"
* group[=].element[=].target.code = #Procedure.extension:procedureIntent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "from mcode https://build.fhir.org/ig/HL7/fhir-mCODE-ig/StructureDefinition-mcode-radiotherapy-course-summary.html"
* group[=].element[+].code = #Radiotherapy.setting
* group[=].element[=].display = "Setting (M (only if Intent is Curative OR Unknown))"
* group[=].element[=].target.code = #Procedure.extension:procedureCategoryR5
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Radiotherapy.beamQuality
* group[=].element[=].display = "Beam quality (M)"
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:modality.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use valueCodeableConcept. For now we can use the mcode extension"
* group[=].element[+].code = #Radiotherapy.other
* group[=].element[=].display = "Other; specify (O)"
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:modality.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use element valueCodeableConcept.text"
* group[=].element[+].code = #Radiotherapy.treatmentTechnique
* group[=].element[=].display = "Treatment technique (M)"
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:technique.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use valueCodeableConcept. For now we can use the mcode extension"
* group[=].element[+].code = #Radiotherapy.totalDoseGy
* group[=].element[=].display = "Total Dose (TD) Gy (M)"
* group[=].element[=].target.code = #Procedure.extension:doseToVolume
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use extension:totalDoseDelivered"
* group[=].element[+].code = #Radiotherapy.totalHighDose
* group[=].element[=].display = "Total High Dose (Gy) (R)"
* group[=].element[=].target.code = #Procedure.extension:totalHighDoseDelivered
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Radiotherapy.numberOfFractions
* group[=].element[=].display = "Number of fractions (M)"
* group[=].element[=].target.code = #Procedure.extension:doseToVolume
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use extension:fractionsDelivered"
* group[=].element[+].code = #Radiotherapy.adaptiveRt
* group[=].element[=].display = "Adaptive RT (O)"
* group[=].element[=].target.code = #Procedure.extension:adaptive
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use value."
* group[=].element[+].code = #Radiotherapy.igrt
* group[=].element[=].display = "IGRT  (image guide radiotherapy) (O)"
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:technique.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is present the extension with code 2000100046 'Image guided radiotherapy (IGRT)' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.reirradiation
* group[=].element[=].display = "Reirradiation (local or regional) (O)"
* group[=].element[=].target.code = #Procedure
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is present another procedure in the same site for the same condition it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.fieldOfReirradiation
* group[=].element[=].display = "Field of Re-irradiation (O)"
* group[=].element[=].target.code = #Procedure.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Present only in the second procedure with the same site for the same condition"
* group[=].element[+].code = #Radiotherapy.startDate
* group[=].element[=].display = "Start date (M)"
* group[=].element[=].target.code = #Procedure.performed[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use type Period and element start."
* group[=].element[+].code = #Radiotherapy.endDate
* group[=].element[=].display = "End  date (M)"
* group[=].element[=].target.code = #Procedure.performed[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use type Period and element end."
* group[=].element[+].code = #Radiotherapy.treatmentSitePrimaryOnly
* group[=].element[=].display = "Treatment site primary only (M (suggest to modify the label into Primary only))"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If bodySite = 1 and is the same of the Condition: Primary Cancer it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.treatmentSiteNeckOnly
* group[=].element[=].display = "Treatment site neck only (M (suggest to modify the label into Neck only))"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If bodySite = 1 and is 36770046 'Neck' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.treatmentSitePrimaryAndIpsilateralNeck
* group[=].element[=].display = "Treatment site primary and ipsilateral neck (M)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If bodySite > 1 and one is the same of the Condition: Primary Cancer and another is 36770046 'Neck' with Procedure.bosySite.extension:lateralityQualifier 4112106 'Ipsilateral' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.treatmentSitePrimaryAndBilateralNeck
* group[=].element[=].display = "Treatment site primary and bilateral neck (M)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If bodySite > 1 and one is the same of the Condition: Primary Cancer and another is 36770046 'Neck' with Procedure.bosySite.extension:lateralityQualifier 4197258 'Right and left' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.treatmentSiteDistantMetastasis
* group[=].element[=].display = "Treatment site distant metastasis (M)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 36769180 'Metastasis' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.otherTreatmentSite
* group[=].element[=].display = "Other Treatment Site (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSiteLung
* group[=].element[=].display = "Metastatic treatment site lung (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 36770283 'Metastasis to lung' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSiteMediastinum
* group[=].element[=].display = "Metastatic treatment site mediastinum (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 35225542 'Metastasis to mediastinum' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSiteBone
* group[=].element[=].display = "Metastatic treatment site bone (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 36769301 'Metastasis to bone' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSiteSoftTissue
* group[=].element[=].display = "Metastatic treatment site soft tissue (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 35225724 'Metastasis to soft tissues' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.metastaticTreatmentSiteLiver
* group[=].element[=].display = "Metastatic treatment site liver (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 36770544 'Metastasis to liver' it is 'true', else it is 'false'"
* group[=].element[+].code = #Radiotherapy.rtTreatmentCompletedAsPlanned
* group[=].element[=].display = "RT Treatment Completed as Planned? (M)"
* group[=].element[=].target.code = #Procedure.extension:terminationReason
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "For now we can use the mcode extension"
* group[=].element[+].code = #Radiotherapy.regionalDeepHyperthemia
* group[=].element[=].display = "Regional deep hyperthemia (M)"
* group[=].element[=].target.code = #Procedure.partOf
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Radiotherapy.treatmentResponse
* group[=].element[=].display = "Treatment response (R)"
* group[=].element[=].target.code = #Procedure.outcome
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
