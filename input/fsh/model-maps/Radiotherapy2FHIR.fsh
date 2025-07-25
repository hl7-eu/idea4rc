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
* group[=].element[+].code = #diagnosisReference
* group[=].element[=].display = "Diagnosis reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #episodeEventReference
* group[=].element[=].display = "Episode Event reference (M)"
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #radiotherapyHospital
* group[=].element[=].display = "Radiotherapy Hospital (M)"
* group[=].element[=].target.code = #Procedure.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "In case the actual Organization performing the procedure is captured. It could be a perfomer of type Organization; or a perfomer.organization if of type PractitionerRole"
* group[=].element[+].code = #radiotherapyHospital
* group[=].element[=].display = "Radiotherapy Hospital (M)"
* group[=].element[=].target.code = #Procedure.extension:sameHospital
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations. It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."
* group[=].element[+].code = #intent
* group[=].element[=].display = "Intent (M)"
* group[=].element[=].target.code = #Procedure.extension:procedureIntent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "from mcode https://build.fhir.org/ig/HL7/fhir-mCODE-ig/StructureDefinition-mcode-radiotherapy-course-summary.html"
* group[=].element[+].code = #setting
* group[=].element[=].display = "Setting (M (only if Intent is Curative OR Unknown))"
* group[=].element[=].target.code = #Procedure.extension:procedureCategoryR5
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #beamQuality
* group[=].element[=].display = "Beam quality (M)"
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:modality.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "For now we can use the mcode extension"
* group[=].element[+].code = #other
* group[=].element[=].display = "Other; specify (O)"
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:modality.valueCodeableConcept.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #treatmentTechnique
* group[=].element[=].display = "Treatment technique (M)"
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:technique.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "For now we can use the mcode extension"
* group[=].element[+].code = #totalDoseGy
* group[=].element[=].display = "Total Dose (TD) Gy (M)"
* group[=].element[=].target.code = #Procedure.extension:doseToVolume.extension:totalDoseDelivered
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #totalHighDose
* group[=].element[=].display = "Total High Dose (Gy) (R)"
* group[=].element[=].target.code = #Procedure.extension:totalHighDoseDelivered
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #numberOfFractions
* group[=].element[=].display = "Number of fractions (M)"
* group[=].element[=].target.code = #Procedure.extension:doseToVolume.extension:fractionsDelivered
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #adaptiveRt
* group[=].element[=].display = "Adaptive RT (O)"
* group[=].element[=].target.code = #Procedure.extension:adaptive.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #igrt
* group[=].element[=].display = "IGRT  (image guide radiotherapy) (O)"
* group[=].element[=].target.code = #Procedure.extension:modalityAndTechnique.extension:technique.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is present the extension with code 2000100046 'Image guided radiotherapy (IGRT)' it is 'true', else it is 'false'"
* group[=].element[+].code = #reirradiation
* group[=].element[=].display = "Reirradiation (local or regional) (O)"
* group[=].element[=].target.code = #Procedure
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is present another procedure in the same site for the same condition it is 'true', else it is 'false'"
* group[=].element[+].code = #fieldOfReirradiation
* group[=].element[=].display = "Field of Re-irradiation (O)"
* group[=].element[=].target.code = #Procedure.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Present only in the second procedure with the same site for the same condition "
* group[=].element[+].code = #startDate
* group[=].element[=].display = "Start date (M)"
* group[=].element[=].target.code = #Procedure.performedPeriod.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #endDate
* group[=].element[=].display = "End  date (M)"
* group[=].element[=].target.code = #Procedure.performedPeriod.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #treatmentSitePrimaryOnly
* group[=].element[=].display = "Treatment site primary only (M (suggest to modify the label into Primary only))"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If bodySite = 1 and is the same of the Condition: Primary Cancer it is 'true', else it is 'false'"
* group[=].element[+].code = #treatmentSiteNeckOnly
* group[=].element[=].display = "Treatment site neck only (M (suggest to modify the label into Neck only))"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If bodySite = 1 and is 36770046 'Neck' it is 'true', else it is 'false'"
* group[=].element[+].code = #treatmentSitePrimaryAndIpsilateralNeck
* group[=].element[=].display = "Treatment site primary and ipsilateral neck (M)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If bodySite > 1 and one is the same of the Condition: Primary Cancer and another is 36770046 'Neck' with Procedure.bosySite.extension:lateralityQualifier 4112106 'Ipsilateral' it is 'true', else it is 'false'"
* group[=].element[+].code = #treatmentSitePrimaryAndBilateralNeck
* group[=].element[=].display = "Treatment site primary and bilateral neck (M)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If bodySite > 1 and one is the same of the Condition: Primary Cancer and another is 36770046 'Neck' with Procedure.bosySite.extension:lateralityQualifier 4197258 'Right and left' it is 'true', else it is 'false'"
* group[=].element[+].code = #treatmentSiteDistantMetastasis
* group[=].element[=].display = "Treatment site distant metastasis (M)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 36769180 'Metastasis' it is 'true', else it is 'false'"
* group[=].element[+].code = #otherTreatmentSite
* group[=].element[=].display = "Other Treatment Site (O)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #metastaticTreatmentSiteLung
* group[=].element[=].display = "Metastatic treatment site lung (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 36770283 'Metastasis to lung' it is 'true', else it is 'false'"
* group[=].element[+].code = #metastaticTreatmentSiteMediastinum
* group[=].element[=].display = "Metastatic treatment site mediastinum (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 35225542 'Metastasis to mediastinum' it is 'true', else it is 'false'"
* group[=].element[+].code = #metastaticTreatmentSiteBone
* group[=].element[=].display = "Metastatic treatment site bone (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 36769301 'Metastasis to bone' it is 'true', else it is 'false'"
* group[=].element[+].code = #metastaticTreatmentSiteSoftTissue
* group[=].element[=].display = "Metastatic treatment site soft tissue (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 35225724 'Metastasis to soft tissues' it is 'true', else it is 'false'"
* group[=].element[+].code = #metastaticTreatmentSiteLiver
* group[=].element[=].display = "Metastatic treatment site liver (R)"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If is 36770544 'Metastasis to liver' it is 'true', else it is 'false'"
* group[=].element[+].code = #rtTreatmentCompletedAsPlanned
* group[=].element[=].display = "RT Treatment Completed as Planned? (M)"
* group[=].element[=].target.code = #Procedure.extension:terminationReason
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "For now we can use the mcode extension"
* group[=].element[+].code = #regionalDeepHyperthemia
* group[=].element[=].display = "Regional deep hyperthemia (M)"
* group[=].element[=].target.code = #Procedure.partOf
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #treatmentResponse
* group[=].element[=].display = "Treatment response (R)"
* group[=].element[=].target.code = #Procedure.outcome
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
