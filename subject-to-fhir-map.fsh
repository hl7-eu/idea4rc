// -------------------------------------------------------------------------------					
//  Concept Model. File: 					subject-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: subject2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = ##34#http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris##34#					
* name = ##34#Subject2FHIR##34#					
* title = ##34#Subject Model to this guide Map##34#					
* status = #draft					
* experimental = true					
* description = ##34#Subject Model to this guide Map##34#					
* purpose = ##34#It shows how the Subject model is mapped into this guide##34#					
* sourceUri = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject##34#					
* targetUri = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/patient-eu-i4rc##34#					
* group[+].source = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject##34#					
* group[=].target = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/patient-eu-i4rc##34#				
				
* group[=].element[+].code = #Subject.sex					
* group[=].element[=].display = ##34#Gender##34#					
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = ##34#For the time being assumed to be the administrative gender##34#					
* group[=].element[+].code = #Subject.race					
* group[=].element[=].display = ##34#Race##34#					
* group[=].element[=].target.code = #Patient.extension:race.value[x]					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.countryOfResidence					
* group[=].element[=].display = ##34#Country of Residence##34#					
#REF!					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.smoking					
* group[=].element[=].display = ##34#Smoking##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.smokingType					
* group[=].element[=].display = ##34#Smoking type##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.cigSmokedPerDay					
* group[=].element[=].display = ##34#Cigarettes/cigars smoked per day##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.yearsAsSmoker					
* group[=].element[=].display = ##34#Number of years as a smoker##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.alcohol					
* group[=].element[=].display = ##34#Alcohol##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.bMI					
"* group[=].element[=].display = ##34#Height/weight (BMI)
##34#"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.charlsonComorbidityIndex					
* group[=].element[=].display = ##34#Charlson Comorbidity index##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.comorbidity					
* group[=].element[=].display = ##34#Comorbidity##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.ecogPsAtDiagnosis					
* group[=].element[=].display = ##34#Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.karnofsyIndexAtDiagnosis					
* group[=].element[=].display = ##34#Karnofsy index at diagnosis##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020					
* group[=].element[=].display = ##34#No Genetic syndrome WHO 2020 ##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched				
				
* group[=].element[+].code = #Subject.occurrenceOfOtherCancer					
* group[=].element[=].display = ##34#Occurrence of other cancer##34#					
* group[=].element[=].target.code = #Patient.					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#TO BE MAPPED##34#					
* group[=].element[+].code = #Subject.previousCancerTreatment					
* group[=].element[=].display = ##34#Previous cancer treatment##34#					
* group[=].element[=].target.code = #Patient.					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#TO BE MAPPED##34#					
* group[=].element[+].code = #Subject.lastContact					
* group[=].element[=].display = ##34#Last Contact##34#					
* group[=].element[=].target.code = #Patient.					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#TO BE MAPPED##34#					
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
			
				
* group[+].source = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject##34#					
* group[=].target = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-tobaccouse-eu-i4rc##34#				
				
* group[=].element[+].code = #Subject.smoking					
* group[=].element[=].display = ##34#Smoking##34#					
* group[=].element[=].target.code = #Observation.component:smokingStatus.value[x]:valueCodeableConcept					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.smokingType					
* group[=].element[=].display = ##34#Smoking type##34#					
* group[=].element[=].target.code = #Observation.component:tobaccoProduct.value[x]:valueCodeableConcept					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.cigSmokedPerDay					
* group[=].element[=].display = ##34#Cigarettes/cigars smoked per day##34#					
* group[=].element[=].target.code = #Observation.component:numberPerDay.value[x]:valueQuantity					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.yearsAsSmoker					
* group[=].element[=].display = ##34#Number of years as a smoker##34#					
* group[=].element[=].target.code = #Observation.component:yearsAsSmokervalue[x]:valueQuantity					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
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
//---END				
			
				
* group[+].source = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject##34#					
* group[=].target = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-alcoholuse-eu-i4rc##34#				
			
				
* group[=].element[+].code = #Subject.alcohol					
* group[=].element[=].display = ##34#Alcohol##34#					
* group[=].element[=].target.code = #Observation.value[x]:valueCodeableConcept					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
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
			
				
* group[+].source = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject##34#					
* group[=].target = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-comorbidity-eu-i4rc##34#				
			
				
* group[=].element[+].code = #Subject.comorbidity					
* group[=].element[=].display = ##34#Comorbidity##34#					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
"* group[=].element[=].target.comment = ##34#The presence of a comorbidity condition is determined by the presence of an comorbidConditionPresent extension for that condition.
The absence by the presence of a comorbidConditionAbsent extension for that condition.
If none of them are specified, that comorbidity is unknown or undetermined.
For examplification purposes only the comorbidConditionPresent extension is shown for the included items##34#"					
* group[=].element[+].code = #Subject.comorbidity.myocardialInfarction					
* group[=].element[=].display = ##34#Myocardial infarction##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto				
				
* group[=].element[+].code = #Subject.comorbidity.congestiveHeartFailure					
* group[=].element[=].display = ##34#Congestive heart failure##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.peripheralVascularDisease					
* group[=].element[=].display = ##34#Peripheral vascular disease##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
#REF!					
#REF!				
				
* group[=].element[+].code = #Subject.comorbidity.cerebrovascularAccidentExceptHemiplegia					
* group[=].element[=].display = ##34#Cerebrovascular accident  (except hemiplegia)##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.dementia					
* group[=].element[=].display = ##34#Dementia##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.chronicPulmonaryDisease					
* group[=].element[=].display = ##34#Chronic pulmonary disease##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.connectiveTissueDisease					
* group[=].element[=].display = ##34#Connective tissue disease##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.ulcer					
* group[=].element[=].display = ##34#Ulcer##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.mildLiverDisease					
* group[=].element[=].display = ##34#Mild liver disease##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.moderateToSevereLiverDisease					
* group[=].element[=].display = ##34#Moderate to severe liver disease##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.diabetesWithoutComplications					
* group[=].element[=].display = ##34#Diabetes (without complications)##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.diabetesWithEndOrganDamage					
* group[=].element[=].display = ##34#Diabetes with end organ damage##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.hemiplegia					
* group[=].element[=].display = ##34#Hemiplegia##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.moderateToSevereRenalDisease					
* group[=].element[=].display = ##34#Moderate to severe renal disease##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.solidTumorNonMetastatic					
* group[=].element[=].display = ##34#Solid tumor (non metastatic)##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.metastaticSolidTumor					
* group[=].element[=].display = ##34#Metastatic solid tumor##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.leukemia					
* group[=].element[=].display = ##34#Leukemia##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.lymphoma					
* group[=].element[=].display = ##34#Lymphoma##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.multipleMyeloma					
* group[=].element[=].display = ##34#Multiple myeloma##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.comorbidity.aids					
* group[=].element[=].display = ##34#AIDS##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
				
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020					
* group[=].element[=].display = ##34#No Genetic syndrome WHO 2020 ##34#					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent				
			
				
* group[+].source = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject##34#					
* group[=].target = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-karnofsky-performance-statuseu-i4rc##34#				
				
* group[=].element[+].code = #Subject.karnofsyIndexAtDiagnosis					
* group[=].element[=].display = ##34#Karnofsy index at diagnosis##34#					
* group[=].element[=].target.code = #Observation.valueInteger					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equal				
				
//---END				
			
			
			
				
* group[+].source = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject##34#					
* group[=].target = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-ecog-performance-status-eu-i4rc##34#				
			
				
* group[=].element[+].code = #Subject.ecogPsAtDiagnosis					
* group[=].element[=].display = ##34#Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis##34#					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equal				
				
//---END					
//---END					
//---END				
				
* group[+].source = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject##34#					
* group[=].target = ##34#http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-cci-eu-i4rc##34#				
			
				
* group[=].element[+].code = #Subject.charlsonComorbidityIndex					
* group[=].element[=].display = ##34#Charlson Comorbidity index##34#					
* group[=].element[=].target.code = #Observation.valueInteger					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equal					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END				
				
