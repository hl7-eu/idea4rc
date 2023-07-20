//===================================================				
//  Logical Model				i4rc-cancerEpisode.fsh
//===================================================				
Logical: CancerEpisodeI4rc				
Id: CancerEpisode				
Title: "Cancer  Episode"				
Description:  """Cancer Episode
Maturity Level: 0 Draft"""				
* patient 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject "Patient" """Patient element containing the data regarding the patient followed by the hospital"""				
* dateOfDiagnosis 1..1 date "Date of diagnosis (biopsy or surgical piece)" """Date of the procedure from which the specimen was obtained that allowed the histological diagnosis."""				
* biopsyDoneBy 1..1 CodeableConcept "Biopsy done by" """Describes the institution where diagnostic procedure was performed"""				
* ageAtDiagnosis 1..1 integer  "Age at diagnosis" """Age of the patient at the time of the diagnosis."""				
* grading 0..1 CodeableConcept "Grading" """Grading of the cancer"""				
* histologyGroup 1..1 CodeableConcept "Histology (WHO 2017) group" """Histology of prymary tumour  according to WHO 2017 clasification."""				
* histologySubGroup 1..1 BackboneElement "Histology Subgroups" """Histology Subgroups"""				
* histologySubGroup.histologySquamous 1..1 CodeableConcept "Histology Squamous" """Specifies the histological subgroup for squamous cancers"""				
* histologySubGroup.histologyAdenocarcinoma 1..1 CodeableConcept "Histology Adenocarcinoma" """Specifies the histological subgroup for adenocarcinomas"""				
* histologySubGroup.histologyNeuroendocrine 1..1 CodeableConcept "Histology Neuroendocrine" """Specifies the histological subgroup for neuroendocrine cancers """				
* histologySubGroup.histologyOdontogenicCarcinoma 1..1 CodeableConcept "Histology Odontogenic Carcinoma" """Specifies the histological subgroup for odontogenic carcinomas"""				
* histologySubGroup.histologySNUC 1..1 CodeableConcept "Histology Sinonasal undifferentiated carcinoma" """Specifies the histological subgroup for sinonasl undifferentiated carcinomas"""				
* histologySubGroup.nasalCavityAndParanasalSinusesSubsite 1..1 CodeableConcept "Nasal cavity and paranasal sinuses subsite" """Specifies the subsite for cancers occurred in nasal cavity and paranasal sinusess"""				
* histologySubGroup.nasopharynxSubsite 1..1 CodeableConcept "Nasopharynx  subsite" """Specifies the subsite for cancers occurred in nasopharynx"""				
* histologySubGroup.hypopharynxSubsite 1..1 CodeableConcept "Hypopharynx subsite" """Specifies the subsite for cancers occurred in hypopharynx"""				
* histologySubGroup.oropharynxSubsite 1..1 CodeableConcept "Oropharynx subsite" """Specifies the subsite for cancers occurred in oropharynx"""				
* histologySubGroup.larynxSubsite 1..1 CodeableConcept "Larynx subsite" """Specifies the subsite for cancers occurred in larynx"""				
* histologySubGroup.oralCavitySubsite 1..1 CodeableConcept "Oral cavity subsite" """Specifies the subsite for cancers occurred in oral cavity"""				
* histologySubGroup.lipSubsite 1..1 CodeableConcept "Lip subsite" """Specifies the subsite for cancers occurred in lip"""				
* plasmaticEbvDnaAtBaseline 0..1 CodeableConcept "Plasmatic EBV DNA at baseline" """Describes the result of EBV DNA plasma testing before treatment in NPC type II and III (WHO) """				
* hpvStatus 0..1 CodeableConcept "HPV status" """Describes the result of HPV tumor testing in oral carcinoma """				
* crpCReactiveProteinTested 0..1 CodeableConcept "CRP - C reactive protein tested" """Describes the result of C reactive protein testing"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
* patient ^comment = """A patient element data"""				
* dateOfDiagnosis ^comment = """YYYY-MM-DD"""				
* biopsyDoneBy ^comment = """The hospital; A different hospital"""				
* ageAtDiagnosis ^comment = """Whole number greater than 0"""				
* grading ^comment = """Check thisCheck this"""				
* histologyGroup ^comment = """WHO 2017 H&N Classification

Squamous; Adenocarcinoma; Neuroendocrine;Adenosquamous carcinoma; Teratocarcinosarcoma; NUT carcinoma; HPV-related Multiphenotypic; Olfactory neuroblastoma (esthesioneuroblastoma, esthesioneurocytoma, esthesioneuroepithelioma, Olfactory placode tumor); Odontogenic carcinoma;  Sinonasal undifferentiated Carcinoma(SNUC);Carcinoma /Carcinoma undifferentiated Squamous - 37396745
Adenocarcinoma - 40479582
Neuroendocrine - 4102373
Adenosquamous carcinoma - 4298029
 Teratocarcinosarcoma 
NUT carcinoma - 733922002
 HPV-related Multiphenotypic
 Olfactory neuroblastoma (esthesioneuroblastoma, esthesioneurocytoma, esthesioneuroepithelioma, Olfactory placode tumor) -
Odontogenic carcinoma - 40362118
  Sinonasal undifferentiated Carcinoma(SNUC)
Carcinoma /Carcinoma undifferentiated - 44783808"""				
				
* histologySubGroup.histologySquamous ^comment = """
Keratinizing squamous cell carcinoma, epidermoid carcinoma; Non-keratinizing squamous cell carcinoma; Non-keratinizing squamous cell carcinoma: SMARCB1 (INI-1)-deficient Sinonasal Carcinoma ;Non-keratinizing squamous cell carcinoma: Transitional (cylindrical cell, Schneiderian) carcinoma ;Spindle cell (sarcomatoid) squamous cell carcinoma;Spindle cell (sarcomatoid) squamous cell carcinoma: SMARCB1 (INI-1)-deficient Sinonasal Carcinoma ;Lymphoepithelial carcinoma, lymphoepithelioma like carcinoma;Basaloid squamous cell carcinoma;Squamous cell carcinoma: conventional,  NOS, clear cell, microinvasive, adenoid, acantholytic, pseudoglandular, giant cell ;Verrucous squamous cell carcinoma: NOS, cuniculatum carcinoma/Ackerman tumor; Papillary squamous cell carcinoma; Squamous cell carcinoma; Squamous cell carcinoma: HPV-positive; Squamous cell carcinoma: HPV-negative   Keratinizing squamous cell carcinoma, epidermoid carcinoma - 4078953
 Non-keratinizing squamous cell carcinoma -  4147603
 Non-keratinizing squamous cell carcinoma: SMARCB1 (INI-1)-deficient Sinonasal Carcinoma - (This should be a modifier? not clear)
Non-keratinizing squamous cell carcinoma: Transitional (cylindrical cell, Schneiderian) carcinoma - 4206785
Spindle cell (sarcomatoid) squamous cell carcinoma - 4277415
Spindle cell (sarcomatoid) squamous cell carcinoma: SMARCB1 (INI-1)-deficient Sinonasal Carcinoma -  (This should be a modifier? not clear)
Lymphoepithelial carcinoma, lymphoepithelioma like carcinoma - 4247661
Basaloid squamous cell carcinoma - 4029973
Squamous cell carcinoma: conventional,  NOS, clear cell, microinvasive, adenoid, acantholytic, pseudoglandular, giant cell 
Verrucous squamous cell carcinoma: NOS, cuniculatum carcinoma/Ackerman tumor - 4298030
 Papillary squamous cell carcinoma - 4191609
 Squamous cell carcinoma - 4103543
 Squamous cell carcinoma: HPV-positive - 37204531
 Squamous cell carcinoma: HPV-negative  -  37204532"""				
* histologySubGroup.histologyAdenocarcinoma ^comment = """ Intestinal-type (sinonasal) adenocarcinoma; NOS, non?intestinal-type (sinonasal), Endolymphatic sac low grade, Intestinal-type (salivary gland), cystoadenocarcinoma, mucinous, Ceruminous  (only in ear); Nasopharyngeal papillary adenocarcinoma, thyroid like low grade nasopharingeal papillary adenocarcinoma; Adenoid cystic carcinoma; Adenoid cystic carcinoma: solid type (> 30% solid); Mucoepidermoid carcinoma; Polymorphous, Cribriform  of minor salivary glands, Polymorphous (low grade), terminal duct carcinoma, lobular carcinoma; Acinic cell carcinoma;Clear cell carcinoma, hyalinising clear cell carcinoma; Basal cell adenocarcinoma, malignant dermal analog tumor;Salivary duct carcinoma, high grade ductal carcinoma;Salivary secretory adenocarcinoma (mammary analog, MASC); Secretory carcinoma; Myoepithelial carcinoma, malignant myoepithelioma; Carcinoma ex pleomorphic adenoma: NOS,  Intracapsular, minimally invasive, largely invasive; Sebaceous adenocarcinoma, Sebaceous lymphadenocarcinoma; Carcinosarcoma; Oncocytic carcinoma, oxyphilic carcinoma, oncocytic adenocarcinoma, oncocytic malignant oncocytoma; Salivary gland intraductal carcinoma (cribriform low grade adenocarcinoma)   Intestinal-type (sinonasal) adenocarcinoma - CHECK WHICH SON
 NOS, non?intestinal-type (sinonasal) - FROM HERE?,
Endolymphatic sac low grade, 
Intestinal-type (salivary gland) - 4312929, 
cystoadenocarcinoma - 4050978, 
mucinous - 4247921, 
Ceruminous  (only in ear) - 4238334
 Nasopharyngeal papillary adenocarcinoma - 605208, 
thyroid like low grade nasopharingeal papillary adenocarcinoma
 Adenoid cystic carcinoma - 4022895
 Adenoid cystic carcinoma: solid type (> 30% solid)
 Mucoepidermoid carcinoma - 4253608
Polymorphous
Cribriform  of minor salivary glands - THERE IS NO MINOR BUT MAJOR SALIVARY GLANDS
 Polymorphous (low grade) - 4030121
terminal duct carcinoma - NOT SURE
lobular carcinoma - 4232456
 Acinic cell carcinoma - 4164740
Clear cell carcinoma - 4148292, 
hyalinising clear cell carcinoma
 Basal cell adenocarcinoma - 4146684
malignant dermal analog tumor - NOT SURE
Salivary duct carcinoma - 4287334
high grade ductal carcinoma
Salivary secretory adenocarcinoma (mammary analog, MASC) - 37116978
 Secretory carcinoma - LOOKS LIKE NO MAPPING IN SNOMED
 Myoepithelial carcinoma, malignant myoepithelioma - 4029680
 Carcinoma ex pleomorphic adenoma: NOS,  Intracapsular, minimally invasive, largely invasive
 Sebaceous adenocarcinoma - 4182993
Sebaceous lymphadenocarcinoma - 37116976
 Carcinosarcoma -  4271564
 Oncocytic carcinoma
oxyphilic carcinoma - 4212379
oncocytic adenocarcinoma
oncocytic malignant oncocytoma
 Salivary gland intraductal carcinoma (cribriform low grade adenocarcinoma)  """				
* histologySubGroup.histologyNeuroendocrine ^comment = """Small cell neuroendocrineÿcarcinoma (SmCC)?,Poorly differentiated neuroendocrine carcinoma, small cell (grade 3);Large cell neuroendocrine carcinoma (LCNEC)?, Poorly differentiated neuroendocrine carcinoma, large cell (grade 3);Well-differentiated neuroendocrine carcinoma, Middle ear carcinoid tumor;Moderately differentiated neuroendocrine carcinomaSmall cell neuroendocrineÿcarcinoma (SmCC)? - 36714029
Poorly differentiated neuroendocrine carcinoma - 37018672
small cell (grade 3)
Large cell neuroendocrine carcinoma (LCNEC)? - 4029971
Poorly differentiated neuroendocrine carcinoma, large cell (grade 3)
Well-differentiated neuroendocrine carcinoma, 
Middle ear carcinoid tumor
Moderately differentiated neuroendocrine carcinoma"""				
* histologySubGroup.histologyOdontogenicCarcinoma ^comment = """
Odontogenic carcinoma, NOS, Ameloblastic carcinoma (primary, secondary intraosseous, secondary peripheral), Primary intraosseous carcinoma, Intraosseous carcinoma developed on odontogenic cyst, sclerosing odontogenic carcinoma; Clear cell odontogenic carcinoma; Gosht cell odontogenic carcinomaOdontogenic carcinoma, NOS - 4098585
Ameloblastic carcinoma (primary, secondary intraosseous, secondary peripheral) - 37116638
Secondary dedifferentiated intraosseous ameloblastic carcinoma
 - 37116980
Secondary dedifferentiated peripheral ameloblastic carcinoma - 37116979
 Primary intraosseous carcinoma - 37117009
Intraosseous carcinoma developed on odontogenic cyst - 37116887
sclerosing odontogenic carcinoma
 Clear cell odontogenic carcinoma - 734032001
Gosht cell odontogenic carcinoma - 37312303"""				
* histologySubGroup.histologySNUC ^comment = """
SMARCB1 (INI-1)-deficient Sinonasal undifferentiated Carcinoma;Sinonasal SMARCA4 deficient carcinoma;IDH2-mutated sinonasal undifferentiated neoplasmSMARCB1 (INI-1)-deficient Sinonasal undifferentiated Carcinoma
Sinonasal SMARCA4 deficient carcinoma
IDH2-mutated sinonasal undifferentiated neoplasm"""				
* histologySubGroup.nasalCavityAndParanasalSinusesSubsite ^comment = """AJCC 8th Edition Cancer Staging Manual

Nasal cavity;Maxillary sinus;Ethmoid sinus;Frontal sinus;Sphenoid sinusNasal cavity - 4088327
Maxillary sinus - 4050631
Ethmoid sinus - 4182234
Frontal sinus - 4204534
Sphenoid sinus - 4097172"""				
* histologySubGroup.nasopharynxSubsite ^comment = """AJCC 8th Edition Cancer Staging Manual

Superior wall of nasopharynx;Posterior wall of nasopharynx;Lateral wall of nasopharynx;Anterior wall of nasopharynxSuperior wall of nasopharynx - 4068978
Posterior wall of nasopharynx - 4146741
Lateral wall of nasopharynx - 4323979
Anterior wall of nasopharynx - 4220236"""				
* histologySubGroup.hypopharynxSubsite ^comment = """AJCC 8th Edition Cancer Staging Manual

Postcricoid region; Hypopharyngeal aspect of aryepiglottic fold;
Posterior wall of hypopharynx;Pyriform sinus
Postcricoid region - 4147741
 Hypopharyngeal aspect of aryepiglottic fold - 4262980
Posterior wall of hypopharynx - 4102600
Pyriform sinus - 4268741
"""				
* histologySubGroup.oropharynxSubsite ^comment = """https://link.springer.com/book/9783319406176

Base of tongue, NOS;
Soft palate NOS (excludes Nasopharyngcal surface C11.3);
Uvula;
Tonsillar fossa;
Lingual tonsil;
Tonsillar pillar;
Vallecula;
Anterior surface of epiglottis;
Lateral wall oropharynx;
Posterior wall oropharynx;
Branchial cleft (site of neoplosm);
Base of tongue, NOS - 4169910
Soft palate NOS (excludes Nasopharyngcal surface C11.3) - 4177005
Uvula - 4095284
Tonsillar fossa - 4138234
Lingual tonsil - 4068841
Tonsillar pillar - 4065073
Vallecula - 4173123
Anterior surface of epiglottis - 4283238
Lateral wall oropharynx - 4078066
Posterior wall oropharynx - 4045435
Branchial cleft (site of neoplosm) - 4235649"""				
* histologySubGroup.larynxSubsite ^comment = """AJCC 8th Edition Cancer Staging Manual
Glottis;Supraglottis;Subglottis;Laryngeal cartilage
Glottis - 4047227
Supraglottis - 4001049
Subglottis - 4002724
Laryngeal cartilage - 4279711
"""				
* histologySubGroup.oralCavitySubsite ^comment = """AJCC 8th Edition Cancer Staging Manual

Dorsal surface tongue, NOS;
Border of tongue;
Ventral surface of tongue NOS;
Anterior 2/3 of tongue NOS;
Upper gum;
Lower gum;
Anterior floor of mouth;
Lateral floor of mouth;
Overlapping lesion of floor of mouth;
Hard palate;
Cheek mucosa;
Vestibule of mouth;
Retromolar area;
Overlapping lesion of other and unspecified parts of mouth;Dorsal surface tongue, NOS - 36769609
Border of tongue - 4077986
Ventral surface of tongue - 4172794
Anterior 2/3 of tongue NOS
Upper gum - 4047029
Lower gum - 4210919
Anterior floor of mouth - 4181419
Lateral floor of mouth - 4103066
Overlapping lesion of floor of mouth - 44498040
Hard palate - 4234542
Cheek mucosa - 4057160
Vestibule of mouth - 4144069
Retromolar area - 36769865
Overlapping lesion of other and unspecified parts of mouth - """				
* histologySubGroup.lipSubsite ^comment = """AJCC 8th Edition Cancer Staging Manual

External lower lip;External upper lip;External lip, NOS;Mucosa of upper lip;Mucosa of lower lip;Mucosa of lip, NOS;Commissure of lipExternal lower lip - 4027546
External upper lip - 4134589
External lip, NOS - 4027545
Mucosa of upper lip -  36769700
Mucosa of lower lip - 36768548
Mucosa of lip, NOS - 4245168
Commissure of lip - 4307358"""				
* plasmaticEbvDnaAtBaseline ^comment = """ Positive; Negative; not tested; Positive - 9191
 Negative - 9189
not tested - 45878602"""				
* hpvStatus ^comment = """ Positive; Negative; Not tested; Positive - 9191
 Negative - 9189
not tested - 45878602"""				
* crpCReactiveProteinTested ^comment = """Positive; Negative; Not tested; Positive - 9191
 Negative - 9189
not tested - 45878602"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
