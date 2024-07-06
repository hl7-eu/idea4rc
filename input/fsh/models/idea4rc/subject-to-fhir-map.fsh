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
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/patient-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/patient-eu-i4rc"					
					
* group[=].element[+].code = #Subject.sex					
* group[=].element[=].display = "Gender"					
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "For the time being assumed to be the administrative gender"					
* group[=].element[+].code = #Subject.race					
* group[=].element[=].display = "Race"					
* group[=].element[=].target.code = #Patient.extension:race.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.birthYear					
* group[=].element[=].display = "Birth year"					
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "limited to the year"					
* group[=].element[+].code = #Subject.countryOfResidence					
* group[=].element[=].display = "Country of Residence"					
* group[=].element[=].target.code = #Patient.address.country					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
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
					
//---END					
//---END					
//---END					
//---END					
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
					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-comorbidity-eu-i4rc"					
					
* group[=].element[+].code = #Subject.comorbidity					
* group[=].element[=].display = "Comorbidity"					
* group[=].element[=].target.code = #Observation.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence of a comorbidity condition is determined by the presence of an comorbidConditionPresent extension for that condition.
The absence by the presence of a comorbidConditionAbsent extension for that condition.
If none of them are specified, that comorbidity is unknown or undetermined.
For examplification purposes only the comorbidConditionPresent extension is shown for the included items"					
* group[=].element[+].code = #Subject.comorbidity.myocardialInfarction					
* group[=].element[=].display = "Myocardial infarction"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.congestiveHeartFailure					
* group[=].element[=].display = "Congestive heart failure"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.peripheralVascularDisease					
* group[=].element[=].display = "Peripheral vascular disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.cerebrovascularAccidentExceptHemiplegia					
* group[=].element[=].display = "Cerebrovascular accident  (except hemiplegia)"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.dementia					
* group[=].element[=].display = "Dementia"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.chronicPulmonaryDisease					
* group[=].element[=].display = "Chronic pulmonary disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.connectiveTissueDisease					
* group[=].element[=].display = "Connective tissue disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.ulcer					
* group[=].element[=].display = "Ulcer"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.mildLiverDisease					
* group[=].element[=].display = "Mild liver disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.moderateToSevereLiverDisease					
* group[=].element[=].display = "Moderate to severe liver disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.diabetesWithoutComplications					
* group[=].element[=].display = "Diabetes (without complications)"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.diabetesWithEndOrganDamage					
* group[=].element[=].display = "Diabetes with end organ damage"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.hemiplegia					
* group[=].element[=].display = "Hemiplegia"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.moderateToSevereRenalDisease					
* group[=].element[=].display = "Moderate to severe renal disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.solidTumorNonMetastatic					
* group[=].element[=].display = "Solid tumor (non metastatic)"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.metastaticSolidTumor					
* group[=].element[=].display = "Metastatic solid tumor"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.leukemia					
* group[=].element[=].display = "Leukemia"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.lymphoma					
* group[=].element[=].display = "Lymphoma"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.multipleMyeloma					
* group[=].element[=].display = "Multiple myeloma"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.comorbidity.aids					
* group[=].element[=].display = "AIDS"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020					
* group[=].element[=].display = "No Genetic syndrome WHO 2020"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The presence of a comorbidity condition is determined by the presence of an comorbidConditionPresent extension for that condition.
The absence by the presence of a comorbidConditionAbsent extension for that condition.
If none of them are specified, that comorbidity is unknown or undetermined.
For examplification purposes only the comorbidConditionPresent extension is shown for the included items"					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.olliersDisease					
* group[=].element[=].display = "Olliers disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.maffuciSyndrome					
* group[=].element[=].display = "Maffuci syndrome"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.liFraumeniSyndrome					
* group[=].element[=].display = "Li-Fraumeni syndrome"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.mcCuneAlbrightSyndrome					
* group[=].element[=].display = "McCune-Albright syndrome"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.multipleOsteochondromas					
* group[=].element[=].display = "Multiple osteochondromas"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.neurofibromatosisType1					
* group[=].element[=].display = "Neurofibromatosis type 1"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.rothmundThomsonSyndrome					
* group[=].element[=].display = "Rothmund-Thomson syndrome"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.wernerSyndrome					
* group[=].element[=].display = "Werner syndrome"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.retinoblastoma					
* group[=].element[=].display = "Retinoblastoma"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.pagetDisease					
* group[=].element[=].display = "Paget disease"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.otherSyndromes					
* group[=].element[=].display = "Other Genetic syndrome WHO 2020"					
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
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
					
* group[=].element[+].code = #Subject.karnofsyIndexLabel					
* group[=].element[=].display = "Karnofsy index label"					
* group[=].element[=].target.code = #Observation.interpretation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-ecog-performance-status-eu-i4rc"					
					
* group[=].element[+].code = #Subject.ecogPsAtDiagnosis					
* group[=].element[=].display = "Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "where obseravtion.code =  $loinc#89247-1 ECOG Performance Status score"					
* group[=].element[+].code = #Subject.ecogPsLabel					
* group[=].element[=].display = "ECOG PS label"					
* group[=].element[=].target.code = #Observation.interpretation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-cci-eu-i4rc"					
					
* group[=].element[+].code = #Subject.charlsonComorbidityIndex					
* group[=].element[=].display = "Charlson Comorbidity index"					
* group[=].element[=].target.code = #Observation.valueInteger					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "http://hl7.org/fhir/StructureDefinition/bmi"					
					
* group[=].element[+].code = #Subject.bMI					
* group[=].element[=].display = "Height/weight (BMI)
"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "ObservationOccurrenceOtherCancer"					
					
* group[=].element[+].code = #Subject.occurrenceOfOtherCancer					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"					
* group[=].target = "ObservationCancerTreatment"					
					
* group[=].element[+].code = #Subject.previousCancerTreatment					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
//---END					
//---END					
//---END					
