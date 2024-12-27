Logical: SubjectI4rc
Id: Subject
Title: "Patient"
Description: """Subject of care.
Maturity Level: 0 Draft"""
* sex 1..* CodeableConcept "Sex (M)" """Describes biological sex as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded 
"""
* sex insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sex insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sex ^comment = """Male - 8507
Female - 8532"""
* race 1..* CodeableConcept "Race (M)" """Describes race as recorded in  the hospital record, the one declared by the patient,, otherwise, the onerecognized by the observer 
privacy issues for registering race in France.

Hispanic is present only in BB. Hispanic is not mapped as race.

If Hispanic, OMOP race=0, if not, OMOP ethnicity=
38003564

If "hispanic" register ethnicity, otherwise register race"""
* race insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* race insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* race ^comment = """White - 8527
Black - 8516
Asian/Pacific Islanders - 8515
American Indian/Alaska Native - 8657
        Hispanic or Latino - 38003563"""
* birthYear 1..* integer "Birth year (M)" """Year of birth of the patient. 
PERSON.year_of_birth"""
* birthYear insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* birthYear insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* countryOfResidence 1..* CodeableConcept "Country of Residence (M)" """Country of residence at the time of diagnosis 
"""
* countryOfResidence insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* countryOfResidence insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* countryOfResidence ^comment = """Son in the hierarchy of countries"""
* smoking 1..* CodeableConcept "Smoking (M)" """Describes tobacco smoker habits within the options proposed 
Changed vocabulary codes to be standard (BLUEBERRY was not)"""
* smoking insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* smoking insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* smoking ^comment = """Current smoker - 36309332
Former smoker - 45883458
Never smoker - 45879404
"""
* cigarettesPackYearsSmokedDuringLife 0..* integer "Cigarettes pack years smoked during life (R)" """Calculates pack/ year by multiplying the number of packs of cigarettes smoked per day by the number of years the person has been smoking.
 
Register the actual value of pack/years in the value_as_number field"""
* cigarettesPackYearsSmokedDuringLife insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* cigarettesPackYearsSmokedDuringLife insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* alcohol 1..* CodeableConcept "Alcohol (M)" """Describes alcohol habits within the options proposed 
"""
* alcohol insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* alcohol insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* alcohol ^comment = """Current drinker - 4074035
Ex-drinker - 4220362
Lifetime non-drinker of alcohol - 37204556
Ex-problem drinker - 4117706
"""
* bmi
 0..* Quantity "Height/weight (BMI)
 (R)" """Body Mass Index information if weight and height are included. it is calculated as BMI = kg/m2 where kg is a person's weight in kilograms and m2 is their height in metres squared. 
Register the actual value of BMI centile in the value_as_number field"""
* bmi
 insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* charlsonComorbidityIndex 0..* integer "Charlson Comorbidity index (R)" """Provides the Charlson Comorbidity index for the patient 
"""
* charlsonComorbidityIndex insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* charlsonComorbidityIndex insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* comorbidity 1..* BackboneElement "Comorbidity (M)" """Describes wherther the patient was diagnosed before treatment of at least one of the comorbidities listed or not. 
It refers to any disease or medical condition that is simultaneously present with the cancer under study. 
"""
* comorbidity insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.myocardialInfarction 0..* boolean "Myocardial infarction (O)" """Describes comorbidities reported or assesed before treatment. More than one choice is allowed. Please do not include the current cancer in this calculation, only the previous cancer. 
"""
* comorbidity.myocardialInfarction insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.congestiveHeartFailure 0..* boolean "Congestive heart failure (O)" """Previous cancer comorbidity related to Congestive heart failure 
"""
* comorbidity.congestiveHeartFailure insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.peripheralVascularDisease 0..* boolean "Peripheral vascular disease (O)" """Previous cancer comorbidity related to Peripheral vascular disease 
"""
* comorbidity.peripheralVascularDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.cerebrovascularAccidentExceptHemiplegia 0..* boolean "Cerebrovascular accident  (except hemiplegia) (O)" """Previous cancer comorbidity related to Cerebrovascular accident  (except hemiplegia) 
"""
* comorbidity.cerebrovascularAccidentExceptHemiplegia insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.dementia 0..* boolean "Dementia (O)" """Previous cancer comorbidity related to Dementia 
"""
* comorbidity.dementia insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.chronicPulmonaryDisease 0..* boolean "Chronic pulmonary disease (O)" """Previous cancer comorbidity related to Chronic pulmonary disease 
"""
* comorbidity.chronicPulmonaryDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.connectiveTissueDisease 0..* boolean "Connective tissue disease (O)" """Previous cancer comorbidity related to Connective tissue disease 
"""
* comorbidity.connectiveTissueDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.ulcer 0..* boolean "Ulcer (O)" """Previous cancer comorbidity related to Ulcer 
Couldnt find it under https://athena.ohdsi.org/search-terms/terms/46235351"""
* comorbidity.ulcer insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.mildLiverDisease 0..* boolean "Mild liver disease (O)" """Previous cancer comorbidity related to Mild liver disease 
"""
* comorbidity.mildLiverDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.moderateToSevereLiverDisease 0..* boolean "Moderate to severe liver disease (O)" """Previous cancer comorbidity related to Moderate to severe liver disease 
Same as Moderate to severe renal disease"""
* comorbidity.moderateToSevereLiverDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.diabetes 0..* boolean "Diabetes (without complications) (O)" """Previous cancer comorbidity related to Diabetes (without complications) 
"""
* comorbidity.diabetes insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.diabetesWithEndOrganDamage 0..* boolean "Diabetes with end organ damage (O)" """Previous cancer comorbidity related to Diabetes with end organ damage 
"""
* comorbidity.diabetesWithEndOrganDamage insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.hemiplegia 0..* boolean "Hemiplegia (O)" """Previous cancer comorbidity related to Hemiplegia 
Couldnt find it under https://athena.ohdsi.org/search-terms/terms/46235351"""
* comorbidity.hemiplegia insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.moderateToSevereRenalDisease 0..* boolean "Moderate to severe renal disease (O)" """Previous cancer comorbidity related to Moderate to severe renal disease 
Same as Moderate to severe liver disease"""
* comorbidity.moderateToSevereRenalDisease insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.solidTumor 0..* boolean "Solid tumor (non metastatic) (O)" """Previous cancer comorbidity related to Solid tumor (non metastatic) 
History of event + Other cancer (find the corresponding standard concept)

Couldnt find it under https://athena.ohdsi.org/search-terms/terms/46235351

IT NEEDS TO BE PRESENTED"""
* comorbidity.solidTumor insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.metastaticSolidTumor 0..* boolean "Metastatic solid tumor (O)" """Previous cancer comorbidity related to Metastatic solid tumor 
History of event + Other cancer (find the corresponding standard concept)"""
* comorbidity.metastaticSolidTumor insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.leukemia 0..* boolean "Leukemia (O)" """Previous cancer comorbidity related to Leukemia 
History of event + Leukemia

Couldnt find it under https://athena.ohdsi.org/search-terms/terms/46235351"""
* comorbidity.leukemia insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.lymphoma 0..* boolean "Lymphoma (O)" """Previous cancer comorbidity related to Lymphoma 
History of event + Malignant Lymphoma NOS

Couldnt find it under https://athena.ohdsi.org/search-terms/terms/46235351"""
* comorbidity.lymphoma insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.multipleMyeloma 0..* boolean "Multiple myeloma (O)" """Previous cancer comorbidity related to Multiple myeloma 
History of event + Multiple myeloma 

Couldnt find it under https://athena.ohdsi.org/search-terms/terms/46235351"""
* comorbidity.multipleMyeloma insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* comorbidity.aids 0..* boolean "AIDS (O)" """Previous cancer comorbidity related to AIDS 
History of event + AIDS """
* comorbidity.aids insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ecogPsAtDiagnosis 0..* integer "Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis (R)" """Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis 
"""
* ecogPsAtDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ecogPsLabel 0..* CodeableConcept "ECOG PS label (R)" """Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis 
"""
* ecogPsLabel insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ecogPsLabel ^comment = """Answers of ECOG Performance Status [Interpretation] - 36303470"""
* karnofsyIndexAtDiagnosis 0..* integer "Karnofsy index at diagnosis (R)" """Karnofsy index at diagnosis. Consider only the first KI before any treatment available in the clinical record. 
"""
* karnofsyIndexAtDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* karnofsyIndexLabel 0..* CodeableConcept "Karnofsy index label (R)" """Karnofsy index at diagnosis. Consider only the first KI before any treatment available in the clinical record. 
"""
* karnofsyIndexLabel insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* karnofsyIndexLabel ^comment = """Answers of Karnofsky Performance Status [Interpretation] - 36303744"""
* noGeneticSyndromeWho2020 1..* boolean "No Genetic syndrome (M)" """If no genetic syndrome was identified for the patient. based on WHO 2020. 
use 37204336 [Genetic disease] as value_as_concept_id"""
* noGeneticSyndromeWho2020 insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020 ^comment = """No evidence of - 4211787"""
* noGeneticSyndromeWho2020.olliersDisease 1..* boolean "Olliers disease (M)" """If patient presents Olliers disease 
"""
* noGeneticSyndromeWho2020.olliersDisease insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.olliersDisease ^comment = """Enchondromatosis - 4145177"""
* noGeneticSyndromeWho2020.maffuciSyndrome 1..* boolean "Maffuci syndrome (M)" """If patient presents Maffuci syndrome 
"""
* noGeneticSyndromeWho2020.maffuciSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.maffuciSyndrome ^comment = """Maffucci syndrome - 4187683"""
* noGeneticSyndromeWho2020.liFraumeniSyndrome 1..* boolean "Li-Fraumeni syndrome (M)" """If patient presents Li-Fraumeni syndrome 
"""
* noGeneticSyndromeWho2020.liFraumeniSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.liFraumeniSyndrome ^comment = """Li-Fraumeni syndrome - 4323645"""
* noGeneticSyndromeWho2020.mcCuneAlbrightSyndrome 1..* boolean "McCune-Albright syndrome (M)" """If patient presents McCune-Albright syndrome 
"""
* noGeneticSyndromeWho2020.mcCuneAlbrightSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.mcCuneAlbrightSyndrome ^comment = """McCune Albright syndrome - 37117262"""
* noGeneticSyndromeWho2020.multipleOsteochondromas 1..* boolean "Multiple osteochondromas (M)" """If patient presents Multiple osteochondromas 
"""
* noGeneticSyndromeWho2020.multipleOsteochondromas insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.multipleOsteochondromas ^comment = """        Multiple osteochondroma - 37396802"""
* noGeneticSyndromeWho2020.neurofibromatosisType1 1..* boolean "Neurofibromatosis type 1 (M)" """If patient presents Neurofibromatosis type 1 
"""
* noGeneticSyndromeWho2020.neurofibromatosisType1 insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.neurofibromatosisType1 ^comment = """Neurofibromatosis type 1 - 377252"""
* noGeneticSyndromeWho2020.rothmundThomsonSyndrome 1..* boolean "Rothmund-Thomson syndrome (M)" """If patient presents Rothmund-Thomson syndrome 
"""
* noGeneticSyndromeWho2020.rothmundThomsonSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.rothmundThomsonSyndrome ^comment = """Rothmund-Thomson syndrome - 4286355"""
* noGeneticSyndromeWho2020.wernerSyndrome 1..* boolean "Werner syndrome (M)" """If patient presents Werner syndrome 
"""
* noGeneticSyndromeWho2020.wernerSyndrome insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.wernerSyndrome ^comment = """Werner syndrome - 4197821"""
* noGeneticSyndromeWho2020.retinoblastoma 1..* boolean "Retinoblastoma (M)" """If patient presents Retinoblastoma 
"""
* noGeneticSyndromeWho2020.retinoblastoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.retinoblastoma ^comment = """Retinoblastoma - 4158977"""
* noGeneticSyndromeWho2020.pagetDisease 1..* boolean "Paget disease (M)" """If patient presents Paget disease 
"""
* noGeneticSyndromeWho2020.pagetDisease insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.pagetDisease ^comment = """Osteitis deformans - 75910"""
* noGeneticSyndromeWho2020.otherSyndromes 1..* CodeableConcept "Other Genetic syndrome (M)" """If patient presents Other Genetic syndrome. According to WHO 2020 
History of event + 
Other genetic syndrome (find the corresponding standard concept)
If not specified, use 37204336 [Genetic disease]"""
* noGeneticSyndromeWho2020.otherSyndromes insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* noGeneticSyndromeWho2020.otherSyndromes ^comment = """History of event - 1340204

+ Any Standard Condition Code
If not specified, use 37204336 [Genetic disease]
"""
* previousMalignantCancerSite 0..* CodeableConcept "Previous malignant cancer site (R)" """Describes the site of the malignant tumour reported or assesed before the cancer under study. Any type of of solid and haematological cancer is listed. To obtain the previous malignant cancer refer to the solid tumor (metastatic and non-metastatic)  comorbidity 
History of event + 
Cancer modifier for site"""
* previousMalignantCancerSite insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* previousMalignantCancerSite ^comment = """Values from CancerModifier Topography

Use integer for IDEA4RC if needed"""
* previousCancerTreatment 1..* CodeableConcept "Previous cancer treatment (M)" """Describes the type of treatment performed for the previous cancer 
History of event + 
Other treatment (find the corresponding standard concept)
If not specified,"""
* previousCancerTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* previousCancerTreatment ^comment = """Chemotherapy - 4273629
Radiation oncology- 4170755
Surgery - 4121697 
Comprehensive medication therapy review - 42535584
Immunological therapy - 4295112"""
