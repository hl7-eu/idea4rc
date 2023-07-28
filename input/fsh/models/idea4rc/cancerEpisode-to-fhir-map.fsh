// -------------------------------------------------------------------------------					
//  Concept Model. File: 					cancerEpisode-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: cancerEpisode2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "CancerEpisode2FHIR"					
* title = "Cancer Episode Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Cancer Episode Model to this guide Map"					
* purpose = "It shows how the Cancer Episode model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #CancerEpisode.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Condition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.dateOfDiagnosis					
* group[=].element[=].display = "Date of diagnosis (biopsy or surgical piece)"					
* group[=].element[=].target.code = #Condition.extension:assertedDate.valueDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #CancerEpisode.biopsyDoneBy					
* group[=].element[=].display = "Biopsy done by"					
* group[=].element[=].target.code = #Condition.evidence:diagnosisDetails.detail.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "detail  id ofType Observation and conformsTo http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Observation-diagnosis-eu-i4rc"					
* group[=].element[+].code = #CancerEpisode.ageAtDiagnosis					
* group[=].element[=].display = "Age at diagnosis"					
* group[=].element[=].target.code = #Condition.onsetAge					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "to be checked if an onSetdatTime or period is needed"					
* group[=].element[+].code = #CancerEpisode.grading					
* group[=].element[=].display = "Grading"					
* group[=].element[=].target.code = #Condition.stage.summary					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #CancerEpisode.histologyGroup					
* group[=].element[=].display = "Histology (WHO 2017) group"					
* group[=].element[=].target.code = #Condition.extension:histologyMorphologyBehavior.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked. How to manage this with the other subgroups. To be seen if a multiconding approach is sufficient"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup					
* group[=].element[=].display = "Histology Subgroups"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.histologySquamous					
* group[=].element[=].display = "Histology Squamous"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.histologyAdenocarcinoma					
* group[=].element[=].display = "Histology Adenocarcinoma"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.histologyNeuroendocrine					
* group[=].element[=].display = "Histology Neuroendocrine"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.histologyOdontogenicCarcinoma					
* group[=].element[=].display = "Histology Odontogenic Carcinoma"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.histologySNUC					
* group[=].element[=].display = "Histology Sinonasal undifferentiated carcinoma"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.nasalCavityAndParanasalSinusesSubsite					
* group[=].element[=].display = "Nasal cavity and paranasal sinuses subsite"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.nasopharynxSubsite					
* group[=].element[=].display = "Nasopharynx  subsite"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.hypopharynxSubsite					
* group[=].element[=].display = "Hypopharynx subsite"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.oropharynxSubsite					
* group[=].element[=].display = "Oropharynx subsite"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.larynxSubsite					
* group[=].element[=].display = "Larynx subsite"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.oralCavitySubsite					
* group[=].element[=].display = "Oral cavity subsite"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.histologySubGroup.lipSubsite					
* group[=].element[=].display = "Lip subsite"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked, linked to the code since the concpet includes both morhphology and topography"					
* group[=].element[+].code = #CancerEpisode.plasmaticEbvDnaAtBaseline					
* group[=].element[=].display = "Plasmatic EBV DNA at baseline"					
* group[=].element[=].target.code = #Condition.evidence:plasmaticEbvDnaAtBaseline.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where Observation.code is 43730-1 EBV DNA NAA+probe Qn.
NOTE : code to be changed !"					
* group[=].element[+].code = #CancerEpisode.hpvStatus					
* group[=].element[=].display = "HPV status"					
* group[=].element[=].target.code = #Condition.evidence:hpvStatus.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where Observation.code is 77377-0 HPV 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA (Specimen) [Interp]
NOTE : code to be checked !"					
* group[=].element[+].code = #CancerEpisode.crpCReactiveProteinTested					
* group[=].element[=].display = "CRP - C reactive protein tested"					
* group[=].element[=].target.code = #Condition.evidence:crpCReactiveProteinTested.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Where Observation.code is 11039-5 C reactive protein [Presence] in Serum or Plasma
NOTE : code to be checked !"					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Observation-diagnosis-eu-i4rc"					
					
					
* group[=].element[+].code = #CancerEpisode.patient					
* group[=].element[=].display = "Patient"					
* group[=].element[=].target.code = #Condition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.dateOfDiagnosis					
* group[=].element[=].display = "Date of diagnosis (biopsy or surgical piece)"					
* group[=].element[=].target.code = #Condition.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #CancerEpisode.biopsyDoneBy					
* group[=].element[=].display = "Biopsy done by"					
* group[=].element[=].target.code = #Condition.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
//---END					
//---END					
//---END					
//---END					
