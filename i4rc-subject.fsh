//===================================================				
//  Logical Model				i4rc-subject.fsh
//===================================================				
Logical: SubjectI4rc				
Id: Subject				
Title: ##34#Subject of care##34#				
"Description:  ##334#Subject of care 
Maturity Level: 0 Draft##334#"				
"* sex 1..1 CodeableConcept ##34#Gender##34# ##334#Describes biological sex as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded##334#"				
"* race 1..1 CodeableConcept ##34#Race##34# ##334#Describes race as recorded in  the hospital record, the one declared by the patient,, otherwise, the onerecognized by the observer##334#"				
* countryOfResidence 1..1 CodeableConcept ##34#Country of Residence##34# ##334#Country of residence at the time of diagnosis##334#				
* smoking 1..1 CodeableConcept ##34#Smoking##34# ##334#Describes tobacco smoker habits within the options proposed##334#				
* smokingType 0..1 CodeableConcept ##34#Smoking type##34# ##334#Describes type of tobacco##334#				
"* cigSmokedPerDay 0..1 integer ##34#Cigarettes/cigars smoked per day##34# ##334#Number of cigarettes or cigars smoked in one day. Together with the information of number of years as a smoker, these information will allow to automatically calculate the pack year.##334#"				
* yearsAsSmoker 0..1 integer ##34#Number of years as a smoker##34# ##334#Number of years the person has smoked##334#				
* alcohol 1..1 CodeableConcept ##34#Alcohol##34# ##334#Describes alcohol habits within the options proposed##334#				
"* bMI 0..1 Quantity ##34#Height/weight (BMI)
##34# ##334#Provides the BMI for the patient##334#"				
* charlsonComorbidityIndex 0..1 integer ##34#Charlson Comorbidity index##34# ##334#Provides the Charlson Comorbidity index for the patient##334#				
* comorbidity 1..1 BackboneElement ##34#Comorbidity##34# ##334#Describes whether the patient was diagnosed before treatment of at least one of the comorbidities listed  next or not##334#				
"* comorbidity.myocardialInfarction 0..1 boolean ##34#Myocardial infarction##34# ##334#Describes comorbidities reported or assesed before treatment. More than one choice is allowed. Please do not include the current cancer in this calculation, only the previous cancer.##334#"				
* comorbidity.congestiveHeartFailure 0..1 boolean ##34#Congestive heart failure##34# ##334#Previous cancer comorbidity related to Congestive heart failure##334#				
* comorbidity.peripheralVascularDisease 0..1 boolean ##34#Peripheral vascular disease##34# ##334#Previous cancer comorbidity related to Peripheral vascular disease##334#				
* comorbidity.cerebrovascularAccidentExceptHemiplegia 0..1 boolean ##34#Cerebrovascular accident  (except hemiplegia)##34# ##334#Previous cancer comorbidity related to Cerebrovascular accident  (except hemiplegia)##334#				
* comorbidity.dementia 0..1 boolean ##34#Dementia##34# ##334#Previous cancer comorbidity related to Dementia##334#				
* comorbidity.chronicPulmonaryDisease 0..1 boolean ##34#Chronic pulmonary disease##34# ##334#Previous cancer comorbidity related to Chronic pulmonary disease##334#				
* comorbidity.connectiveTissueDisease 0..1 boolean ##34#Connective tissue disease##34# ##334#Previous cancer comorbidity related to Connective tissue disease##334#				
* comorbidity.ulcer 0..1 boolean ##34#Ulcer##34# ##334#Previous cancer comorbidity related to Ulcer##334#				
* comorbidity.mildLiverDisease 0..1 boolean ##34#Mild liver disease##34# ##334#Previous cancer comorbidity related to Mild liver disease##334#				
* comorbidity.moderateToSevereLiverDisease 0..1 boolean ##34#Moderate to severe liver disease##34# ##334#Previous cancer comorbidity related to Moderate to severe liver disease##334#				
* comorbidity.diabetesWithoutComplications 0..1 boolean ##34#Diabetes (without complications)##34# ##334#Previous cancer comorbidity related to Diabetes (without complications)##334#				
* comorbidity.diabetesWithEndOrganDamage 0..1 boolean ##34#Diabetes with end organ damage##34# ##334#Previous cancer comorbidity related to Diabetes with end organ damage##334#				
* comorbidity.hemiplegia 0..1 boolean ##34#Hemiplegia##34# ##334#Previous cancer comorbidity related to Hemiplegia##334#				
* comorbidity.moderateToSevereRenalDisease 0..1 boolean ##34#Moderate to severe renal disease##34# ##334#Previous cancer comorbidity related to Moderate to severe renal disease##334#				
* comorbidity.solidTumorNonMetastatic 0..1 boolean ##34#Solid tumor (non metastatic)##34# ##334#Previous cancer comorbidity related to Solid tumor (non metastatic)##334#				
* comorbidity.metastaticSolidTumor 0..1 boolean ##34#Metastatic solid tumor##34# ##334#Previous cancer comorbidity related to Metastatic solid tumor##334#				
* comorbidity.leukemia 0..1 boolean ##34#Leukemia##34# ##334#Previous cancer comorbidity related to Leukemia##334#				
* comorbidity.lymphoma 0..1 boolean ##34#Lymphoma##34# ##334#Previous cancer comorbidity related to Lymphoma##334#				
* comorbidity.multipleMyeloma 0..1 boolean ##34#Multiple myeloma##34# ##334#Previous cancer comorbidity related to Multiple myeloma##334#				
* comorbidity.aids 0..1 boolean ##34#AIDS##34# ##334#Previous cancer comorbidity related to AIDS##334#				
* ecogPsAtDiagnosis 0..1 CodeableConcept ##34#Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis##34# ##334#Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis##334#				
* karnofsyIndexAtDiagnosis 0..1 CodeableConcept ##34#Karnofsy index at diagnosis##34# ##334#Karnofsy index at diagnosis##334#				
* noGeneticSyndromeWho2020 1..1 BackboneElement ##34#No Genetic syndrome WHO 2020 ##34# ##334#No Genetic syndrome WHO 2020 ##334#				
* olliersDisease 1..1 boolean ##34#Olliers disease##34# ##334#Olliers disease##334#				
* maffuciSyndrome 1..1 boolean ##34#Maffuci syndrome##34# ##334#Maffuci syndrome##334#				
* liFraumeniSyndrome 1..1 boolean ##34#Li-Fraumeni syndrome##34# ##334#Li-Fraumeni syndrome##334#				
* mcCuneAlbrightSyndrome 1..1 boolean ##34#McCune-Albright syndrome##34# ##334#McCune-Albright syndrome##334#				
* multipleOsteochondromas 1..1 boolean ##34#Multiple osteochondromas##34# ##334#Multiple osteochondromas##334#				
* neurofibromatosisType1 1..1 boolean ##34#Neurofibromatosis type 1##34# ##334#Neurofibromatosis type 2##334#				
* rothmundThomsonSyndrome 1..1 boolean ##34#Rothmund-Thomson syndrome##34# ##334#Rothmund-Thomson syndrome##334#				
* wernerSyndrome 1..1 boolean ##34#Werner syndrome##34# ##334#Werner syndrome##334#				
* retinoblastoma 1..1 boolean ##34#Retinoblastoma##34# ##334#Retinoblastoma##334#				
* pagetDisease 1..1 boolean ##34#Paget disease##34# ##334#Paget disease##334#				
* otherGeneticSyndromeWho2020 1..1 boolean ##34#Other Genetic syndrome WHO 2020 ##34# ##334#Other Genetic syndrome WHO 2020 ##334#				
* occurrenceOfOtherCancer 1..1 boolean ##34#Occurrence of other cancer##34# ##334#Occurrence of other cancer##334#				
* previousCancerTreatment 1..1 CodeableConcept ##34#Previous cancer treatment##34# ##334#Previous cancer treatment##334#				
"* lastContact 1..1 dateTime ##34#Last Contact##34# ##334#Date of the last contact with the patient, of any kind.##334#"				
//--- END				
//--- END				
//--- END				
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
"* sex ^comment = ##334#Male; Female; Unknown.
Male - 8507
Female - 8532
Unknown - 4129922##334#"				
"* race ^comment = ##334#Unknown; White; Black; Asians/Pacific Islanders; American Indian/Alaska Native
White - 8527
Black - 8516
Asian/Pacific Islanders - 8515
American Indian/Alaska Native - 8657
Unknown - 4129922##334#"				
"* countryOfResidence ^comment = ##334#Value from the code list of countries
Son in the hierarchy of countries##334#"				
"* smoking ^comment = ##334#Current tobacco smoker; Former smoker (at least for 12 months); Never smoker; Unknown
Current smoker - 36309332
Former smoker - 45883458
Never smoker - 45879404
##334#"				
"* smokingType ^comment = ##334#Cigarettes; Cigar; Unknown
Cigarettes - 36716475
Cigar -  36716476
Unknown - 4129922##334#"				
				
				
"* alcohol ^comment = ##334#Current; Former (at least for 12 months); Never; History of alcohol dependence; Unknown
Current drinker - 4074035
Ex-drinker - 4220362
Lifetime non-drinker of alcohol - 37204556
Ex-problem drinker - 4117706
##334#"				
				
				
"* comorbidity ^comment = ##334#Yes; No; Unknown
Yes - 4188539
No -  4188540
Unknown - 4129922##334#"				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
"* ecogPsAtDiagnosis ^comment = ##334#Ecog grades 0-5
        
ECOG performance status grade 0 - 4175026
ECOG performance status grade 1 - 4173614
ECOG performance status grade 2 - 4172043
ECOG performance status grade 3 - 4174241
ECOG performance status grade 4 - 4174251
ECOG performance status grade 5 - 4173456##334#"				
"* karnofsyIndexAtDiagnosis ^comment = ##334#KPS Scale
SONS Functional Neurologic Status - Karnofsky Performance Scale (KPS) - 35917688 ##334#"				
				
				
				
				
				
				
				
				
				
				
				
				
				
"* previousCancerTreatment ^comment = ##334#Chemotherapy/radiation/surgery/other (site of radiotherapy)
Chemotherapy - 4273629
Radiation - 4029715
Surgery - 4121697 
Other - Needs to be specified##334#"				
				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
				
"* sex insert ObligationActorAndCode($actor-headneck, #handle)"				
"* race insert ObligationActorAndCode($actor-headneck, #handle)"				
"* countryOfResidence insert ObligationActorAndCode($actor-headneck, #handle)"				
"* smoking insert ObligationActorAndCode($actor-headneck, #handle)"				
"* smokingType insert ObligationActorAndCode($actor-headneck, #handle)"				
"* cigSmokedPerDay insert ObligationActorAndCode($actor-headneck, #handle)"				
"* yearsAsSmoker insert ObligationActorAndCode($actor-headneck, #handle)"				
"* alcohol insert ObligationActorAndCode($actor-headneck, #handle)"				
				
				
"* comorbidity insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.myocardialInfarction insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.congestiveHeartFailure insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.peripheralVascularDisease insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.cerebrovascularAccidentExceptHemiplegia insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.dementia insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.chronicPulmonaryDisease insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.connectiveTissueDisease insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.ulcer insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.mildLiverDisease insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.moderateToSevereLiverDisease insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.diabetesWithoutComplications insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.diabetesWithEndOrganDamage insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.hemiplegia insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.moderateToSevereRenalDisease insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.solidTumorNonMetastatic insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.metastaticSolidTumor insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.leukemia insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.lymphoma insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.multipleMyeloma insert ObligationActorAndCode($actor-headneck, #handle)"				
"* comorbidity.aids insert ObligationActorAndCode($actor-headneck, #handle)"				
"* ecogPsAtDiagnosis insert ObligationActorAndCode($actor-headneck, #handle)"				
"* karnofsyIndexAtDiagnosis insert ObligationActorAndCode($actor-headneck, #handle)"				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
				
"* sex insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
				
"* countryOfResidence insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
				
				
				
				
				
"* bMI insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* charlsonComorbidityIndex insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
"* noGeneticSyndromeWho2020 insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* olliersDisease insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* maffuciSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* liFraumeniSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* mcCuneAlbrightSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* multipleOsteochondromas insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* neurofibromatosisType1 insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* rothmundThomsonSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* wernerSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* retinoblastoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* pagetDisease insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* otherGeneticSyndromeWho2020 insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* occurrenceOfOtherCancer insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* previousCancerTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* lastContact insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
//--- END				
//--- END				
//--- END				
//--- END				
