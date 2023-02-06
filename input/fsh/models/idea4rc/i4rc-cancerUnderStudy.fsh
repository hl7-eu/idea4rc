//===================================================				
//  Logical Model				i4rc-cancerUnderStudy.fsh
//===================================================				
Logical: CancerUnderStudyI4rc				
Id: CancerUnderStudy				
Title: "Cancer Under Study"				
Description:  """Subject of care 
Maturity Level: 0 Draft"""				
* diagnosisDate 0..1 date "Date of diagnosis" """Date of the procedure from which the specimen was obtained that allowed the histological diagnosis."""				
* ageAtDiagnosis 0..1 integer "Age at diagnosis" """Age of the patient at the time of the diagnosis.
required if date of diagnosis known"""				
* histologyGroup 0..1 CodeableConcept "Histology (WHO 2017) group" """Histology of prymary tumour according to WHO 2017 clasification."""				
* histologySubgroup 0..* BackboneElement "histologySubgroup.histology (WHO 2017) subgroup" """Specifies the histological subgroup"""				
* histologySubgroup.histologySquamous 0..1 CodeableConcept "Specifies the histological subgroup for squamous cancers" """Specifies the histological subgroup for squamous cancers"""				
* histologySubgroup.histologyAdenocarcinoma 0..1 CodeableConcept "Specifies the histological subgroup for adenocarcinomas" """Specifies the histological subgroup for adenocarcinomas"""				
* histologySubgroup.histologyNeuroendocrine 0..1 CodeableConcept "Specifies the histological subgroup for neuroendocrine cancers " """Specifies the histological subgroup for neuroendocrine cancers"""				
* histologySubgroup.histologyOdontogenicCarcinoma 0..1 CodeableConcept "Specifies the histological subgroup for odontogenic carcinomas" """Specifies the histological subgroup for odontogenic carcinomas"""				
* histologySubgroup.histologySNUC 0..1 CodeableConcept "Specifies the histological subgroup for sinonasl undifferentiated carcinomas" """Specifies the histological subgroup for sinonasl undifferentiated carcinomas"""				
* siteRare 0..1 CodeableConcept "Site Rare" """Describe the primary tumor site, according to AJCC ."""				
* siteCommonAndRare 0..1 CodeableConcept "Site common and rare" """Describe the primary tumor site, according to AJCC ."""				
* subSite 0..* BackboneElement "Subsite" """Specifies the subsite"""				
* subSite.nasalCavityAndParanasalSinusesSubsite 0..1 CodeableConcept "Nasal cavity and paranasal sinuses subsite" """Specifies the subsite for cancers occurred in nasal cavity and paranasal sinusess"""				
* subSite.nasopharynxSubsite 0..1 CodeableConcept "Nasopharynx subsite" """Specifies the subsite for cancers occurred in nasopharynx"""				
* subSite.hypopharynxSubsite 0..1 CodeableConcept "Hypopharynx subsite" """Specifies the subsite for cancers occurred in hypopharynx"""				
* subSite.oropharynxSubsite 0..1 CodeableConcept "Oropharynx subsite" """Specifies the subsite for cancers occurred in oropharynx"""				
* subSite.larynxSubsite 0..1 CodeableConcept "Larynx subsite" """Specifies the subsite for cancers occurred in larynx"""				
* subSite.oralCavitySubsite 0..1 CodeableConcept "Oral cavity subsite" """Specifies the subsite for cancers occurred in oral cavity"""				
* subSite.lipSubsite 0..1 CodeableConcept "Lip subsite" """Specifies the subsite for cancers occurred in lip"""				
* PlasmaticEbvDnaAtBaseline 0..1 CodeableConcept "Plasmatic EBV DNA at baseline" """Describes the result of EBV DNA plasma testing before treatment in NPC type II and III (WHO)"""				
* PrimerType 0..1 CodeableConcept "Primer type" """Describes the primer used for EBV DNA plasma testing t in NPC type II and Type III (WHO)"""				
* CopyNumber 0..1 integer "Copy Number" """Copy number of EBVDNA"""				
* HpvStatus 0..1 CodeableConcept "HPV status" """Describes the result of HPV tumor testing in oral carcinoma"""				
* HpvStatusDetectedBy 0..1 CodeableConcept "HPV status detecection" """Describes the technique used for HPV tumour testing in orall carcinoma"""				
* P16 0..1 CodeableConcept "p16" """Describes the result of p16 tumour testing in oral carcinoma"""				
* PdL1 0..1 CodeableConcept "PD-L1" """Describes the result of PDL tumour testing in oral carcinoma"""				
* Pd-L1Method 0..1 CodeableConcept "PD-L1 Method" """Describes the technique used for PDL tumour testing in oral carcinoma"""				
* Pd-L1CpsValue 0..1 integer "PD-L1 CPS" """Result of PDL1CPS testing, when performed"""				
* Pd-L1TpsValue 0..1 integer "PD-L1 TPS" """Result of PDL1TPS testing, when performed"""				
* Crp-CReactiveProteinTested 0..1 CodeableConcept "CRP ? C reactive protein tested" """Describes the result of C reactive protein testing"""				
* CReactiveProtein-Crp-MgDl 0..1 Quantity "C reactive protein - CRP (mg/dl)" """Result of CRP testing, when performed"""				
* InstrumentStatus 0..1 CodeableConcept "Instrument status" """Describe if the instument is fully compiled or not"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model				
//--------------------------------------------------------------------------------				
* diagnosisDate ^comment = """Must be formatted as YYYY-MM-DD. Leave empty if not known. Optional rule : Possible date anonymisation by
setting the 15th of every month i.e.: YYYY-MM-15. If the month is not known, we set it to June (06)."""				
* ageAtDiagnosis ^comment = """An integer value > 0. We use the -1 value for unknown. Automatic  calculation from date of birth and date of diagnosis."""				
* histologyGroup ^comment = """A value in the WHO 2017 H&N classification list."""				
				
* histologySubgroup.histologySquamous ^comment = """A value in the WHO 2017 H&N squamous classification list."""				
* histologySubgroup.histologyAdenocarcinoma ^comment = """A value in the WHO 2017 H&N adenocarcinoma classification list."""				
* histologySubgroup.histologyNeuroendocrine ^comment = """A value in the WHO 2017 H&N neuroendocrine classification list."""				
* histologySubgroup.histologyOdontogenicCarcinoma ^comment = """A value in the WHO 2017 H&N odontogenic carcinoma classification list."""				
* histologySubgroup.histologySNUC ^comment = """A value in the WHO 2017 H&N SNUC classification list."""				
* siteRare ^comment = """A value in the AJCC Cancer Staging Manual 8th site list"""				
* siteCommonAndRare ^comment = """A value in the AJCC Cancer Staging Manual 8th site list"""				
				
* subSite.nasalCavityAndParanasalSinusesSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subSite.nasopharynxSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subSite.hypopharynxSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subSite.oropharynxSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subSite.larynxSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subSite.oralCavitySubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* subSite.lipSubsite ^comment = """A string value in the AJCC Cancer Staging Manual 8th subsite list"""				
* PlasmaticEbvDnaAtBaseline ^comment = """A string value representing whether the test value was positive, negative or it was untested. Empty if unknown."""				
* PrimerType ^comment = """A string value representing the plasma testing type. Empty if unknown"""				
* CopyNumber ^comment = """An integer for the number of EBVDNA. Empty if unknown"""				
* HpvStatus ^comment = """A string value representing whether the result was positive, negative or not tested. Empty if unknown."""				
* HpvStatusDetectedBy ^comment = """A string value representing which was the used technique. Empty if unknown."""				
* P16 ^comment = """A string value representing whether the result was positive, negative or not tested. Empty if unknown."""				
* PdL1 ^comment = """A string value representing whether the result was positive, negative or not tested. Empty if unknown."""				
* Pd-L1Method ^comment = """A string value representing which was the used technique. Empty if unknown."""				
* Pd-L1CpsValue ^comment = """An integer for the PDL1CPS test. Empty if unknown."""				
* Pd-L1TpsValue ^comment = """An integer for the PDL1TPS test. Empty if unknown."""				
* Crp-CReactiveProteinTested ^comment = """A string value representing whether the result was positive, negative or not tested. Empty if unknown."""				
* CReactiveProtein-Crp-MgDl ^comment = """An integer for the CRP test. Empty if unknown."""				
* InstrumentStatus ^comment = """A boolean for the instrument if it was fully compiled or not."""				
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
* histologySubgroup -> "TBD"				
* histologySubgroup.histologySquamous -> "TBD"				
* histologySubgroup.histologyAdenocarcinoma -> "TBD"				
* histologySubgroup.histologyNeuroendocrine -> "TBD"				
* histologySubgroup.histologyOdontogenicCarcinoma -> "TBD"				
* histologySubgroup.histologySNUC -> "TBD"				
* siteRare -> "TBD"				
* siteCommonAndRare -> "TBD"				
* subSite -> "TBD"				
* subSite.nasalCavityAndParanasalSinusesSubsite -> "TBD"				
* subSite.nasopharynxSubsite -> "TBD"				
* subSite.hypopharynxSubsite -> "TBD"				
* subSite.oropharynxSubsite -> "TBD"				
* subSite.larynxSubsite -> "TBD"				
* subSite.oralCavitySubsite -> "TBD"				
* subSite.lipSubsite -> "TBD"				
* PlasmaticEbvDnaAtBaseline -> "TBD"				
* PrimerType -> "TBD"				
* CopyNumber -> "TBD"				
* HpvStatus -> "TBD"				
* HpvStatusDetectedBy -> "TBD"				
* P16 -> "TBD"				
* PdL1 -> "TBD"				
* Pd-L1Method -> "TBD"				
* Pd-L1CpsValue -> "TBD"				
* Pd-L1TpsValue -> "TBD"				
* Crp-CReactiveProteinTested -> "TBD"				
* CReactiveProtein-Crp-MgDl -> "TBD"				
* InstrumentStatus -> "TBD"				
// --END				
// --END				
// --END				
