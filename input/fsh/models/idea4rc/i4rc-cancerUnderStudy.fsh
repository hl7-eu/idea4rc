//===================================================				
//  Logical Model				i4rc-cancerUnderStudy.fsh
//===================================================				
Logical: CancerUnderStudyI4rc				
Id: CancerUnderStudy				
Title: "Cancer Under Study"				
Description:  """Cancer Under Study
Maturity Level: 0 Draft"""				
* diagnosisDate 0..1 date "Date of diagnosis biopsy or surgical piece" """Date of the procedure from which the specimen was obtained that allowed the histological diagnosis"""				
* ageAtDiagnosis 0..1 integer "Age at diagnosis manual" """Age of the patient at the time of the diagnosis"""				
* histologyGroup 0..1 string "Histology WHO 2017 group" """Histology of prymary tumour  according to WHO 2017 clasification"""				
* histologyWho2017Subgroup 0..1 BackboneElement "Histology WHO 2017 subgroup" """Histology WHO 2017 subgroup"""				
* histologyWho2017Subgroup.Squamous 0..1 string "Histology subgroup Squamous" """Specifies the histological subgroup for squamous cancers"""				
* histologyWho2017Subgroup.Adenocarcinoma 0..1 string "Histology subgroup Adenocarcinoma" """Specifies the histological subgroup for adenocarcinomas"""				
* histologyWho2017Subgroup.Neuroendocrine 0..1 string "Histology subgroup Neuroendocrine" """Specifies the histological subgroup for neuroendocrine cancers """				
* histologyWho2017Subgroup.OdontogenicCarcinoma 0..1 string "Histology subgroup Odontogenic carcinoma" """Specifies the histological subgroup for odontogenic carcinomas"""				
* histologyWho2017Subgroup.SNUC 0..1 string "Histology subgroup Sinonasal undifferentiated carcinoma SNUC" """Specifies the histological subgroup for sinonasl undifferentiated carcinomas"""				
* siteRare 0..1 string "Site  rare AJCC" """Describe the primary tumor site according to AJCC """				
* siteCommonAndRare 0..1 string "Site common and rare AJCC" """Describe the primary tumor site according to AJCC """				
* subsite 0..1 BackboneElement "Subsite" """Subsite"""				
* subsite.nasalCavityAndParanasalSinusesSubsite 0..1 string "Nasal cavity and paranasal sinuses subsite" """Specifies the subsite for cancers occurred in nasal cavity and paranasal sinusess"""				
* subsite.nasopharynxSubsite 0..1 string "Nasopharynx  subsite" """Specifies the subsite for cancers occurred in nasopharynx"""				
* subsite.hypopharynxSubsite 0..1 string "Hypopharynx subsite" """Specifies the subsite for cancers occurred in hypopharynx"""				
* subsite.oropharynxSubsite 0..1 string "Oropharynx subsite" """Specifies the subsite for cancers occurred in oropharynx"""				
* subsite.larynxSubsite 0..1 string "Larynx subsite" """Specifies the subsite for cancers occurred in larynx"""				
* subsite.oralCavitySubsite 0..1 string "Oral cavity subsite" """Specifies the subsite for cancers occurred in oral cavity"""				
* subsite.lipSubsite 0..1 string "Lip subsite" """Specifies the subsite for cancers occurred in lip"""				
* plasmaticEbvDnaAtBaseline 0..1 string "Plasmatic EBV DNA at baseline" """Describes the result of EBV DNA plasma testing before treatment in NPC type II and III WHO """				
* primerType 0..1 string "Primer type" """Describes the primer used for EBV DNA plasma testing t in NPC type II and Type III WHO """				
* copyNumber 0..1 integer "Copy Number" """Copy number of EBVDNA"""				
* hpvStatus 0..1 string "HPV status" """Describes the result of HPV tumor testing in oral carcinoma """				
* hpvStatusDetectedBy 0..1 string "HPV status detected by" """Describes the technique used for HPV tumour testing in orall carcinoma"""				
* p16 0..1 string "p16" """Describes the result of p16 tumour testing in oral carcinoma"""				
* pdL1 0..1 string "PDL1" """Describes the result of PDL tumour testing in oral carcinoma"""				
* pdL1Method 0..1 string "PDL1 Method" """Describes the technique used for PDL tumour testing in oral carcinoma"""				
* pdL1CpsValue 0..1 integer "PDL1 CPS value" """Result of PDL1CPS testing when performed"""				
* pdL1TpsValue 0..1 integer "PDL1 TPS value" """Result of PDL1TPS testing when performed"""				
* crpCReactiveProteinTested 0..1 string "CRP  C reactive protein tested " """Describes the result of C reactive protein testing"""				
* cReactiveProteinCrpMgDl 0..1 integer "C reactive protein  CRP mgdl" """Result of CRP testing when performed"""				
* instrumentStatus 0..1 boolean "Instrument status" """Describe if the instument is fully compiled or not"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model				
//--------------------------------------------------------------------------------				
* diagnosisDate ^comment = """Must be formatted as YYYYMMDD Leave empty if not known Optional rule  Possible date anonymisation by
setting the 15th of every month ie YYYYMM15 If the month is not known we set it to June 06"""				
* ageAtDiagnosis ^comment = """An integer value  0 We use the 1 value for unknown Automatic  calculation from date of birth and date of diagnosis"""				
* histologyGroup ^comment = """A value in the WHO 2017 HN classification list"""				
				
* histologyWho2017Subgroup.Squamous ^comment = """A value in the WHO 2017 HN squamous classification list"""				
* histologyWho2017Subgroup.Adenocarcinoma ^comment = """A value in the WHO 2017 HN adenocarcinoma classification list"""				
* histologyWho2017Subgroup.Neuroendocrine ^comment = """A value in the WHO 2017 HN neuroendocrine classification list"""				
* histologyWho2017Subgroup.OdontogenicCarcinoma ^comment = """A value in the WHO 2017 HN odontogenic carcinoma classification list"""				
* histologyWho2017Subgroup.SNUC ^comment = """A value in the WHO 2017 HN SNUC classification list"""				
* siteRare ^comment = """A value in the AJCC Cancer Staging Manual 8th site list"""				
* siteCommonAndRare ^comment = """A value in the AJCC Cancer Staging Manual 8th site list"""				
				
* subsite.nasalCavityAndParanasalSinusesSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subsite.nasopharynxSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subsite.hypopharynxSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subsite.oropharynxSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subsite.larynxSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subsite.oralCavitySubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subsite.lipSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* plasmaticEbvDnaAtBaseline ^comment = """A string value representing whether the test value was positive negative or it was untested Empty if unknown"""				
* primerType ^comment = """A string value representing the plasma testing type Empty if unknown"""				
* copyNumber ^comment = """An integer for the number of EBVDNA Empty if unknown"""				
* hpvStatus ^comment = """A string value representing whether the result was positive negative or not tested Empty if unknown"""				
* hpvStatusDetectedBy ^comment = """A string value representing which was the used technique Empty if unknown"""				
* p16 ^comment = """A string value representing whether the result was positive negative or not tested Empty if unknown"""				
* pdL1 ^comment = """A string value representing whether the result was positive negative or not tested Empty if unknown"""				
* pdL1Method ^comment = """A string value representing which was the used technique Empty if unknown"""				
* pdL1CpsValue ^comment = """An integer for the PDL1CPS test Empty if unknown"""				
* pdL1TpsValue ^comment = """An integer for the PDL1TPS test Empty if unknown"""				
* crpCReactiveProteinTested ^comment = """A string value representing whether the result was positive negative or not tested Empty if unknown"""				
* cReactiveProteinCrpMgDl ^comment = """An integer for the CRP test Empty if unknown"""				
* instrumentStatus ^comment = """A boolean for the instrument if it was fully compiled or not"""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: I4RCCancerUnderStudy2Fhir				
Id: fhir				
Title: "Idea4RC Subject model to FHIR R4 Map"				
Source: CancerUnderStudy				
Target: "hl7.org/fhir/r4"				
				
* -> "TBD"				
* diagnosisDate -> "TBD"				
* ageAtDiagnosis -> "TBD"				
* histologyGroup -> "TBD"				
* histologyWho2017Subgroup -> "TBD"				
* histologyWho2017Subgroup.Squamous -> "TBD"				
* histologyWho2017Subgroup.Adenocarcinoma -> "TBD"				
* histologyWho2017Subgroup.Neuroendocrine -> "TBD"				
* histologyWho2017Subgroup.OdontogenicCarcinoma -> "TBD"				
* histologyWho2017Subgroup.SNUC -> "TBD"				
* siteRare -> "TBD"				
* siteCommonAndRare -> "TBD"				
* subsite -> "TBD"				
* subsite.nasalCavityAndParanasalSinusesSubsite -> "TBD"				
* subsite.nasopharynxSubsite -> "TBD"				
* subsite.hypopharynxSubsite -> "TBD"				
* subsite.oropharynxSubsite -> "TBD"				
* subsite.larynxSubsite -> "TBD"				
* subsite.oralCavitySubsite -> "TBD"				
* subsite.lipSubsite -> "TBD"				
* plasmaticEbvDnaAtBaseline -> "TBD"				
* primerType -> "TBD"				
* copyNumber -> "TBD"				
* hpvStatus -> "TBD"				
* hpvStatusDetectedBy -> "TBD"				
* p16 -> "TBD"				
* pdL1 -> "TBD"				
* pdL1Method -> "TBD"				
* pdL1CpsValue -> "TBD"				
* pdL1TpsValue -> "TBD"				
* crpCReactiveProteinTested -> "TBD"				
* cReactiveProteinCrpMgDl -> "TBD"				
* instrumentStatus -> "TBD"				
// --END				
// --END				
// --END				
