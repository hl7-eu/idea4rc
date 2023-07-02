//===================================================				
//  Logical Model				i4rc-subject.fsh
//===================================================				
Logical: SubjectI4rc				
Id: Subject				
Title: "Subject of care"				
Description:  """Subject of care 
Maturity Level: 0 Draft"""				
* Sex 1..1 Coding "Sex" """Describes biological sex as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"""				
* Race 1..1 Coding "Race" """Describes race as recorded in  the hospital record, the one declared by the patient,, otherwise, the onerecognized by the observer"""				
* CountryOfResidence 1..1 Coding "Country of Residence" """Country of residence at the time of diagnosis"""				
* Smoking 1..1 Coding "Smoking" """Describes tobacco smoker habits within the options proposed"""				
* SmokingType 0..1 Coding "Smoking type" """Describes type of tobacco"""				
* CigSmokedPerDay 0..1 integer "Cigarettes/cigars smoked per day" """Number of cigarettes or cigars smoked in one day. Together with the information of number of years as a smoker, these information will allow to automatically calculate the pack year."""				
* YearsAsSmoker 0..1 integer "Number of years as a smoker" """Number of years the person has smoked"""				
* Alcohol 1..1 Coding "Alcohol" """Describes alcohol habits within the options proposed"""				
* Comorbidity 1..1 BackboneElement "Comorbidity" """Describes comorbidities reported or assesed before treatment. More than one choice is allowed. Please do not include the current cancer in this calculation, only the previous cancer."""				
* Comorbidity.Flag 1..1 Coding "Comorbidity Flag" """Describes wherther the patient was diagnosed before treatment of at least one of the comorbidities listed  next or not"""				
* Comorbidity.MyocardialInfarction 0..1 boolean "Myocardial infarction" """Myocardial infarction"""				
* Comorbidity.CongestiveHeartFailure 0..1 boolean "Congestive heart failure" """Congestive heart failure"""				
* Comorbidity.PeripheralVascularDisease 0..1 boolean "Peripheral vascular disease" """Peripheral vascular disease"""				
* Comorbidity.CerebrovascularAccidentExceptHemiplegia 0..1 boolean "Cerebrovascular accident  (except hemiplegia)" """Cerebrovascular accident  (except hemiplegia)"""				
* Comorbidity.Dementia 0..1 boolean "Dementia" """Dementia"""				
* Comorbidity.ChronicPulmonaryDisease 0..1 boolean "Chronic pulmonary disease" """Chronic pulmonary disease"""				
* Comorbidity.ConnectiveTissueDisease 0..1 boolean "Connective tissue disease" """Connective tissue disease"""				
* Comorbidity.Ulcer 0..1 boolean "Ulcer" """Ulcer"""				
* Comorbidity.MildLiverDisease 0..1 boolean "Mild liver disease" """Mild liver disease"""				
* Comorbidity.ModerateToSevereLiverDisease 0..1 boolean "Moderate to severe liver disease" """Moderate to severe liver disease"""				
* Comorbidity.DiabetesWithoutComplications 0..1 boolean "Diabetes (without complications)" """Diabetes (without complications)"""				
* Comorbidity.DiabetesWithEndOrganDamage 0..1 boolean "Diabetes with end organ damage" """Diabetes with end organ damage"""				
* Comorbidity.Hemiplegia 0..1 boolean "Hemiplegia" """Hemiplegia"""				
* Comorbidity.ModerateToSevereRenalDisease 0..1 boolean "Moderate to severe renal disease" """Moderate to severe renal disease"""				
* Comorbidity.SolidTumorNonMetastatic 0..1 boolean "Solid tumor (non metastatic)" """Solid tumor (non metastatic)"""				
* Comorbidity.MetastaticSolidTumor 0..1 boolean "Metastatic solid tumor" """Metastatic solid tumor"""				
* Comorbidity.Leukemia 0..1 boolean "Leukemia" """Leukemia"""				
* Comorbidity.LymphomaOrMultipleMyeloma 0..1 boolean "Lymphoma, Multiple myeloma" """Lymphoma, Multiple myeloma"""				
* Comorbidity.Aids 0..1 boolean "AIDS" """AIDS"""				
* EcogPsAtDiagnosis 0..1 Coding "Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis" """Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis"""				
* KarnofsyIndexAtDiagnosis 0..1 Coding "Karnofsy index at diagnosis" """Karnofsy index at diagnosis"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
* Sex ^comment = """Male; Female; Unknown.
Male - 8507
Female - 8532
Unknown - 4129922"""				
* Race ^comment = """Unknown; White; Black; Asians/Pacific Islanders; American Indian/Alaska Native
White - 8527
Black - 8516
Asian/Pacific Islanders - 8515
American Indian/Alaska Native - 8657
Unknown - 4129922"""				
* CountryOfResidence ^comment = """Value from the code list of countries
Son in the hierarchy of countries"""				
* Smoking ^comment = """Current tobacco smoker; Former smoker (at least for 12 months); Never smoker; Unknown
"""				
* SmokingType ^comment = """Cigarettes; Cigar; Unknown
Cigarettes - 36716475
Cigar -  36716476
Unknown - 4129922"""				
* CigSmokedPerDay ^comment = """numeric
"""				
* YearsAsSmoker ^comment = """numeric
"""				
* Alcohol ^comment = """Current; Former (at least for 12 months); Never; History of alcohol dependence; Unknown
"""				
				
* Comorbidity.Flag ^comment = """Yes; No; Unknown
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
* EcogPsAtDiagnosis ^comment = """numeric; only if already available at the health care provider level
Sons of ECOG performance status"""				
* KarnofsyIndexAtDiagnosis ^comment = """numeric; only if already available at the health care provider level
Answer of https://athena.ohdsi.org/search-terms/terms/35917688"""				
//--- END				
//--- END				
//--- END				
//--- END				
