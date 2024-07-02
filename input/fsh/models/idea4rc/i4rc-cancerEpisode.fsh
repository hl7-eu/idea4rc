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
* typeOfBiopsy 1..1 CodeableConcept "Type of biopsy" """Type of biopsy performed"""				
* biopsyDoneBy 1..1 CodeableConcept "Biopsy done by" """Describes the institution where diagnostic procedure was performed"""				
* ageAtDiagnosis 1..1 integer  "Age at diagnosis" """Age of the patient at the time of the diagnosis."""				
* radiotherapyInducedSarcoma 1..1 boolean "Radiotherapy induced sarcoma" """radiotherapy induced if the new tumour is in the field or marginal  the anatomical area that received high radiation dose; please specify the interval time from the radiotherapy treatment"""				
* grading 0..1 CodeableConcept "Grading" """Grading of the cancer"""				
* hnClassification 1..1 BackboneElement "Classification for Head and Neck tumors" """Classification for Head and Neck tumors"""				
* hnClassification.histologySquamous 1..1 CodeableConcept "Histology Squamous" """Specifies the histological subgroup for squamous cancers"""				
* hnClassification.histologyAdenocarcinoma 1..1 CodeableConcept "Histology Adenocarcinoma" """Specifies the histological subgroup for adenocarcinomas"""				
* hnClassification.histologyNeuroendocrine 1..1 CodeableConcept "Histology Neuroendocrine" """Specifies the histological subgroup for neuroendocrine cancers """				
* hnClassification.histologyOdontogenicCarcinoma 1..1 CodeableConcept "Histology Odontogenic Carcinoma" """Specifies the histological subgroup for odontogenic carcinomas"""				
* hnClassification.histologySNUC 1..1 CodeableConcept "Histology Sinonasal undifferentiated carcinoma" """Specifies the histological subgroup for sinonasl undifferentiated carcinomas"""				
* hnClassification.adipocyticTumours 1..1 CodeableConcept "Histology subgroup Adipocytic tumours" """Specifies the histological subgroup for adipocytic tumours"""				
* hnClassification.fmtTumours 1..1 CodeableConcept "Histology subgroup Fibroblastic and myofibroblastic tumours" """Histology subgroup Fibroblastic and myofibroblastic tumours"""				
* hnClassification.socalledFibrohistiocyticTumours 1..1 CodeableConcept "Histology subgroup So-called fibrohistiocytic tumours" """Histology subgroup So-called """				
* sarcomaClassification 1..1 BackboneElement "Sarcoma classification" """Sarcoma classification"""				
* sarcomaClassification.vascularTumours 1..1 CodeableConcept "Vascular tumours" """Vascular tumours"""				
* sarcomaClassification.pericyticPerivascularTumours 1..1 CodeableConcept "Pericytic (perivascular) tumours" """Pericytic (perivascular) tumours"""				
* sarcomaClassification.smoothMuscleTumours 1..1 CodeableConcept "Smooth muscle tumours" """Smooth muscle tumours"""				
* sarcomaClassification.skeletalMuscleTumours 1..1 CodeableConcept "Skeletal muscle tumours" """Skeletal muscle tumours"""				
* sarcomaClassification.chondroOsseousTumours 1..1 CodeableConcept "Chondro-osseous tumours" """Chondro-osseous tumours"""				
* sarcomaClassification.peripheralNerveSheathTumours 1..1 CodeableConcept "Peripheral nerve sheath tumours" """Peripheral nerve sheath tumours"""				
* sarcomaClassification.tumoursOfUncertainDifferentiation 1..1 CodeableConcept "Tumours of uncertain differentiation" """Tumours of uncertain differentiation"""				
* sarcomaClassification.undifSmallRCelSarcBonAndSofTis 1..1 CodeableConcept "Undifferentiated small round cell sarcomas of bone and soft tissue" """Undifferentiated small round cell sarcomas of bone and soft tissue"""				
* sarcomaClassification.endStrAndRelatedTumours 1..1 CodeableConcept "Endometrial stromal and related tumours" """Endometrial stromal and related tumours"""				
* sarcomaClassification.miscellaniousMesenchimalTumors 1..1 CodeableConcept "Miscellanious mesenchimal tumors" """Miscellanious mesenchimal tumors"""				
* sarcomaClassification.mixedEpithelialAndMesenchymalTumours 1..1 CodeableConcept "Mixed epithelial and mesenchymal tumours" """Mixed epithelial and mesenchymal tumours"""				
* subsites 1..1 BackboneElement "subsites" """subsites"""				
* subsites.nasalCavityAndParanasalSinuses 1..1 CodeableConcept "Nasal cavity and paranasal sinuses subsite" """Specifies the subsite for cancers occurred in nasal cavity and paranasal sinusess"""				
* subsites.nasopharynx 1..1 CodeableConcept "Nasopharynx  subsite" """Specifies the subsite for cancers occurred in nasopharynx"""				
* subsites.hypopharynx 1..1 CodeableConcept "Hypopharynx subsite" """Specifies the subsite for cancers occurred in hypopharynx"""				
* subsites.oropharynx 1..1 CodeableConcept "Oropharynx subsite" """Specifies the subsite for cancers occurred in oropharynx"""				
* subsites.larynx 1..1 CodeableConcept "Larynx subsite" """Specifies the subsite for cancers occurred in larynx"""				
* subsites.oralCavity 1..1 CodeableConcept "Oral cavity subsite" """Specifies the subsite for cancers occurred in oral cavity"""				
* subsites.lip 1..1 CodeableConcept "Lip subsite" """Specifies the subsite for cancers occurred in lip"""				
* subsites.upperAndLowerLimbs 1..1 CodeableConcept "Upper and Lower limbs subsite" """Specifies the subsite for cancers occurred in"""				
* subsites.trunkWallSubsite 1..1 CodeableConcept "Trunk wall subsite" """Specifies the subsite for cancers occurred in"""				
* subsites.intraAbdominalSubsite 1..1 CodeableConcept "Intra abdominal subsite" """Specifies the subsite for cancers occurred in"""				
* subsites.intraThoracicSubsite 1..1 CodeableConcept "Intra thoracic subsite" """Specifies the subsite for cancers occurred in"""				
* subsites.genitoUrinarySubsite 1..1 CodeableConcept "Genito urinary subsite" """Specifies the subsite for cancers occurred in"""				
* subsites.headAndNeckSubsite 1..1 CodeableConcept "Head and Neck subsite" """Specifies the subsite for cancers occurred in"""				
* subsites.breast 1..1 CodeableConcept "Breast subsite" """Specifies the subsite for cancers occurred in"""				
* subsites.others 1..1 CodeableConcept "Other subsite" """Specifies the subsite for cancers occurred in"""				
* tumorSize 1..1 Quantity "Tumor Size" """(the longest diameter; longest dimension between pre operatory imaging and pathological specimen) cm """				
* depth 1..1 CodeableConcept "Depth" """(for upper and lower limbs and superficial trunk)  superficial (superficial tumour is located exclusively above the investing fascia without invasion of the fascia), deep (deep tumour is located beneath or invade the investing fascia). All the others are deep by definition"""				
* biopsyMitoticCount 1..1 Quantity "Biopsy Mitotic count" """(Number/10HPF/1mm2, 50HPF/5mm2)"""				
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
				
				
* typeOfBiopsy ^comment = """FNA
core-trcut
incisional
excisional
unplanned excision

Fine needle biopsy - 4171863
Core needle biopsy - 4321878
Incisional biopsy - 4321986
Excisional biopsy - 4228202
Excision - 4279903
"""				
				
				
* radiotherapyInducedSarcoma ^comment = """Radiation therapy induced change
Radiation therapy induced change - 37117814

"""				
* grading ^comment = """1
2
3
high
low
Grade-1 - 1634371
Grade-2 - 1634752
Grade-3 - 1633749
Grade-H - 1635587
Grade-L - 1634085"""				
* hnClassification ^comment = """Added to the model for grouping elements"""				
* hnClassification.histologySquamous ^comment = """
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
 Squamous cell carcinoma: HPV-negative  -  37204532"""				
* hnClassification.histologyAdenocarcinoma ^comment = """ Intestinal-type (sinonasal) adenocarcinoma; NOS, non?intestinal-type (sinonasal), Endolymphatic sac low grade, Intestinal-type (salivary gland), cystoadenocarcinoma, mucinous, Ceruminous  (only in ear); Nasopharyngeal papillary adenocarcinoma, thyroid like low grade nasopharingeal papillary adenocarcinoma; Adenoid cystic carcinoma; Adenoid cystic carcinoma: solid type (> 30% solid); Mucoepidermoid carcinoma; Polymorphous, Cribriform  of minor salivary glands, Polymorphous (low grade), terminal duct carcinoma, lobular carcinoma; Acinic cell carcinoma;Clear cell carcinoma, hyalinising clear cell carcinoma; Basal cell adenocarcinoma, malignant dermal analog tumor;Salivary duct carcinoma, high grade ductal carcinoma;Salivary secretory adenocarcinoma (mammary analog, MASC); Secretory carcinoma; Myoepithelial carcinoma, malignant myoepithelioma; Carcinoma ex pleomorphic adenoma: NOS,  Intracapsular, minimally invasive, largely invasive; Sebaceous adenocarcinoma, Sebaceous lymphadenocarcinoma; Carcinosarcoma; Oncocytic carcinoma, oxyphilic carcinoma, oncocytic adenocarcinoma, oncocytic malignant oncocytoma; Salivary gland intraductal carcinoma (cribriform low grade adenocarcinoma)  
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
 Salivary gland intraductal carcinoma (cribriform low grade adenocarcinoma)  """				
* hnClassification.histologyNeuroendocrine ^comment = """Small cell neuroendocrine�carcinoma (SmCC)?,Poorly differentiated neuroendocrine carcinoma, small cell (grade 3);Large cell neuroendocrine carcinoma (LCNEC)?, Poorly differentiated neuroendocrine carcinoma, large cell (grade 3);Well-differentiated neuroendocrine carcinoma, Middle ear carcinoid tumor;Moderately differentiated neuroendocrine carcinoma
Small cell neuroendocrine�carcinoma (SmCC)? - 36714029
Poorly differentiated neuroendocrine carcinoma - 37018672
small cell (grade 3)
Large cell neuroendocrine carcinoma (LCNEC)? - 4029971
Poorly differentiated neuroendocrine carcinoma, large cell (grade 3)
Well-differentiated neuroendocrine carcinoma, 
Middle ear carcinoid tumor
Moderately differentiated neuroendocrine carcinoma"""				
* hnClassification.histologyOdontogenicCarcinoma ^comment = """
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
Gosht cell odontogenic carcinoma - 37312303"""				
* hnClassification.histologySNUC ^comment = """
SMARCB1 (INI-1)-deficient Sinonasal undifferentiated Carcinoma;Sinonasal SMARCA4 deficient carcinoma;IDH2-mutated sinonasal undifferentiated neoplasm
SMARCB1 (INI-1)-deficient Sinonasal undifferentiated Carcinoma
Sinonasal SMARCA4 deficient carcinoma
IDH2-mutated sinonasal undifferentiated neoplasm"""				
* hnClassification.adipocyticTumours ^comment = """Atypical lipomatous tumour/ Liposarcoma, well-differentiated, NOS
Dedifferentiated liposarcoma
Myxoid liposarcoma
Pleomorphic liposarcoma
Myxoid pleomorphic liposarcoma

Liposarcoma, well differentiated - 4102790
Dedifferentiated liposarcoma - 4284833
Myxoid liposarcoma - 4101123
Pleomorphic liposarcoma - 4010104
Myxoid pleomorphic liposarcoma - 4300687
"""				
* hnClassification.fmtTumours ^comment = """Palmar/plantar-type fibromatosis
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
"""				
* hnClassification.socalledFibrohistiocyticTumours ^comment = """Plexiform fibrohistiocytic tumour
Giant cell tumour of soft parts NOS
Tenosynovial giant cell tumor

Plexiform fibrohistiocytic tumour - 4029525
Giant cell tumour of soft parts - 4218898
Tenosynovial giant cell tumor - 4030140
Tenosynovial giant cell tumor, diffuse - 45766525
Malignant tenosynovial giant cell tumor - 4029655
"""				
				
* sarcomaClassification.vascularTumours ^comment = """Epithelioid haemangioendothelioma NOS
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

"""				
* sarcomaClassification.pericyticPerivascularTumours ^comment = """Glomus tumour NOS

Glomus tumour - 40571984
"""				
* sarcomaClassification.smoothMuscleTumours ^comment = """Smooth muscle tumour of uncertain malignant potential
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
"""				
* sarcomaClassification.skeletalMuscleTumours ^comment = """Embryonal rhabdomyosarcoma NOS
Alveolar rhabdomyosarcoma
Pleomorphic rhabdomyosarcoma NOS
Spindle cell / sclerosing rhabdomyosarcoma
Ectomesenchymoma

Embryonal rhabdomyosarcoma - 4031038
Alveolar rhabdomyosarcoma - 4272931
Pleomorphic rhabdomyosarcoma - 4298312
Spindle cell rhabdomyosarcoma - 4029528
Rhabdomyosarcoma with ganglionic differentiation - 4029024
"""				
* sarcomaClassification.chondroOsseousTumours ^comment = """Extraskeletal osteosarcoma

Extraskeletal osteosarcoma - 4298240
"""				
* sarcomaClassification.peripheralNerveSheathTumours ^comment = """Malignant peripheral nerve sheath tumour NOS
Malignant melanotic nerve sheath tumour
Granular cell tumour NOS
Granular cell tumour, malignant

Malignant peripheral nerve sheath tumour - 4062426
        Melanotic malignant peripheral nerve sheath tumor - 4102399
Granular cell tumour - 4005360
Granular cell tumour, malignant - 4027842
"""				
* sarcomaClassification.tumoursOfUncertainDifferentiation ^comment = """Atypical fibroxanthoma
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
NTRK-rearranged spindle cell neoplasm (emerging)"""				
* sarcomaClassification.undifSmallRCelSarcBonAndSofTis ^comment = """Ewing sarcoma
Round cell sarcoma with�EWSR1?non-ETS fusions
CIC-rearranged sarcoma
Sarcoma with�BCOR�genetic alterations

Ewing sarcoma - 45766528
Round cell sarcoma with�EWSR1?non-ETS fusions
CIC-rearranged sarcoma
Sarcoma with�BCOR�genetic alterations
"""				
* sarcomaClassification.endStrAndRelatedTumours ^comment = """Endometrial stromal sarcoma, high grade
Endometrial stromal sarcoma, low grade

Endometrial stromal sarcoma, high grade - 4290926
Endometrial stromal sarcoma, low grade - 4028557
"""				
* sarcomaClassification.miscellaniousMesenchimalTumors ^comment = """Uterine tumour resembling ovarian sex cord tumour
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
"""				
* sarcomaClassification.mixedEpithelialAndMesenchymalTumours ^comment = """Adenosarcoma; please clarify if adenosarcoma with sarcomatous overgrowth

Adenosarcoma - 4135215"""				
				
* subsites.nasalCavityAndParanasalSinuses ^comment = """AJCC 8th Edition Cancer Staging Manual

Nasal cavity;Maxillary sinus;Ethmoid sinus;Frontal sinus;Sphenoid sinus
Nasal cavity - 4088327
Maxillary sinus - 4050631
Ethmoid sinus - 4182234
Frontal sinus - 4204534
Sphenoid sinus - 4097172"""				
* subsites.nasopharynx ^comment = """AJCC 8th Edition Cancer Staging Manual

Superior wall of nasopharynx;Posterior wall of nasopharynx;Lateral wall of nasopharynx;Anterior wall of nasopharynx
Superior wall of nasopharynx - 4068978
Posterior wall of nasopharynx - 4146741
Lateral wall of nasopharynx - 4323979
Anterior wall of nasopharynx - 4220236"""				
* subsites.hypopharynx ^comment = """AJCC 8th Edition Cancer Staging Manual

Postcricoid region; Hypopharyngeal aspect of aryepiglottic fold;
Posterior wall of hypopharynx;Pyriform sinus

Postcricoid region - 4147741
 Hypopharyngeal aspect of aryepiglottic fold - 4262980
Posterior wall of hypopharynx - 4102600
Pyriform sinus - 4268741
"""				
* subsites.oropharynx ^comment = """https://link.springer.com/book/9783319406176

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
* subsites.larynx ^comment = """AJCC 8th Edition Cancer Staging Manual
Glottis;Supraglottis;Subglottis;Laryngeal cartilage

Glottis - 4047227
Supraglottis - 4001049
Subglottis - 4002724
Laryngeal cartilage - 4279711
"""				
* subsites.oralCavity ^comment = """AJCC 8th Edition Cancer Staging Manual

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
Overlapping lesion of other and unspecified parts of mouth - """				
* subsites.lip ^comment = """AJCC 8th Edition Cancer Staging Manual

External lower lip;External upper lip;External lip, NOS;Mucosa of upper lip;Mucosa of lower lip;Mucosa of lip, NOS;Commissure of lip
External lower lip - 4027546
External upper lip - 4134589
External lip, NOS - 4027545
Mucosa of upper lip -  36769700
Mucosa of lower lip - 36768548
Mucosa of lip, NOS - 4245168
Commissure of lip - 4307358"""				
* subsites.upperAndLowerLimbs ^comment = """Hand 
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
Axilla - 4157836"""				
* subsites.trunkWallSubsite ^comment = """Thoracic Wall 
Abdominal Wall 
Paravertebral ? thoracolumbar
Paravertebral ? cervical

Joint structure of thoracic wall - 4088614
Anterior abdominal wall structure - 4244412
        Posterior abdominal wall structure - 4330865
Paravertebral ? thoracolumbar - 
Paravertebral ? cervical
"""				
* subsites.intraAbdominalSubsite ^comment = """Retroperitoneum
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
"""				
* subsites.intraThoracicSubsite ^comment = """Lung
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
Other - WILDCARD"""				
* subsites.genitoUrinarySubsite ^comment = """Adrenal glands
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
"""				
* subsites.headAndNeckSubsite ^comment = """Head and neck
Face and/or neck structure - 4122633"""				
* subsites.breast ^comment = """Breast
Breast structure - 4298444"""				
				
				
				
				
* plasmaticEbvDnaAtBaseline ^comment = """ Positive; Negative; not tested;
 Positive - 9191
 Negative - 9189
not tested - 45878602"""				
* hpvStatus ^comment = """ Positive; Negative; Not tested;
 Positive - 9191
 Negative - 9189
not tested - 45878602"""				
* crpCReactiveProteinTested ^comment = """Positive; Negative; Not tested;
 Positive - 9191
 Negative - 9189
not tested - 45878602"""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
				
* patient insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
				
* biopsyDoneBy insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* ageAtDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
				
* grading insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* hnClassification insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* hnClassification.histologySquamous insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* hnClassification.histologyAdenocarcinoma insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* hnClassification.histologyNeuroendocrine insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* hnClassification.histologyOdontogenicCarcinoma insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* hnClassification.histologySNUC insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
* subsites insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* subsites.nasalCavityAndParanasalSinuses insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* subsites.nasopharynx insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* subsites.hypopharynx insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* subsites.oropharynx insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* subsites.larynx insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* subsites.oralCavity insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* subsites.lip insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
				
				
				
				
				
				
				
				
				
				
				
* plasmaticEbvDnaAtBaseline insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* hpvStatus insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* crpCReactiveProteinTested insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
//--- END				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
				
* patient insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* dateOfDiagnosis insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* typeOfBiopsy insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* biopsyDoneBy insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* ageAtDiagnosis insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* radiotherapyInducedSarcoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* grading insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification.histologySquamous insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification.histologyAdenocarcinoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification.histologyNeuroendocrine insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification.histologyOdontogenicCarcinoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification.histologySNUC insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification.adipocyticTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification.fmtTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* hnClassification.socalledFibrohistiocyticTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.vascularTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.pericyticPerivascularTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.smoothMuscleTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.skeletalMuscleTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.chondroOsseousTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.peripheralNerveSheathTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.tumoursOfUncertainDifferentiation insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.undifSmallRCelSarcBonAndSofTis insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.endStrAndRelatedTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.miscellaniousMesenchimalTumors insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sarcomaClassification.mixedEpithelialAndMesenchymalTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
				
				
				
				
				
				
				
				
* subsites.upperAndLowerLimbs insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* subsites.trunkWallSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* subsites.intraAbdominalSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* subsites.intraThoracicSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* subsites.genitoUrinarySubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* subsites.headAndNeckSubsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* subsites.breast insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* subsites.others insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* tumorSize insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* depth insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* biopsyMitoticCount insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
