//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsComorbiditiesAthenaI4rc
Id: comorbidities-athena-eu-i4rc
Title: "Comorbidities: Athena"
Description: """Comorbidities: Athena"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $athena#1620969  "Previous myocardial infarction"
* $athena#1620328  "Congestive heart failure"
* $athena#1620458 "Peripheral vascular disease"
* $athena#1620551 "Cerebrovascular disease"
* $athena#36210750 "Dementia"
* $athena#1620830 "Chronic pulmonary disease"
* $athena#1620946 "Connective tissue disease"
* $athena#4177703 "Ulcer"
* $athena#1621281 "Mild liver or renal disease"
* $athena#1620421 "Moderate or severe liver or renal disease"
* $athena#45879799 "Diabetes"
* $athena#1620753 "Diabetes with end organ damage"
* $athena#374022 "Hemiplegia"
* $athena#1620421 "Moderate or severe liver or renal disease"
* $athena#443392 "Malignant neoplastic disease"
* $athena#1621181 "Metastatic solid tumor"
* $athena#317510 "Leukemia"
* $athena#44499278 "Malignant lymphoma, NOS"
* $athena#437233 "Multiple myeloma"
* $athena#45884125 "AIDS"
* $athena#4145177 "Enchondromatosis"
* $athena#4187683 "Maffucci syndrome"
* $athena#4323645 "Li-Fraumeni syndrome"
* $athena#37117262 "McCune Albright syndrome"
* $athena#37396802 "Multiple osteochondroma"
* $athena#377252 "Neurofibromatosis type 1"
* $athena#4286355 "Rothmund-Thomson syndrome"
* $athena#4197821 "Werner syndrome"
* $athena#4158977 "Retinoblastoma"
* $athena#75910 "Osteitis deformans"
* $athena#1340204 "History of event"
* $athena#37204336 "Genetic disease"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsComorbiditiesSctI4rc
Id: comorbidities-sct-eu-i4rc
Title: "Comorbidities: SNOMED"
Description: """Comorbidities: SNOMED CT"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $sct#22298006 "Myocardial infarction"
* $sct#42343007 "Congestive heart failure"
* $sct#400047006 "Peripheral vascular disease"
* $sct#230690007 "Cerebrovascular accident" // Cerebrovascular accident  (except hemiplegia) not sure it is excldued..
* $sct#52448006 "Dementia"
* $sct#413839001 "Chronic lung disease" // Chronic pulmonary disease check if  13645005 Chronic obstructive lung disease or 79955004 Chronic cardiopulmonary disease
* $sct#105969002 "Disorder of connective tissue"
* $sct#429040005 "Ulcer"
* $sct#235856003 "Disorder of liver" // TO BE REVIEWED Mild liver disease and Moderate to severe liver disease (how to differentiate ?)
* $sct#73211009 "Diabetes mellitus" // TO BE REVIEWED  Diabetes (without complications) AND Diabetes with end organ damage (how to differentiate ?)
* $sct#50582007 "Hemiplegia"
* $sct#90708001 "Kidney diseas" // TO BE REVIEWED  Moderate to severe renal disease
 // TO BE ADDED Solid tumor (non metastatic)
// TO BE ADDED Metastatic solid tumor"
* $sct#93143009 "Leukemia"
* $sct#118600007 "Malignant lymphoma" // TO BE REVIEWED Lymphoma, Multiple myeloma
* $sct#109989006 "Multiple myeloma" // TO BE REVIEWED Lymphoma, Multiple myeloma
* $sct#62479008 "Acquired immune deficiency syndrome"




