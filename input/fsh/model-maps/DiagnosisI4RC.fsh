Logical: DiagnosisI4RC
Id: Diagnosis
Title: "Diagnosis"
Description: """Diagnosis
Maturity Level: 0 Draft"""
* cancerepisode 1..* CancerEpisode "CancerEpisode (M)" """CancerEpisode reference where the diagnosis was performed 
"""
* cancerepisode insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* cancerepisode insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* dateOfDiagnosis 1..* date "Date of diagnosis (biopsy or surgical piece) (M)" """Date of the procedure performed to obtain the specimen for the histological diagnosis, regardless of the institution that performed it. 
Date of biopsy in Sarc.

The only procedures accepted are biopsy and/ or surgical piece. Needle aspirations have low quality, if a biopsy has been done for the same patient please refer to the biopsy.
"""
* dateOfDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* dateOfDiagnosis insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* typeOfBiopsy 1..* CodeableConcept "Type of biopsy (M)" """Type of biopsy performed to the patient. Information coming from the biopsy data. 
"""
* typeOfBiopsy insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* typeOfBiopsy ^comment = """Fine needle biopsy - 4171863
Core needle biopsy - 4321878
Incisional biopsy - 4321986
Excisional biopsy - 4228202
Excision - 4279903
"""
* biopsyDoneBy 1..* string "Biopsy done by (M)" """Describes the institution where diagnostic procedure was performed. A pseudonym for a hospital. It could be the ID assigned from the original hospital. 
"""
* biopsyDoneBy insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* biopsyDoneBy insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* ageAtDiagnosis 1..* Quantity "Age at diagnosis (M)" """Age of the patient at the time of the diagnosis. 
"""
* ageAtDiagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ageAtDiagnosis insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* radiotherapyInducedSarcoma 1..* boolean "Radiotherapy induced sarcoma (M)" """radiotherapy induced if the new tumour is in the field or marginal  the anatomical area that received high radiation dose; please specify the interval time from the radiotherapy treatment 
"""
* radiotherapyInducedSarcoma insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* radiotherapyInducedSarcoma ^comment = """Radiation-induced sarcoma - 2000100003"""
* biopsyGrading 0..* CodeableConcept "Biopsy grading (O)" """Grading of the cancer given by the biopsy 
"""
* biopsyGrading insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* biopsyGrading insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* biopsyGrading ^comment = """Grade-1 - 1634371
Grade-2 - 1634752
Grade-3 - 1633749
Grade-H - 1635587
Grade-L - 1634085"""
* histologyGroup 0..* CodeableConcept "Histology group (O)" """HNC: Describes the histology of primary tumour according to WHO 2017 clasification. 
Codes may not match the exact hierarchy in Athena"""
* histologyGroup insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* histologyGroup insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* histologyGroup ^comment = """Squamous cell carcinoma - 37156145
Adenocarcinoma - 37152526
Neuroendocrine carcinoma - 1242310
Undifferentiated carcinoma of nasal sinus - 44783808
Adenosquamous carcinoma - 4241843
Teratocarcinoma - 4284401
Nuclear protein in testis associated carcinoma - 37116896
HPV-related Multiphenotypic Sinonasal Carcinoma - 2000100004
Olfactory neuroblastoma - 4295574
Odontogenic tumor, malignant - 4098585

Lipomatous neoplasm (Adipocytic tumours) - 4019487
Fibromatous neoplasm of borderline malignancy - 4266648
So-called fibrohistiocytic tumours - 2000100005
Vascular tumours - 2000100006
Pericytic (perivascular) tumours - 2000100007
Smooth muscle tumor - 4327493
Osseous AND/OR chondromatous neoplasm - 4019107
Nerve sheath tumor  - 4017276
Neoplasm of uncertain behavior - 4313421
Undifferentiated small round cell sarcomas of bone and soft tissue - 2000100008
Endometrial stromal sarcoma - 2000100009
Miscellanious mesenchimal tumors - 2000100010
Mixed epithelial and mesenchymal tumours - 2000100011"""
* site 0..* CodeableConcept "Site (O)" """Describes the primary tumor site. For head and neck, according to AJCC . 
Codes may not match the exact hierarchy in Athena"""
* site insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* site insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* site ^comment = """Nasal cavity and paranasal sinus - 2000000067
Nasopharynx - 36769745
Parotid gland - 36769263
Submandibular gland - 36770243
Sublingual gland - 36769383
Middle ear - 2000100020
Hypopharynx - 36770295
Oropharynx - 36769199
Larynx - 2000000037
Oral cavity - 2000100021
Lip - 36769197

Pharynx - 2000000057
Sinonasal - 2000000067
Larynx - 2000000037
Head, face, and neck - 36769894
Upper limb and shoulder - 36769192
Lower limb and hip - 36769168
Trunk - 36768213
Thorax - 36770344
Abdomen - 36769612
Retroperitoneum - 36770706
Peritoneum - 36768774
Pelvis - 36768752
Breast - 2000000012
Genitourinary (not bladder / prostate) - 36768087
Urinary tract - 36769378
Central Nervous System - 2000000015

"""
* histologySubgroup 0..* CodeableConcept "Histology subgroup (O)" """Histology subgroup value for the cancer diagnosis. """
* histologySubgroup insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* histologySubgroup insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* histologySubgroup ^comment = """Squamous cell carcinoma, keratinizing - 4078953
Squamous cell carcinoma, large cell, nonkeratinizing -  4166826
Schneiderian carcinoma - 4206785
 Non-keratinizing squamous cell carcinoma: SMARCB1 (INI-1)-deficient Sinonasal Carcinoma - 2000100012
Non-keratinizing squamous cell carcinoma: Transitional (cylindrical cell, Schneiderian) carcinoma - 2000100013
Squamous cell carcinoma, spindle cell - 4009590
Spindle cell (sarcomatoid) squamous cell carcinoma: SMARCB1 (INI-1) - 2000100014
Lymphoepithelial carcinoma - 4247661
Basaloid squamous cell carcinoma - 4029973
Squamous cell carcinoma - 37156145
Adenoid squamous cell carcinoma - 4312219
Squamous cell carcinoma, microinvasive - 4052146
Giant cell carcinoma - 4175678
Verrucous carcinoma - 4233949
 Papillary squamous cell carcinoma - 4191609
Squamous cell carcinoma - 37156145
Human papillomavirus positive squamous cell carcinoma - 37204531
 Human papillomavirus negative squamous cell carcinoma  -  37204532
Squamous cell carcinoma - 37156145

Adenocarcinoma, intestinal type - 4097305
Adenocarcinoma - 37152526
Cystoadenocarcinoma - 4050978
Mucinous adenocarcinoma - 4247921
Ceruminous adenocarcinoma - 4238334
Papillary adenocarcinoma - 4172953
Adenoid cystic carcinoma - 4022895
Mucoepidermoid carcinoma - 4253608
Polymorphous low grade adenocarcinoma - 4030121
Acinar cell carcinoma - 4164740
Clear cell adenocarcinoma - 4148292
Basal cell adenocarcinoma - 4146684
Infiltrating duct carcinoma - 4221403
Juvenile carcinoma of the breast - 4224593
Paget's disease, extramammary (except Paget's disease of bone) - 4323699
Malignant myoepithelioma - 4029680
Epithelial-myoepithelial carcinoma - 4321002
Carcinoma ex pleomorphic adenoma - 4066512
Sebaceous adenocarcinoma - 4182993
Carcinosarcoma - 4271564
Oxyphilic adenocarcinoma - 4212379
Cystadenocarcinoma - 4050978

Small cell neuroendocrine carcinoma (SmCC)​ - 36714029
Malignant poorly differentiated neuroendocrine carcinoma - 37018672
Large cell neuroendocrine carcinoma (LCNEC)​ - 4029971
Neuroendocrine tumor grade 1 - 4133828
Neuroendocrine tumor grade 2 - 4133297
Neuroendocrine carcinoma - 1242310

Odontogenic tumor, malignant - 4098585
Clear cell odontogenic carcinoma - 37116966
Malignant odontogenic ghost cell tumor
 - 4005818

SMARCB1 (INI-1)-deficient Sinonasal undifferentiated Carcinoma - 2000100015
Sinonasal SMARCA4 deficient carcinoma; - 2000100016
IDH2-mutated sinonasal undifferentiated neoplasm - 2000100017
Undifferentiated carcinoma of nasal sinus - 44783808

Carcinoma, undifferentiated - 4243327

Adenosquamous carcinoma - 4241843

Teratocarcinoma - 4284401

Nuclear protein in testis associated carcinoma - 37116896

HPV-related Multiphenotypic Sinonasal Carcinoma - 2000100018

Olfactory neuroblastoma - 4295574

Atypical lipomatous tumor - 4021372




Liposarcoma, well differentiated - 4102790
Dedifferentiated liposarcoma - 4284833
Myxoid liposarcoma - 4101123
Pleomorphic liposarcoma - 4010104
Myxoid pleomorphic liposarcoma - 1243142
Palmar/plantar-type fibromatosis - 45766452
Aggressive fibromatosis - 4264204
Lipofibromatosis - 45766468
Giant cell fibroblastoma - 4030132
Dermatofibrosarcoma protuberans - 4295283
Solitary fibrous tumor and hemangiopericytoma grade 1 - 37116995
Solitary fibrous tumor and hemangiopericytoma grade 2 - 37116996
Solitary fibrous tumor and hemangiopericytoma grade 3 - 37116997
Myofibroblastic tumour - 4021373
Low-grade myofibroblastic sarcoma - 45766454
Cellular fibroma - 4029679
Myxoinflammatory fibroblastic sarcoma - 45766450
Fibrosarcoma - 4202374
Myxofibrosarcoma - 45771359
Low-grade fibromyxoid sarcoma - 45771361
Sclerosing epithelioid fibrosarcoma - 45766456

Plexiform fibrohistiocytic tumour - 4029525
Giant cell tumour of soft parts - 4218898
Tenosynovial giant cell tumor - 4030140
Tenosynovial giant cell tumor, diffuse - 45766525
Malignant tenosynovial giant cell tumor - 4029655

Epithelioid haemangioendothelioma - 4207381
Angiosarcoma - 3661612
Hemangioendothelioma - 4281384
Spindle cell hemangioendothelioma - 4030139
Retiform haemangioendothelioma - 45766493
Papillary intralymphatic angioendothelioma - 4030138
Composite haemangioendothelioma - 45766494
Pseudomyogenic (epithelioid sarcoma-like) hemangioendothelioma - 45766492
Glomus tumor - 4014760
Glomus tumor, malignant - 4028856
Smooth muscle tumour - 4327493
Epithelioid smooth muscle tumor of uncertain malignant potential - 607803
Myxoid smooth muscle tumour of uncertain mailgnant potential - 600675
Metastasizing leiomyoma - 4029023
Leiomyosarcoma - 37151903
Epithelioid  leiomyosarcoma - 4173148
Myxoid leiomyosarcoma - 4059632
Embryonal rhabdomyosarcoma - 4031038
Alveolar rhabdomyosarcoma - 4272931
Pleomorphic rhabdomyosarcoma - 4298312
Spindle cell rhabdomyosarcoma - 4029528
Ectomesenchymoma - 4029024
Extraskeletal osteosarcoma - 4298240
Malignant peripheral nerve sheath tumour - 4062426
Melanotic malignant peripheral nerve sheath tumor - 4102399
Granular cell tumour - 4005360
Granular cell tumour, malignant - 4027842
Atypical fibrous histiocytoma - 4096931
Angiomatoid fibrous histiocytoma - 4029526
Pleomorphic hyalinizing angiectatic tumour - 45766448
Hemosiderotic fibrolipomatous tumor - 1243125
NTRK-rearranged spindle cell neoplasm - 1243130
Synovial sarcoma - 4268491
Epithelioid sarcoma - 4244886
Alveolar soft part sarcoma - 4339208
Clear cell sarcoma - 4155072
Extraskeletal myxoid chondrosarcoma - 4297345
Desmoplastic small round cell tumor - 4029522
Extrarenal rhabdoid tumor - 4299132
Perivascular epithelioid tumor, benign - 45771358
Perivascular epithelioid tumor, malignant - 45766447
Perivascular epithelioid cell tumor - 4304780
Intimal sarcoma - 45766495
Undifferentiated sarcoma - 4029021
Myoepithelioma - 4239519
Myoepithelial carcinoma - 4029680
Ossifying fibromyxoid tumour - 4028565
Ossifying fibromyxoid tumor, malignant - 45766467
Mesenchymoma - 4195947
Phosphaturic mesenchymal tumor, benign - 45766484
Phosphaturic mesenchymal tumour, malignant - 45766485
Angiomyxoma - 4239956
Angiomatoid fibrous histiocytoma - 4029526
NTRK-rearranged spindle cell neoplasm (emerging) - 2000100019
Ewing sarcoma / peripheral neuroectodermal tumor - 45766528
Round cell sarcoma with EWSR1–non-ETS fusions - 37155974
CIC-rearranged sarcoma - 37152438
Sarcoma with BCOR genetic alterations - 37152440
Endometrial stromal sarcoma, high grade - 4290926
Endometrial stromal sarcoma, low grade - 4028557
Uterine tumour resembling ovarian sex cord tumour - 45771357
Benign phyllodes tumor - 4040991
Borderline phyllodes tumor - 4323562
Malignant phyllodes tumor - 4337106
Follicular dendritic cell sarcoma - 4028710
Histiocytic sarcoma - 4029172
Interdigitating dendritic cell sarcoma - 4028709
Langherans cell sarcoma - 4029173
Fibroblastic reticular cell tumour - 42872917
Biphenotypic sinonasal sarcoma - 37311513
Adenosarcoma - 4135215"""
* subsite 0..* CodeableConcept "Subsite (O)" """Topography subsite value for the cancer diagnosis 
"""
* subsite insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* subsite insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* subsite ^comment = """Nasal cavity structure - 4088327
Maxillary sinus structure - 4050631
Ethmoid sinus structure - 4182234
Frontal sinus structure - 4204534
Sphenoid sinus structure - 4097172
Nasal sinus structure - 4051578

Structure of superior wall of nasopharynx - 4068978
Structure of posterior wall of nasopharynx - 4146741
Structure of lateral wall of nasopharynx - 4323979
Structure of anterior wall of nasopharynx - 4220236
Nasopharyngeal structure - 4216712

Structure of postcricoid region - 4147741
Structure of hypopharyngeal aspect of aryepiglottic fold - 4262980
Structure of posterior wall of hypopharynx - 4102600
Structure of piriform recess - 4268741
Hypopharyngeal structure - 4218592

Parotid gland structure - 4166063

Submandibular salivary gland structure - 4299196

Sublingual gland structure - 4229131

Middle ear structure - 4100253

Structure of root of tongue - 4169910
Soft palate structure - 4177005
Uvula palatina structure - 4095284
Tonsillar fossa structure - 4138234
Lingual tonsil structure - 4068841
Palatine arch structure - 4065073
Structure of vallecula of epiglottis - 4173123
Structure of anterior surface of epiglottis - 4283238
Structure of lateral wall of oropharynx - 4078066
Structure of posterior wall of oropharynx - 4045435
Embryonic branchial cleft - 4235649
Palatine tonsillar structure - 4327174
Oropharyngeal structure - 4151149

Glottis structure - 4047227
Supraglottis structure - 4001049
Subglottis structure - 4002724
Laryngeal cartilage structure - 4279711
Laryngeal structure - 4262229

Structure of dorsum of tongue - 4284551
Structure of border of tongue - 4077986
Structure of inferior surface of tongue - 4172794
Anterior 2/3 of tongue NOS - 2000100024
Overlapping lesion of tongue - 44498031
Structure of gum of maxilla - 4047029
Structure of gum of mandible - 4210919
Structure of anterior floor of mouth - 4181419
Structure of lateral floor of mouth - 4103066
Overlapping lesion of floor of mouth - 44498040
Hard palate structure - 4234542
Buccal mucosa - 4057160
Structure of vestibule of mouth - 4144069
Structure of retromolar area of mouth - 4312102
Overlapping lesion of other and unspecified parts of mouth - 44498052
Oral cavity structure - 4253672
 
Structure of vermilion border of upper lip - 4134589
Structure of vermilion border of lower lip - 4027546
Structure of vermilion border of lip - 4027545
Structure of mucous membrane of upper lip - 4086480
Structure of mucous membrane of lip - 4245168
Commissure of lips - 4307358
Lip structure - 4168155


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
Periscapular - 2000100022
Trapezius - 4136969
Groin Flap - 2000100023
Buttock - 4263335
Pectoral - 4096078
Axilla - 4157836
Joint structure of thoracic wall - 4088614
Anterior abdominal wall structure - 4244412
 Posterior abdominal wall structure - 4330865
Paravertebral region - 4348976
Structure of thoracolumbar region of back - 4289613
Structure of thoracolumbar junction of vertebral column - 606482
Structure of cervical vertebral column - 4046743
Retroperitoneal fascia - 4075118
Retroperitoneal compartment structure - 4220536
 Inferior vena cava structure - 4271699
Iliac vessel - 4193451
Aorta and aorta, CS - 4004831
Structure of renal artery - 4154880
Gonadal artery - 4157844
Structure of mesenteric artery - 4314264
Other vessels - Subsume (CHILDREN)
Pelvic region - 4044034
Region of esophagus - 4075991
Stomach structure - 4288283
Duodenal structure - 4302112
Jejunal structure - 4065077
Stricture of ileum - 4316356
Colon structure - 4215634
Rectum structure - 4144541
Mesentery - 4233095
Lung structure - 4213162
Heart structure - 4217142
Pleura structure - 4150673
Region of mediastinum - 4088610
Superior vena cava structure - 4167648
Aorta and aorta, CS - 4004831
Stricture of pulmonary vessel - 4035327
Structure of subclavian artery - 4272388
Adrenal structure - 4051774
Kidney structure - 4271678
Region of ureter - 4078617
Urinary bladder structure - 4232481
Prostatic structure - 4165732
Seminal Vescicle structure - 4277442
Spermatic Cord structure - 4172591
Testis structure - 4238088
Penile structure - 4077311 
Uterine structure - 4149192
Ovarian structure - 4049448
Fallopian tube structure - 4151444
Vaginal structure - 4296022
Vulval structure - 4166066
Face and/or neck structure - 4122633
Breast structure - 4298444
Any Domain=Spec Anatomic Site and Standard code"""
* diagnosisCode 1..* CodeableConcept "Diagnosis code (M)" """Histology/Topography code combination for the cancer diagnosis 
"""
* diagnosisCode insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* diagnosisCode insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* diagnosisCode ^comment = """The codes lists are in the spreadsheets "HNC Conditions List" and "Sarcoma Conditions List" of the file"""
* tumorSize 1..* Quantity "Tumor Size (M)" """Describes the tumor size in CM. (the longest diameter; longest dimension between pre operatory imaging and pathological specimen) cm  
"""
* tumorSize insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* superficialDepth 1..* Quantity "Superficial depth (M)" """Provides the superficial depth of the tumour (for upper and lower limbs and superficial trunk)  superficial (superficial tumour is located exclusively above the investing fascia without invasion of the fascia), deep (deep tumour is located beneath or invade the investing fascia). All the others are deep by definition. 
"""
* superficialDepth insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* deepDepth 1..* Quantity "Deep depth (M)" """Provides the deep depth of the tumour (for upper and lower limbs and superficial trunk)  superficial (superficial tumour is located exclusively above the investing fascia without invasion of the fascia), deep (deep tumour is located beneath or invade the investing fascia). All the others are deep by definition 
"""
* deepDepth insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* biopsyMitoticCount 1..* Quantity "Biopsy Mitotic count (M)" """Mitotic count reported from the biopsy (Number/10HPF/1mm2, 50HPF/5mm2). Reported as Number of mitoses per 10 high power fields. 
"""
* biopsyMitoticCount insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* mitoticIndex 1..* CodeableConcept "Mitotic Index (M)" """Mitotic index derived from the mitotic count. Information coming from the biopsy and derived. M1 for less than 10HPF, M2 for range 10-20 HPF and M3 for greater than 20 HPF. 
"""
* mitoticIndex insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* mitoticIndex ^comment = """Less than 10 mitoses per 10 HPF (score = 1) - 4240574
10-20 mitoses per 10 HPF (score = 2) - 4241298
Greater than 10 mitoses per 10 HPF (score = 3) - 4240069"""
* plasmaticEbvDnaAtBaseline 0..* CodeableConcept "Plasmatic EBV DNA at baseline (R)" """Describes the result of EBV DNA plasmatic test before treatment for Lymphoepithelial carcinoma, lymphoepithelioma like carcinoma (Nasal cavity and Paranasal Sinuses) or Nasopharynx 
"""
* plasmaticEbvDnaAtBaseline insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* plasmaticEbvDnaAtBaseline ^comment = """ Positive - 9191
 Negative - 9189
not tested - 45878602"""
* hpvStatus 0..* CodeableConcept "HPV status (M for OROPHARYNGEAL (not oral cavity) carcinomas)" """Describes the result of HPV tumor tested in Nasal Cavity and Paranasal Sinuses, Nasopharnx or Oropharynx carcinoma 
"""
* hpvStatus insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* hpvStatus ^comment = """ Positive - 9191
 Negative - 9189
not tested - 45878602"""
* crpTested 0..* CodeableConcept "CRP – C reactive protein tested (O)" """Describes the result of C reactive protein tested 
"""
* crpTested insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* crpTested ^comment = """ Positive - 9191
 Negative - 9189
not tested - 45878602"""
