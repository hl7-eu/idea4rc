//===================================================				
//  Logical Model				i4rc-subject.fsh
//===================================================				
Logical: SubjectI4rc				
Id: Subject				
Title: "Subject of care"				
Description:  """Subject of care 
Maturity Level: 0 Draft"""				
* sex 1..1 CodeableConcept "Sex" """Describes biological sex as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"""				
* race 1..1 CodeableConcept "Race" """Describes race as recorded in  the hospital record, the one declared by the patient,, otherwise, the onerecognized by the observer"""				
* countryOfResidence 1..1 CodeableConcept "Country of Residence" """Country of residence at the time of diagnosis"""				
* smoking 1..1 CodeableConcept "Smoking" """Describes tobacco smoker habits within the options proposed"""				
* smokingType 0..1 CodeableConcept "Smoking type" """Describes type of tobacco"""				
* cigSmokedPerDay 0..1 integer "Cigarettes/cigars smoked per day" """Number of cigarettes or cigars smoked in one day. Together with the information of number of years as a smoker, these information will allow to automatically calculate the pack year."""				
* yearsAsSmoker 0..1 integer "Number of years as a smoker" """Number of years the person has smoked"""				
* alcohol 1..1 CodeableConcept "Alcohol" """Describes alcohol habits within the options proposed"""				
* comorbidity 1..1 BackboneElement "comorbidity" """Describes comorbidities reported or assesed before treatment. More than one choice is allowed. Please do not include the current cancer in this calculation, only the previous cancer."""				
* comorbidity.flag 1..1 CodeableConcept "comorbidity Flag" """Describes wherther the patient was diagnosed before treatment of at least one of the comorbidities listed  next or not"""				
* comorbidity.myocardialInfarction 0..1 boolean "Myocardial infarction" """Myocardial infarction"""				
* comorbidity.congestiveHeartFailure 0..1 boolean "Congestive heart failure" """Congestive heart failure"""				
* comorbidity.peripheralVascularDisease 0..1 boolean "Peripheral vascular disease" """Peripheral vascular disease"""				
* comorbidity.cerebrovascularAccidentExceptHemiplegia 0..1 boolean "Cerebrovascular accident  (except hemiplegia)" """Cerebrovascular accident  (except hemiplegia)"""				
* comorbidity.dementia 0..1 boolean "Dementia" """Dementia"""				
* comorbidity.chronicPulmonaryDisease 0..1 boolean "Chronic pulmonary disease" """Chronic pulmonary disease"""				
* comorbidity.connectiveTissueDisease 0..1 boolean "Connective tissue disease" """Connective tissue disease"""				
* comorbidity.ulcer 0..1 boolean "Ulcer" """Ulcer"""				
* comorbidity.mildLiverDisease 0..1 boolean "Mild liver disease" """Mild liver disease"""				
* comorbidity.moderateToSevereLiverDisease 0..1 boolean "Moderate to severe liver disease" """Moderate to severe liver disease"""				
* comorbidity.diabetesWithoutComplications 0..1 boolean "Diabetes (without complications)" """Diabetes (without complications)"""				
* comorbidity.diabetesWithEndOrganDamage 0..1 boolean "Diabetes with end organ damage" """Diabetes with end organ damage"""				
* comorbidity.hemiplegia 0..1 boolean "Hemiplegia" """Hemiplegia"""				
* comorbidity.moderateToSevereRenalDisease 0..1 boolean "Moderate to severe renal disease" """Moderate to severe renal disease"""				
* comorbidity.solidTumorNonMetastatic 0..1 boolean "Solid tumor (non metastatic)" """Solid tumor (non metastatic)"""				
* comorbidity.metastaticSolidTumor 0..1 boolean "Metastatic solid tumor" """Metastatic solid tumor"""				
* comorbidity.leukemia 0..1 boolean "Leukemia" """Leukemia"""				
* comorbidity.lymphomaOrMultipleMyeloma 0..1 boolean "Lymphoma, Multiple myeloma" """Lymphoma, Multiple myeloma"""				
* comorbidity.aids 0..1 boolean "AIDS" """AIDS"""				
* ecogPsAtDiagnosis 0..1 CodeableConcept "Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis" """Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis"""				
* karnofsyIndexAtDiagnosis 0..1 CodeableConcept "Karnofsy index at diagnosis" """Karnofsy index at diagnosis"""				
//--- END				
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
"""				
* smokingType ^comment = """Cigarettes; Cigar; Unknown
Cigarettes - 36716475
Cigar -  36716476
Unknown - 4129922"""				
* cigSmokedPerDay ^comment = """numeric
"""				
* yearsAsSmoker ^comment = """numeric
"""				
* alcohol ^comment = """Current; Former (at least for 12 months); Never; History of alcohol dependence; Unknown
"""				
				
* comorbidity.flag ^comment = """Yes; No; Unknown
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
* ecogPsAtDiagnosis ^comment = """numeric; only if already available at the health care provider level
Sons of ECOG performance status"""				
* karnofsyIndexAtDiagnosis ^comment = """numeric; only if already available at the health care provider level
Answer of https://athena.ohdsi.org/search-terms/terms/35917688"""				
//--- END				
//--- END				
//--- END				
//--- END				
