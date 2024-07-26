//===================================================				
//  Logical Model				i4rc-subject.fsh
//===================================================				
Logical: SubjectI4rc				
Id: Subject				
Title: "Subject of care"				
Description:  """Subject of care 
Maturity Level: 0 Draft"""				
* sex 1..1 CodeableConcept "Gender" """Describes biological sex as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"""				
* race 1..1 CodeableConcept "Race" """Describes race as recorded in  the hospital record, the one declared by the patient,, otherwise, the onerecognized by the observer"""				
* birthYear 0..1 integer "Birth year" """Year of birth of the patient."""				
* countryOfResidence 1..1 CodeableConcept "Country of Residence" """Country of residence at the time of diagnosis"""				
* smoking 1..1 CodeableConcept "Smoking" """Describes tobacco smoker habits within the options proposed"""				
* cigarettesPackYearsSmokedDuringLife 0..1 integer "Cigarettes pack years smoked during life" """The amount of cigarette pack smoked during life"""				
* alcohol 1..1 CodeableConcept "Alcohol" """Describes alcohol habits within the options proposed"""				
* bMI 0..1 Quantity "Height/weight (BMI)" """Body Mass Index information if weight and height are included. it is calculated as BMI = kg/m2 where kg is a person's weight in kilograms and m2 is their height in metres squared."""				
* charlsonComorbidityIndex 0..1 integer "Charlson Comorbidity index" """Provides the Charlson Comorbidity index for the patient"""				
* comorbidity 1..1 BackboneElement "Comorbidity" """Describes whether the patient was diagnosed before treatment of at least one of the comorbidities listed  next (or not) relevant for head and neck cancer."""				
* comorbidity.myocardialInfarction 0..1 boolean "Myocardial infarction" """Describes comorbidities reported or assesed before treatment. More than one choice is allowed. Please do not include the current cancer in this calculation, only the previous cancer."""				
* comorbidity.congestiveHeartFailure 0..1 boolean "Congestive heart failure" """Previous cancer comorbidity related to Congestive heart failure"""				
* comorbidity.peripheralVascularDisease 0..1 boolean "Peripheral vascular disease" """Previous cancer comorbidity related to Peripheral vascular disease"""				
* comorbidity.cerebrovascularAccidentExceptHemiplegia 0..1 boolean "Cerebrovascular accident  (except hemiplegia)" """Previous cancer comorbidity related to Cerebrovascular accident  (except hemiplegia)"""				
* comorbidity.dementia 0..1 boolean "Dementia" """Previous cancer comorbidity related to Dementia"""				
* comorbidity.chronicPulmonaryDisease 0..1 boolean "Chronic pulmonary disease" """Previous cancer comorbidity related to Chronic pulmonary disease"""				
* comorbidity.connectiveTissueDisease 0..1 boolean "Connective tissue disease" """Previous cancer comorbidity related to Connective tissue disease"""				
* comorbidity.ulcer 0..1 boolean "Ulcer" """Previous cancer comorbidity related to Ulcer"""				
* comorbidity.mildLiverDisease 0..1 boolean "Mild liver disease" """Previous cancer comorbidity related to Mild liver disease"""				
* comorbidity.moderateToSevereLiverDisease 0..1 boolean "Moderate to severe liver disease" """Previous cancer comorbidity related to Moderate to severe liver disease"""				
* comorbidity.diabetesWithoutComplications 0..1 boolean "Diabetes (without complications)" """Previous cancer comorbidity related to Diabetes (without complications)"""				
* comorbidity.diabetesWithEndOrganDamage 0..1 boolean "Diabetes with end organ damage" """Previous cancer comorbidity related to Diabetes with end organ damage"""				
* comorbidity.hemiplegia 0..1 boolean "Hemiplegia" """Previous cancer comorbidity related to Hemiplegia"""				
* comorbidity.moderateToSevereRenalDisease 0..1 boolean "Moderate to severe renal disease" """Previous cancer comorbidity related to Moderate to severe renal disease"""				
* comorbidity.solidTumorNonMetastatic 0..1 boolean "Solid tumor (non metastatic)" """Previous cancer comorbidity related to Solid tumor (non metastatic)"""				
* comorbidity.metastaticSolidTumor 0..1 boolean "Metastatic solid tumor" """Previous cancer comorbidity related to Metastatic solid tumor"""				
* comorbidity.leukemia 0..1 boolean "Leukemia" """Previous cancer comorbidity related to Leukemia"""				
* comorbidity.lymphoma 0..1 boolean "Lymphoma" """Previous cancer comorbidity related to Lymphoma"""				
* comorbidity.multipleMyeloma 0..1 boolean "Multiple myeloma" """Previous cancer comorbidity related to Multiple myeloma"""				
* comorbidity.aids 0..1 boolean "AIDS" """Previous cancer comorbidity related to AIDS"""				
* ecogPsAtDiagnosis 0..1 integer "Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis" """Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis"""				
* ecogPsLabel 0..1 CodeableConcept "ECOG PS label" """Eastern Cooperative Oncology Group performance status (ECOG PS)  label"""				
* karnofsyIndexAtDiagnosis 0..1 integer "Karnofsy index at diagnosis" """Karnofsy index at diagnosis"""				
* karnofsyIndexLabel 0..1 CodeableConcept "Karnofsy index label" """Karnofsy index at diagnosis"""				
* noGeneticSyndromeWho2020 1..1 BackboneElement "No Genetic syndrome WHO 2020" """Describes whether the patient was diagnosed before treatment of at least one of the diseases, syndromes listed  next (or not) relevant for sarcoma."""				
* noGeneticSyndromeWho2020.olliersDisease 1..1 boolean "Olliers disease" """Olliers disease"""				
* noGeneticSyndromeWho2020.maffuciSyndrome 1..1 boolean "Maffuci syndrome" """Maffuci syndrome"""				
* noGeneticSyndromeWho2020.liFraumeniSyndrome 1..1 boolean "Li-Fraumeni syndrome" """Li-Fraumeni syndrome"""				
* noGeneticSyndromeWho2020.mcCuneAlbrightSyndrome 1..1 boolean "McCune-Albright syndrome" """McCune-Albright syndrome"""				
* noGeneticSyndromeWho2020.multipleOsteochondromas 1..1 boolean "Multiple osteochondromas" """Multiple osteochondromas"""				
* noGeneticSyndromeWho2020.neurofibromatosisType1 1..1 boolean "Neurofibromatosis type 1" """Neurofibromatosis type 2"""				
* noGeneticSyndromeWho2020.rothmundThomsonSyndrome 1..1 boolean "Rothmund-Thomson syndrome" """Rothmund-Thomson syndrome"""				
* noGeneticSyndromeWho2020.wernerSyndrome 1..1 boolean "Werner syndrome" """Werner syndrome"""				
* noGeneticSyndromeWho2020.retinoblastoma 1..1 boolean "Retinoblastoma" """Retinoblastoma"""				
* noGeneticSyndromeWho2020.pagetDisease 1..1 boolean "Paget disease" """Paget disease"""				
* noGeneticSyndromeWho2020.otherSyndromes 1..1 boolean "Other Genetic syndrome WHO 2020" """Other Genetic syndrome WHO 2020"""				
* occurrenceOfOtherCancer 1..1 CodeableConcept "Occurrence of other cancer" """Occurrence of other cancer"""				
* previousCancerTreatment 1..1 CodeableConcept "Previous cancer treatment" """Previous cancer treatment"""				
//--- END				
//--- END				
//--- END							
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
* sex ^comment = """Male; Female; Unknown.
Male - 8507
Female - 8532
Unknown - 4129922"""				
* race ^comment = """Unknown; White; Black; Asians/Pacific Islanders; American Indian/Alaska Native
White - 8527
Black - 8516
Asian/Pacific Islanders - 8515
American Indian/Alaska Native - 8657
Unknown - 4129922"""				
				
* countryOfResidence ^comment = """Value from the code list of countries
Son in the hierarchy of countries"""				
* smoking ^comment = """Current tobacco smoker; Former smoker (at least for 12 months); Never smoker; Unknown
Current smoker - 36309332
Former smoker - 45883458
Never smoker - 45879404
"""				
				
* alcohol ^comment = """Current; Former (at least for 12 months); Never; History of alcohol dependence; Unknown
Current drinker - 4074035
Ex-drinker - 4220362
Lifetime non-drinker of alcohol - 37204556
Ex-problem drinker - 4117706
"""				
				
				
* comorbidity ^comment = """Yes; No; Unknown
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
* ecogPsAtDiagnosis ^comment = """Ecog grades 0-5"""				
* ecogPsLabel ^comment = """Ecog grades 0-5
        
ECOG performance status grade 0 - 4175026
ECOG performance status grade 1 - 4173614
ECOG performance status grade 2 - 4172043
ECOG performance status grade 3 - 4174241
ECOG performance status grade 4 - 4174251
ECOG performance status grade 5 - 4173456"""				
* karnofsyIndexAtDiagnosis ^comment = """KPS Scale"""				
* karnofsyIndexLabel ^comment = """KPS Scale
SONS Functional Neurologic Status - Karnofsky Performance Scale (KPS) - 35917688 """				
				
				
				
				
				
				
				
				
				
				
				
				
* occurrenceOfOtherCancer ^comment = """Children (and subchildren) of Neoplasm and/or hamartoma - 4266186"""				
* previousCancerTreatment ^comment = """Chemotherapy - 4273629
Radiation oncology- 4170755
Surgery - 4121697 
Comprehensive medication therapy review - 42535584
Immunological therapy - 4295112"""				
//--- END				
//--- END				
//--- END				
		
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
				
* sex insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* race insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* birthYear insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* countryOfResidence insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* smoking insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* cigarettesPackYearsSmokedDuringLife insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* alcohol insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
				
				
* comorbidity insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.myocardialInfarction insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.congestiveHeartFailure insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.peripheralVascularDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.cerebrovascularAccidentExceptHemiplegia insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.dementia insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.chronicPulmonaryDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.connectiveTissueDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.ulcer insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.mildLiverDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.moderateToSevereLiverDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.diabetesWithoutComplications insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.diabetesWithEndOrganDamage insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.hemiplegia insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.moderateToSevereRenalDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.solidTumorNonMetastatic insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.metastaticSolidTumor insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.leukemia insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.lymphoma insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.multipleMyeloma insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* comorbidity.aids insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* ecogPsAtDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* ecogPsLabel insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* karnofsyIndexAtDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* karnofsyIndexLabel insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
			
				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
				
* sex insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
				
* birthYear insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* countryOfResidence insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
				
				
				
* bMI insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* charlsonComorbidityIndex insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
* noGeneticSyndromeWho2020 insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.olliersDisease insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.maffuciSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.liFraumeniSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.mcCuneAlbrightSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.multipleOsteochondromas insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.neurofibromatosisType1 insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.rothmundThomsonSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.wernerSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.retinoblastoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.pagetDisease insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* noGeneticSyndromeWho2020.otherSyndromes insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* occurrenceOfOtherCancer insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* previousCancerTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
//--- END				
//--- END				
//--- END				
//--- END				
			
