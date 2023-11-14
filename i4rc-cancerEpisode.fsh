//===================================================				
//  Logical Model				i4rc-cancerEpisode.fsh
//===================================================				
Logical: CancerEpisodeI4rc				
Id: CancerEpisode				
Title: ##34#Cancer  Episode##34#				
"Description:  ##334#Cancer Episode
Maturity Level: 0 Draft##334#"				
* patient 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject ##34#Patient##34# ##334#Patient element containing the data regarding the patient followed by the hospital##334#				
* dateOfDiagnosis 1..1 date ##34#Date of diagnosis (biopsy or surgical piece)##34# ##334#Date of the procedure from which the specimen was obtained that allowed the histological diagnosis.##334#				
* typeOfBiopsy 1..1 CodeableConcept ##34#Type of biopsy##34# ##334#Type of biopsy performed##334#				
* biopsyDoneBy 1..1 CodeableConcept ##34#Biopsy done by##34# ##334#Describes the institution where diagnostic procedure was performed##334#				
* ageAtDiagnosis 1..1 integer  ##34#Age at diagnosis##34# ##334#Age of the patient at the time of the diagnosis.##334#				
* radiotherapyInducedSarcoma 1..1 boolean ##34#Radiotherapy induced sarcoma##34# ##334#radiotherapy induced if the new tumour is in the field or marginal  the anatomical area that received high radiation dose; please specify the interval time from the radiotherapy treatment##334#				
* grading 0..1 CodeableConcept ##34#Grading##34# ##334#Grading of the cancer##334#				
* histologySubGroup 1..1 BackboneElement ##34#Histology Subgroups##34# ##334#Histology Subgroups##334#				
* histologySubGroup.histologySquamous 1..1 CodeableConcept ##34#Histology Squamous##34# ##334#Specifies the histological subgroup for squamous cancers##334#				
* histologySubGroup.histologyAdenocarcinoma 1..1 CodeableConcept ##34#Histology Adenocarcinoma##34# ##334#Specifies the histological subgroup for adenocarcinomas##334#				
* histologySubGroup.histologyNeuroendocrine 1..1 CodeableConcept ##34#Histology Neuroendocrine##34# ##334#Specifies the histological subgroup for neuroendocrine cancers ##334#				
* histologySubGroup.histologyOdontogenicCarcinoma 1..1 CodeableConcept ##34#Histology Odontogenic Carcinoma##34# ##334#Specifies the histological subgroup for odontogenic carcinomas##334#				
* histologySubGroup.histologySNUC 1..1 CodeableConcept ##34#Histology Sinonasal undifferentiated carcinoma##34# ##334#Specifies the histological subgroup for sinonasl undifferentiated carcinomas##334#				
* histologySubGroup.adipocyticTumours 1..1 CodeableConcept ##34#Histology subgroup Adipocytic tumours##34# ##334#Specifies the histological subgroup for adipocytic tumours##334#				
* histologySubGroup.fmtTumours 1..1 CodeableConcept ##34#Histology subgroup Fibroblastic and myofibroblastic tumours##34# ##334#Histology subgroup Fibroblastic and myofibroblastic tumours##334#				
"* histologySubGroup.socalledFibrohistiocyticTumours 1..1 CodeableConcept ##34#Histology subgroup So-called fibrohistiocytic tumours

##34# ##334#Histology subgroup So-called fibrohistiocytic tumours

##334#"				
* tumorGroup 1..1 BackboneElement ##34#Tumor group (TBD)##34# ##334#Tumor group (TBD)##334#				
* tumorGroup.vascularTumours 1..1 CodeableConcept ##34#Vascular tumours ##34# ##334#Vascular tumours ##334#				
"* tumorGroup.pericyticPerivascularTumours 1..1 CodeableConcept ##34#Pericytic (perivascular) tumours
##34# ##334#Pericytic (perivascular) tumours
##334#"				
* tumorGroup.smoothMuscleTumours 1..1 CodeableConcept ##34#Smooth muscle tumours##34# ##334#Smooth muscle tumours##334#				
* tumorGroup.skeletalMuscleTumours 1..1 CodeableConcept ##34#Skeletal muscle tumours##34# ##334#Skeletal muscle tumours##334#				
"* tumorGroup.chondroOsseousTumours 1..1 CodeableConcept ##34#Chondro-osseous tumours
##34# ##334#Chondro-osseous tumours
##334#"				
* tumorGroup.peripheralNerveSheathTumours 1..1 CodeableConcept ##34#Peripheral nerve sheath tumours##34# ##334#Peripheral nerve sheath tumours##334#				
* tumorGroup.tumoursOfUncertainDifferentiation 1..1 CodeableConcept ##34#Tumours of uncertain differentiation##34# ##334#Tumours of uncertain differentiation##334#				
* tumorGroup.undifSmallRCelSarcBonAndSofTis 1..1 CodeableConcept ##34#Undifferentiated small round cell sarcomas of bone and soft tissue##34# ##334#Undifferentiated small round cell sarcomas of bone and soft tissue##334#				
* tumorGroup.endStrAndRelatedTumours 1..1 CodeableConcept ##34#Endometrial stromal and related tumours##34# ##334#Endometrial stromal and related tumours##334#				
* tumorGroup.miscellaniousMesenchimalTumors 1..1 CodeableConcept ##34#Miscellanious mesenchimal tumors##34# ##334#Miscellanious mesenchimal tumors##334#				
* tumorGroup.mixedEpithelialAndMesenchymalTumours 1..1 CodeableConcept ##34#Mixed epithelial and mesenchymal tumours##34# ##334#Mixed epithelial and mesenchymal tumours##334#				
* subsites 1..1 BackboneElement ##34###34# ##334###334#				
* subsites.nasalCavityAndParanasalSinusesSubsite 1..1 CodeableConcept ##34#Nasal cavity and paranasal sinuses subsite##34# ##334#Specifies the subsite for cancers occurred in nasal cavity and paranasal sinusess##334#				
* subsites.nasopharynxSubsite 1..1 CodeableConcept ##34#Nasopharynx  subsite##34# ##334#Specifies the subsite for cancers occurred in nasopharynx##334#				
* subsites.hypopharynxSubsite 1..1 CodeableConcept ##34#Hypopharynx subsite##34# ##334#Specifies the subsite for cancers occurred in hypopharynx##334#				
* subsites.oropharynxSubsite 1..1 CodeableConcept ##34#Oropharynx subsite##34# ##334#Specifies the subsite for cancers occurred in oropharynx##334#				
* subsites.larynxSubsite 1..1 CodeableConcept ##34#Larynx subsite##34# ##334#Specifies the subsite for cancers occurred in larynx##334#				
* subsites.oralCavitySubsite 1..1 CodeableConcept ##34#Oral cavity subsite##34# ##334#Specifies the subsite for cancers occurred in oral cavity##334#				
* subsites.lipSubsite 1..1 CodeableConcept ##34#Lip subsite##34# ##334#Specifies the subsite for cancers occurred in lip##334#				
* subsites.upperAndLowerLimbsSubsite 1..1 CodeableConcept ##34#Upper and Lower limbs subsite##34# ##334#Specifies the subsite for cancers occurred in##334#				
* subsites.trunkWallSubsite 1..1 CodeableConcept ##34#Trunk wall subsite##34# ##334#Specifies the subsite for cancers occurred in##334#				
* subsites.intraAbdominalSubsite 1..1 CodeableConcept ##34#Intra abdominal subsite##34# ##334#Specifies the subsite for cancers occurred in##334#				
* subsites.intraThoracicSubsite 1..1 CodeableConcept ##34#Intra thoracic subsite##34# ##334#Specifies the subsite for cancers occurred in##334#				
* subsites.genitoUrinarySubsite 1..1 CodeableConcept ##34#Genito urinary subsite##34# ##334#Specifies the subsite for cancers occurred in##334#				
* subsites.headAndNeckSubsite 1..1 CodeableConcept ##34#Head and Neck subsite##34# ##334#Specifies the subsite for cancers occurred in##334#				
* subsites.breastSubsite 1..1 CodeableConcept ##34#Breast subsite##34# ##334#Specifies the subsite for cancers occurred in##334#				
* subsites.otherSubsite 1..1 CodeableConcept ##34#Other subsite##34# ##334#Specifies the subsite for cancers occurred in##334#				
* tumorSize 1..1 Quantity ##34#Tumor Size##34# ##334#(the longest diameter; longest dimension between pre operatory imaging and pathological specimen) cm ##334#				
"* depth 1..1 CodeableConcept ##34#Depth ##34# ##334#(for upper and lower limbs and superficial trunk)  superficial (superficial tumour is located exclusively above the investing fascia without invasion of the fascia), deep (deep tumour is located beneath or invade the investing fascia). All the others are deep by definition##334#"				
"* biopsyMitoticCount 1..1 Quantity ##34#Biopsy Mitotic count ##34# ##334#(Number/10HPF/1mm2, 50HPF/5mm2)##334#"				
* plasmaticEbvDnaAtBaseline 0..1 CodeableConcept ##34#Plasmatic EBV DNA at baseline##34# ##334#Describes the result of EBV DNA plasma testing before treatment in NPC type II and III (WHO) ##334#				
* hpvStatus 0..1 CodeableConcept ##34#HPV status##34# ##334#Describes the result of HPV tumor testing in oral carcinoma ##334#				
* crpCReactiveProteinTested 0..1 CodeableConcept ##34#CRP - C reactive protein tested##34# ##334#Describes the result of C reactive protein testing##334#				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
				
				
"* typeOfBiopsy ^comment = ##334#FNA
core-trcut
incisional
excisional
unplanned excision

Fine needle biopsy - 4171863
Core needle biopsy - 4321878
Incisional biopsy - 4321986
Excisional biopsy - 4228202
Excision - 4279903
##334#"				
				
				
"* radiotherapyInducedSarcoma ^comment = ##334#Radiation therapy induced change
Radiation therapy induced change - 37117814

##334#"				
"* grading ^comment = ##334#1
2
3
high
low
Grade-1 - 1634371
Grade-2 - 1634752
Grade-3 - 1633749
Grade-H - 1635587
Grade-L - 1634085##334#"				
* histologySubGroup ^comment = ##334#Added to the model for grouping elements##334#				
"* histologySubGroup.histologySquamous ^comment = ##334#
Keratinizing squamous cell carcinoma, epidermoid carcinoma; Non-keratinizing squamous cell carcinoma; Non-keratinizing squamous cell carcinoma: SMARCB1 (INI-1)-deficient Sinonasal Carcinoma ;Non-keratinizing squamous cell carcinoma: Transitional (cylindrical cell, Schneiderian) carcinoma ;Spindle cell (sarcomatoid) squamous cell carcinoma;Spindle cell (sarcomatoid) squamous cell carcinoma: SMARCB1 (INI-1)-deficient Sinonasal Carcinoma ;Lymphoepithelial carcinoma, lymphoepithelioma like carcinoma;Basaloid squamous cell carcinoma;Squamous cell carcinoma: conventional,  NOS, clear cell, microinvasive, adenoid, acantholytic, pseudoglandular, giant cell ;Verrucous squamous cell carcinoma: NOS, cuniculatum carcinoma/Ackerman tumor; Papillary squamous cell carcinoma; Squamous cell carcinoma; Squamous cell carcinoma: HPV-positive; Squamous cell carcinoma: HPV-negative   
Keratinizing squamous cell carcinoma, epidermoid carcinoma - 4078953
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
 Squamous cell carcinoma: HPV-negative  -  37204532##334#"				
"* histologySubGroup.histologyAdenocarcinoma ^comment = ##334# Intestinal-type (sinonasal) adenocarcinoma; NOS, non?intestinal-type (sinonasal), Endolymphatic sac low grade, Intestinal-type (salivary gland), cystoadenocarcinoma, mucinous, Ceruminous  (only in ear); Nasopharyngeal papillary adenocarcinoma, thyroid like low grade nasopharingeal papillary adenocarcinoma; Adenoid cystic carcinoma; Adenoid cystic carcinoma: solid type (> 30% solid); Mucoepidermoid carcinoma; Polymorphous, Cribriform  of minor salivary glands, Polymorphous (low grade), terminal duct carcinoma, lobular carcinoma; Acinic cell carcinoma;Clear cell carcinoma, hyalinising clear cell carcinoma; Basal cell adenocarcinoma, malignant dermal analog tumor;Salivary duct carcinoma, high grade ductal carcinoma;Salivary secretory adenocarcinoma (mammary analog, MASC); Secretory carcinoma; Myoepithelial carcinoma, malignant myoepithelioma; Carcinoma ex pleomorphic adenoma: NOS,  Intracapsular, minimally invasive, largely invasive; Sebaceous adenocarcinoma, Sebaceous lymphadenocarcinoma; Carcinosarcoma; Oncocytic carcinoma, oxyphilic carcinoma, oncocytic adenocarcinoma, oncocytic malignant oncocytoma; Salivary gland intraductal carcinoma (cribriform low grade adenocarcinoma)  
 Intestinal-type (sinonasal) adenocarcinoma - CHECK WHICH SON
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
 Salivary gland intraductal carcinoma (cribriform low grade adenocarcinoma)  ##334#"				
"* histologySubGroup.histologyNeuroendocrine ^comment = ##334#Small cell neuroendocrineÿcarcinoma (SmCC)?,Poorly differentiated neuroendocrine carcinoma, small cell (grade 3);Large cell neuroendocrine carcinoma (LCNEC)?, Poorly differentiated neuroendocrine carcinoma, large cell (grade 3);Well-differentiated neuroendocrine carcinoma, Middle ear carcinoid tumor;Moderately differentiated neuroendocrine carcinoma
Small cell neuroendocrineÿcarcinoma (SmCC)? - 36714029
Poorly differentiated neuroendocrine carcinoma - 37018672
small cell (grade 3)
Large cell neuroendocrine carcinoma (LCNEC)? - 4029971
Poorly differentiated neuroendocrine carcinoma, large cell (grade 3)
Well-differentiated neuroendocrine carcinoma, 
Middle ear carcinoid tumor
Moderately differentiated neuroendocrine carcinoma##334#"				
"* histologySubGroup.histologyOdontogenicCarcinoma ^comment = ##334#
Odontogenic carcinoma, NOS, Ameloblastic carcinoma (primary, secondary intraosseous, secondary peripheral), Primary intraosseous carcinoma, Intraosseous carcinoma developed on odontogenic cyst, sclerosing odontogenic carcinoma; Clear cell odontogenic carcinoma; Gosht cell odontogenic carcinoma
Odontogenic carcinoma, NOS - 4098585
Ameloblastic carcinoma (primary, secondary intraosseous, secondary peripheral) - 37116638
Secondary dedifferentiated intraosseous ameloblastic carcinoma
 - 37116980
Secondary dedifferentiated peripheral ameloblastic carcinoma - 37116979
 Primary intraosseous carcinoma - 37117009
Intraosseous carcinoma developed on odontogenic cyst - 37116887
sclerosing odontogenic carcinoma
 Clear cell odontogenic carcinoma - 734032001
Gosht cell odontogenic carcinoma - 37312303##334#"				
"* histologySubGroup.histologySNUC ^comment = ##334#
SMARCB1 (INI-1)-deficient Sinonasal undifferentiated Carcinoma;Sinonasal SMARCA4 deficient carcinoma;IDH2-mutated sinonasal undifferentiated neoplasm
SMARCB1 (INI-1)-deficient Sinonasal undifferentiated Carcinoma
Sinonasal SMARCA4 deficient carcinoma
IDH2-mutated sinonasal undifferentiated neoplasm##334#"				
"* histologySubGroup.adipocyticTumours ^comment = ##334#Atypical lipomatous tumour/ Liposarcoma, well-differentiated, NOS
Dedifferentiated liposarcoma
Myxoid liposarcoma
Pleomorphic liposarcoma
Myxoid pleomorphic liposarcoma

Liposarcoma, well differentiated - 4102790
Dedifferentiated liposarcoma - 4284833
Myxoid liposarcoma - 4101123
Pleomorphic liposarcoma - 4010104
Myxoid pleomorphic liposarcoma - 4300687
##334#"				
"* histologySubGroup.fmtTumours ^comment = ##334#Palmar/plantar-type fibromatosis
Desmoid-type fibromatosis
Lipofibromatosis
Giant cell fibroblastoma
Dermatofibrosarcoma protuberans NOS
Solitary fibrous tumour, benign; NOS; malignant
Inflammatory myofibroblastic tumour
Low-grade myofibroblastic sarcoma
Superficial CD34-positive fibroblastic tumour
Myxoinflammatory fibroblastic sarcoma
Infantile fibrosarcoma
Adult fibrosarcoma
Myxofibrosarcoma
Low-grade fibromyxoid sarcoma
Sclerosing epithelioid fibrosarcoma

Palmar/plantar-type fibromatosis - 45766452
Desmoid-type fibromatosis - 4264204
Lipofibromatosis - 45766468
Giant cell fibroblastoma - 4030132
Dermatofibrosarcoma protuberans - 4295283
Solitary fibrous tumor - 4030130
Solitary fibrous tumor, malignant - 4028562
Myofibroblastic tumour - 4021373
Low-grade myofibroblastic sarcoma - 45766454
Cellular fibroma - 4029679
Myxoinflammatory fibroblastic sarcoma - 45766450
Infantile fibrosarcoma - 4178132
Fibrosarcoma - 4202374
Myxofibrosarcoma - 45771359
Low-grade fibromyxoid sarcoma - 45771361
Sclerosing epithelioid fibrosarcoma - 45766456
##334#"				
"* histologySubGroup.socalledFibrohistiocyticTumours ^comment = ##334#Plexiform fibrohistiocytic tumour
Giant cell tumour of soft parts NOS
Tenosynovial giant cell tumor

Plexiform fibrohistiocytic tumour - 4029525
Giant cell tumour of soft parts - 4218898
Tenosynovial giant cell tumor - 4030140
Tenosynovial giant cell tumor, diffuse - 45766525
Malignant tenosynovial giant cell tumor - 4029655
##334#"				
* tumorGroup ^comment = ##334#TO BE CHECKED . Added tpo group other tumors##334#				
"* tumorGroup.vascularTumours ^comment = ##334#Epithelioid haemangioendothelioma NOS
Angiosarcoma
Kaposiform haemangioendothelioma ha anche la forma benigna 9161/0 Acquired tufted haemangioma. teniamo anche la fomra benigna?
Retiform haemangioendothelioma
Papillary intralymphatic angioendothelioma
Composite haemangioendothelioma
Pseudomyogenic (epithelioid sarcoma?like) haemangioendothelioma

Epithelioid haemangioendothelioma - 4207381
Angiosarcoma - 3661612
Hemangioendothelioma - 4281384
Retiform haemangioendothelioma - 45766493
Endovascular papillary angioendothelioma - 4030138
Composite haemangioendothelioma - 45766494
Pseudomyogenic (epithelioid sarcoma-like) hemangioendothelioma - 45766492

##334#"				
"* tumorGroup.pericyticPerivascularTumours ^comment = ##334#Glomus tumour NOS

Glomus tumour - 40571984
##334#"				
"* tumorGroup.smoothMuscleTumours ^comment = ##334#Smooth muscle tumour of uncertain malignant potential
Epithelioid smooth muscle tumor of uncertain malignant potential
Myxoid smooth muscle tumour of uncertain mailgnant potential-Spindle smooth muscle tumor of uncertain malignant potential
Metastasizing leiomyoma
Leiomyosarcoma NOS
Epithelioid  leiomyosarcoma
Myxoid leiomyosarcoma
Metastasizing leiomyoma

Smooth muscle tumour - 4327493
Epithelioid smooth muscle tumor of uncertain malignant potential - 607803
Myxoid smooth muscle tumour of uncertain mailgnant potential - 600675
Spindle smooth muscle tumor of uncertain malignant potential
Metastasizing leiomyoma - 4029023
Leiomyosarcoma - 4201415
Epithelioid  leiomyosarcoma - 4173148
Myxoid leiomyosarcoma - 4059632
Metastasizing leiomyoma - 4029023
##334#"				
"* tumorGroup.skeletalMuscleTumours ^comment = ##334#Embryonal rhabdomyosarcoma NOS
Alveolar rhabdomyosarcoma
Pleomorphic rhabdomyosarcoma NOS
Spindle cell / sclerosing rhabdomyosarcoma
Ectomesenchymoma

Embryonal rhabdomyosarcoma - 4031038
Alveolar rhabdomyosarcoma - 4272931
Pleomorphic rhabdomyosarcoma - 4298312
Spindle cell rhabdomyosarcoma - 4029528
Rhabdomyosarcoma with ganglionic differentiation - 4029024
##334#"				
"* tumorGroup.chondroOsseousTumours ^comment = ##334#Extraskeletal osteosarcoma

Extraskeletal osteosarcoma - 4298240
##334#"				
"* tumorGroup.peripheralNerveSheathTumours ^comment = ##334#Malignant peripheral nerve sheath tumour NOS
Malignant melanotic nerve sheath tumour
Granular cell tumour NOS
Granular cell tumour, malignant

Malignant peripheral nerve sheath tumour - 4062426
        Melanotic malignant peripheral nerve sheath tumor - 4102399
Granular cell tumour - 4005360
Granular cell tumour, malignant - 4027842
##334#"				
"* tumorGroup.tumoursOfUncertainDifferentiation ^comment = ##334#Atypical fibroxanthoma
Angiomatoid fibrous histiocytoma
Pleomorphic hyalinizing angiectatic tumour
Haemosiderotic fibrolipomatous tumour
NTRK-rearranged spindle cell neoplasms
Synovial sarcoma NOS
Epithelioid sarcoma
Alveolar soft part sarcoma
Clear cell sarcoma NOS
Extra-skeletal myxoid chondrosarcoma
Desmoplastic small round cell tumour
Extra-renal rhabdoid tumour NOS
PEComas
Intimal sarcoma
Undifferentiated sarcoma
Myoepithelioma
Ossifying fibromyxoid tumour
Phosphaturic mesenchymal tumour, malignant
Aggressive angiomyxoma
Angiomatoid fibrous histiocytoma
NTRK-rearranged spindle cell neoplasm (emerging)

        Atypical fibrous histiocytoma - 4096931
Angiomatoid fibrous histiocytoma - 4029526
Pleomorphic hyalinizing angiectatic tumour - 45766448
Haemosiderotic fibrolipomatous tumour
NTRK-rearranged spindle cell neoplasms - CUSTOM CODE
Synovial sarcoma - 4268491
Epithelioid sarcoma - 4244886
Alveolar soft part sarcoma - 4339208
Clear cell sarcoma - 4155072
Myxoid chondrosarcoma - 4328092
Desmoplastic small round cell tumor - 4029522
Malignant rhabdoid tumor - 4307938
Perivascular epithelioid tumor, benign - 45771358
Perivascular epithelioid tumor, malignant - 45766447
Perivascular epithelioid cell tumor - 4304780
Intimal sarcoma - 45766495
Undifferentiated sarcoma - 4029021
Myoepithelioma - 4239519
Ossifying fibromyxoid tumour - 4028565
Phosphaturic mesenchymal tumour, malignant - 45766485
Aggressive angiomyxoma - 4239956
Angiomatoid fibrous histiocytoma - 4029526
NTRK-rearranged spindle cell neoplasm (emerging)##334#"				
"* tumorGroup.undifSmallRCelSarcBonAndSofTis ^comment = ##334#Ewing sarcoma
Round cell sarcoma withÿEWSR1?non-ETS fusions
CIC-rearranged sarcoma
Sarcoma withÿBCORÿgenetic alterations

Ewing sarcoma - 45766528
Round cell sarcoma withÿEWSR1?non-ETS fusions
CIC-rearranged sarcoma
Sarcoma withÿBCORÿgenetic alterations
##334#"				
"* tumorGroup.endStrAndRelatedTumours ^comment = ##334#Endometrial stromal sarcoma, high grade
Endometrial stromal sarcoma, low grade

Endometrial stromal sarcoma, high grade - 4290926
Endometrial stromal sarcoma, low grade - 4028557
##334#"				
"* tumorGroup.miscellaniousMesenchimalTumors ^comment = ##334#Uterine tumour resembling ovarian sex cord tumour
Phyllodes tumour, benign
Phyllodes tumour NOS
Phyllodes tumour, borderline
Phyllodes tumour, malignant
Follicular dendritic cell sarcoma
Histiocytic sarcoma
Interdigitating dendritic cell sarcoma
Langherans cell sarcoma
Fibroblastic reticular cell tumour
Biphenotypic sinonasal sarcoma

Uterine tumour resembling ovarian sex cord tumour - 45771357
Benign phyllodes tumor - 4040991
Borderline phyllodes tumor - 4323562
Phyllodes tumour, malignant - 4337106
Follicular dendritic cell sarcoma - 4028710
Histiocytic sarcoma - 4029172
Interdigitating dendritic cell sarcoma - 4028709
Langherans cell sarcoma - 4029173
Fibroblastic reticular cell tumour - 42872917	
Biphenotypic sinonasal sarcoma - 37311513
##334#"				
"* tumorGroup.mixedEpithelialAndMesenchymalTumours ^comment = ##334#Adenosarcoma; please clarify if adenosarcoma with sarcomatous overgrowth

Adenosarcoma - 4135215##334#"				
				
"* subsites.nasalCavityAndParanasalSinusesSubsite ^comment = ##334#AJCC 8th Edition Cancer Staging Manual

Nasal cavity;Maxillary sinus;Ethmoid sinus;Frontal sinus;Sphenoid sinus
Nasal cavity - 4088327
Maxillary sinus - 4050631
Ethmoid sinus - 4182234
Frontal sinus - 4204534
Sphenoid sinus - 4097172##334#"				
"* subsites.nasopharynxSubsite ^comment = ##334#AJCC 8th Edition Cancer Staging Manual

Superior wall of nasopharynx;Posterior wall of nasopharynx;Lateral wall of nasopharynx;Anterior wall of nasopharynx
Superior wall of nasopharynx - 4068978
Posterior wall of nasopharynx - 4146741
Lateral wall of nasopharynx - 4323979
Anterior wall of nasopharynx - 4220236##334#"				
"* subsites.hypopharynxSubsite ^comment = ##334#AJCC 8th Edition Cancer Staging Manual

Postcricoid region; Hypopharyngeal aspect of aryepiglottic fold;
Posterior wall of hypopharynx;Pyriform sinus

Postcricoid region - 4147741
 Hypopharyngeal aspect of aryepiglottic fold - 4262980
Posterior wall of hypopharynx - 4102600
Pyriform sinus - 4268741
##334#"				
"* subsites.oropharynxSubsite ^comment = ##334#https://link.springer.com/book/9783319406176

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
Branchial cleft (site of neoplosm) - 4235649##334#"				
"* subsites.larynxSubsite ^comment = ##334#AJCC 8th Edition Cancer Staging Manual
Glottis;Supraglottis;Subglottis;Laryngeal cartilage

Glottis - 4047227
Supraglottis - 4001049
Subglottis - 4002724
Laryngeal cartilage - 4279711
##334#"				
"* subsites.oralCavitySubsite ^comment = ##334#AJCC 8th Edition Cancer Staging Manual

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
Overlapping lesion of other and unspecified parts of mouth;
Dorsal surface tongue, NOS - 36769609
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
Overlapping lesion of other and unspecified parts of mouth - ##334#"				
"* subsites.lipSubsite ^comment = ##334#AJCC 8th Edition Cancer Staging Manual

External lower lip;External upper lip;External lip, NOS;Mucosa of upper lip;Mucosa of lower lip;Mucosa of lip, NOS;Commissure of lip
External lower lip - 4027546
External upper lip - 4134589
External lip, NOS - 4027545
Mucosa of upper lip -  36769700
Mucosa of lower lip - 36768548
Mucosa of lip, NOS - 4245168
Commissure of lip - 4307358##334#"				
"* subsites.upperAndLowerLimbsSubsite ^comment = ##334#Hand 
Wrist 
Forearm
Elbow/Antecubital fossa 
Upper arm 
Foot
Ankle
Leg
Knee/popliteal fossa
Upper leg 
Deltoid
Supraclavicular 
Periscapular
Trapezius
Groin 
Buttock
Pectoral
Axilla

Hand structure - 4310976
Wrist region structure - 4220073
Forearm structure - 4032953
Elbow region structure - 4027910
Antecubital fossa (surface region) - 4348994
Upper arm structure - 4165266
Foot structure- 4211098
Ankle region structure - 4142359
Lower leg structure - 4107527
Knee region structure - 4217806
popliteal fossa structure - 4138531
Upper leg - 4090445
Deltoid - 4291935
Supraclavicular - 4088464
Periscapular region - 42605854
Trapezius - 4136969
Groin - 4109459
Buttock - 4263335
Pectoral - 4096078
Axilla - 4157836##334#"				
"* subsites.trunkWallSubsite ^comment = ##334#Thoracic Wall 
Abdominal Wall 
Paravertebral ? thoracolumbar
Paravertebral ? cervical

Joint structure of thoracic wall - 4088614
Anterior abdominal wall structure - 4244412
        Posterior abdominal wall structure - 4330865
Paravertebral ? thoracolumbar - 
Paravertebral ? cervical
##334#"				
"* subsites.intraAbdominalSubsite ^comment = ##334#Retroperitoneum
Vessels (please select: inferior vena cava, aorta, iliac vessels, renal vessels, gonadal vessels, mesenteric vessels, others)
Pelvis 
Esophagus
Stomach
Duodenum
Jejunum/Ileus
Colon
Rectum 
Mesentery

Retroperitoneal compartment structure - 4220536
Vessels (please select: inferior vena cava, aorta, iliac vessels, renal vessels, gonadal vessels, mesenteric vessels, others)
        Inferior vena cava structure - 4271699
Iliac vessel - 4193451
Structure of renal artery - 4154880
Gonadal artery - 4157844
Structure of mesenteric artery - 4314264
Other vessels - WILDCARD*
Renal pelvis structure - 4094242
Major pelvis structure - 4229753
Region of esophagus - 4075991
Stomach - 4288283
Duodenal structure - 4302112
Jejunal structure - 4065077
Stricture of ileum - 4316356
Colon structure - 4215634
Rectum structure - 4144541
Mesentery - 4233095
##334#"				
"* subsites.intraThoracicSubsite ^comment = ##334#Lung
Heart
Pleura 
Mediastinum
Great vessels (please select: superior vena cava, aorta, pulmonary vessels, subclavian vessels, others)

Lung structure - 4213162
Heart structure - 4217142
Pleura structure - 4150673
Region of mediastinum - 4088610
Great vessels (please select: superior vena cava, aorta, pulmonary vessels, subclavian vessels, others)
Superior vena cava structure - 4167648
Aorta part - 4001033
Stricture of pulmonary vessel - 4035327
Structure of subclavian artery - 4272388
Other - WILDCARD##334#"				
"* subsites.genitoUrinarySubsite ^comment = ##334#Adrenal glands
Kidney
Urether
Bladder
Prostate
Seminal Vescicle
Spermatic Cord
Testis
Penis
Utero 
Ovary
Fallopian tube
Vagina
Vulva

Bilateral adrenal glands - 4047078
Kidney structure - 4271678
Region of ureter - 4078617
        Urinary bladder structure - 4232481
Structure of lobe of prostate - 4034365
Seminal Vescicle structure - 4277442
Spermatic Cord structure - 4172591
Testis structure - 4238088
Penile structure - 4077311 
Uterine structure - 4149192
Ovarian structure - 4049448
Fallopian tube structure - 4151444
Vaginal structure - 4296022
Vulval structure - 4166066
##334#"				
"* subsites.headAndNeckSubsite ^comment = ##334#Head and neck
Face and/or neck structure - 4122633##334#"				
"* subsites.breastSubsite ^comment = ##334#Breast
Breast structure - 4298444##334#"				
				
				
				
				
"* plasmaticEbvDnaAtBaseline ^comment = ##334# Positive; Negative; not tested;
 Positive - 9191
 Negative - 9189
not tested - 45878602##334#"				
"* hpvStatus ^comment = ##334# Positive; Negative; Not tested;
 Positive - 9191
 Negative - 9189
not tested - 45878602##334#"				
"* crpCReactiveProteinTested ^comment = ##334#Positive; Negative; Not tested;
 Positive - 9191
 Negative - 9189
not tested - 45878602##334#"				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
				
"* patient insert ObligationActorAndCode($actor-headneck, #handle)"				
"* dateOfDiagnosis insert ObligationActorAndCode($actor-headneck, #handle)"				
				
"* biopsyDoneBy insert ObligationActorAndCode($actor-headneck, #handle)"				
"* ageAtDiagnosis insert ObligationActorAndCode($actor-headneck, #handle)"				
				
"* grading insert ObligationActorAndCode($actor-headneck, #handle)"				
"* histologySubGroup insert ObligationActorAndCode($actor-headneck, #handle)"				
"* histologySubGroup.histologySquamous insert ObligationActorAndCode($actor-headneck, #handle)"				
"* histologySubGroup.histologyAdenocarcinoma insert ObligationActorAndCode($actor-headneck, #handle)"				
"* histologySubGroup.histologyNeuroendocrine insert ObligationActorAndCode($actor-headneck, #handle)"				
"* histologySubGroup.histologyOdontogenicCarcinoma insert ObligationActorAndCode($actor-headneck, #handle)"				
"* histologySubGroup.histologySNUC insert ObligationActorAndCode($actor-headneck, #handle)"				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
"* subsites insert ObligationActorAndCode($actor-headneck, #handle)"				
"* subsites.nasalCavityAndParanasalSinusesSubsite insert ObligationActorAndCode($actor-headneck, #handle)"				
"* subsites.nasopharynxSubsite insert ObligationActorAndCode($actor-headneck, #handle)"				
"* subsites.hypopharynxSubsite insert ObligationActorAndCode($actor-headneck, #handle)"				
"* subsites.oropharynxSubsite insert ObligationActorAndCode($actor-headneck, #handle)"				
"* subsites.larynxSubsite insert ObligationActorAndCode($actor-headneck, #handle)"				
"* subsites.oralCavitySubsite insert ObligationActorAndCode($actor-headneck, #handle)"				
"* subsites.lipSubsite insert ObligationActorAndCode($actor-headneck, #handle)"				
				
				
				
				
				
				
				
				
				
				
				
"* plasmaticEbvDnaAtBaseline insert ObligationActorAndCode($actor-headneck, #handle)"				
"* hpvStatus insert ObligationActorAndCode($actor-headneck, #handle)"				
"* crpCReactiveProteinTested insert ObligationActorAndCode($actor-headneck, #handle)"				
//--- END				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
				
"* patient insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* dateOfDiagnosis insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* typeOfBiopsy insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* biopsyDoneBy insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* ageAtDiagnosis insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* radiotherapyInducedSarcoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* grading insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup.histologySquamous insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup.histologyAdenocarcinoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup.histologyNeuroendocrine insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup.histologyOdontogenicCarcinoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup.histologySNUC insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup.adipocyticTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup.fmtTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* histologySubGroup.socalledFibrohistiocyticTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.vascularTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.pericyticPerivascularTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.smoothMuscleTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.skeletalMuscleTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.chondroOsseousTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.peripheralNerveSheathTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.tumoursOfUncertainDifferentiation insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.undifSmallRCelSarcBonAndSofTis insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.endStrAndRelatedTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.miscellaniousMesenchimalTumors insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorGroup.mixedEpithelialAndMesenchymalTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
				
				
				
				
				
				
				
				
"* subsites.upperAndLowerLimbsSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* subsites.trunkWallSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* subsites.intraAbdominalSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* subsites.intraThoracicSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* subsites.genitoUrinarySubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* subsites.headAndNeckSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* subsites.breastSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* subsites.otherSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* tumorSize insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* depth insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
"* biopsyMitoticCount insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)"				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
