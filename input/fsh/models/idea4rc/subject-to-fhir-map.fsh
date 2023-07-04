// -------------------------------------------------------------------------------					
//  Concept Model. File: 					subject-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: subject2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Subject2FHIR"					
* title = "Subject Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Subject Model to this guide Map"					
* purpose = "It shows how the Subject model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* targetUri = "http://hl7.org/fhir"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/patient-eu-i4rc"					
					
* group[=].element[+].code = #Subject.sex					
* group[=].element[=].display = "Sex"					
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "to be checked for the time being assumed to be the administrative gender"					
* group[=].element[+].code = #Subject.race					
* group[=].element[=].display = "Race"					
* group[=].element[=].target.code = #Patient.extension:race.value[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.countryOfResidence					
* group[=].element[=].display = "Country of Residence"					
* group[=].element[=].target.code = #Patient.address.country					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.smoking					
* group[=].element[=].display = "Smoking"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Subject.alcohol					
* group[=].element[=].display = "Alcohol"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Subject.comorbidity					
* group[=].element[=].display = "comorbidity"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Subject.ecogPsAtDiagnosis					
* group[=].element[=].display = "Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Subject.karnofsyIndexAtDiagnosis					
* group[=].element[=].display = "Karnofsy index at diagnosis"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-tobaccouse-eu-i4rc"					
					
* group[=].element[+].code = #Subject.smoking					
* group[=].element[=].display = "Smoking"					
* group[=].element[=].target.code = #Observation.component:smokingStatus.value[x]:valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.smokingType					
* group[=].element[=].display = "Smoking type"					
* group[=].element[=].target.code = #Observation.component:tobaccoProduct.value[x]:valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.cigSmokedPerDay					
* group[=].element[=].display = "Cigarettes/cigars smoked per day"					
* group[=].element[=].target.code = #Observation.component:numberPerDay.value[x]:valueQuantity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.yearsAsSmoker					
* group[=].element[=].display = "Number of years as a smoker"					
* group[=].element[=].target.code = #Observation.component:yearsAsSmokervalue[x]:valueQuantity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.alcohol					
* group[=].element[=].display = "Alcohol"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Subject.comorbidity					
* group[=].element[=].display = "comorbidity"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-alcoholuse-eu-i4rc"					
					
					
* group[=].element[+].code = #Subject.alcohol					
* group[=].element[=].display = "Alcohol"					
* group[=].element[=].target.code = #Observation.value[x]:valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity					
* group[=].element[=].display = "comorbidity"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-comorbidity-eu-i4rc"					
					
					
* group[=].element[+].code = #Subject.comorbidity					
* group[=].element[=].display = "comorbidity"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Subject.comorbidity.flag					
* group[=].element[=].display = "comorbidity Flag"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Determined by the presence or absence of specific conditions"					
* group[=].element[+].code = #Subject.comorbidity.myocardialInfarction					
* group[=].element[=].display = "Myocardial infarction"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.congestiveHeartFailure					
* group[=].element[=].display = "Congestive heart failure"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.peripheralVascularDisease					
* group[=].element[=].display = "Peripheral vascular disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.cerebrovascularAccidentExceptHemiplegia					
* group[=].element[=].display = "Cerebrovascular accident  (except hemiplegia)"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.dementia					
* group[=].element[=].display = "Dementia"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.chronicPulmonaryDisease					
* group[=].element[=].display = "Chronic pulmonary disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.connectiveTissueDisease					
* group[=].element[=].display = "Connective tissue disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.ulcer					
* group[=].element[=].display = "Ulcer"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.mildLiverDisease					
* group[=].element[=].display = "Mild liver disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.moderateToSevereLiverDisease					
* group[=].element[=].display = "Moderate to severe liver disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.diabetesWithoutComplications					
* group[=].element[=].display = "Diabetes (without complications)"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.diabetesWithEndOrganDamage					
* group[=].element[=].display = "Diabetes with end organ damage"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.hemiplegia					
* group[=].element[=].display = "Hemiplegia"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.moderateToSevereRenalDisease					
* group[=].element[=].display = "Moderate to severe renal disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.solidTumorNonMetastatic					
* group[=].element[=].display = "Solid tumor (non metastatic)"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.metastaticSolidTumor					
* group[=].element[=].display = "Metastatic solid tumor"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.leukemia					
* group[=].element[=].display = "Leukemia"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.lymphomaOrMultipleMyeloma					
* group[=].element[=].display = "Lymphoma, Multiple myeloma"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
* group[=].element[+].code = #Subject.comorbidity.aids					
* group[=].element[=].display = "AIDS"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence or not of this comorbidity is determined by the presence of such a kind of condition"					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-karnofsky-performance-statuseu-i4rc"					
					
* group[=].element[+].code = #Subject.karnofsyIndexAtDiagnosis					
* group[=].element[=].display = "Karnofsy index at diagnosis"					
* group[=].element[=].target.code = #Observation.valueInteger					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-ecog-performance-status-eu-i4rc"					
					
					
* group[=].element[+].code = #Subject.ecogPsAtDiagnosis					
* group[=].element[=].display = "Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis"					
* group[=].element[=].target.code = #Observation.valueInteger					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
//---END					
//---END					
//---END					
					
