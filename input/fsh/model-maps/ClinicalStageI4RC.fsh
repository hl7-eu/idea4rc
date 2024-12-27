Logical: ClinicalStageI4RC
Id: ClinicalStage
Title: "Clinical Stage"
Description: """Clinical Stage
Maturity Level: 0 Draft"""
* diagnosisReference 1..* Diagnosis "Diagnosis Reference (M)" """Diagnosis element containing the data regarding the patient's cancer 
"""
* diagnosisReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* diagnosisReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* stagingProceduresDoneBy 1..* string "Staging procedures done by (M)" """Describes the ID of the institution where staging procedure for primary tumour was performed 
"""
* stagingProceduresDoneBy insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForPrimarySite 1..* BackboneElement "Imaging for primary site (M)" """Defines whether any imaging study for primary site was performed or not 
"""
* imagingForPrimarySite insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForPrimarySite insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForPrimarySite.ct 0..* boolean "CT for primary site (R)" """Defines whether any CT scan for primary site was performed or not 
"""
* imagingForPrimarySite.ct insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForPrimarySite.ct insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForPrimarySite.ct ^comment = """Computed tomography - 4300757"""
* imagingForPrimarySite.mri 0..* boolean "MRI for primary site (R)" """Defines whether any MRI for primary site was performed or not 
"""
* imagingForPrimarySite.mri insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForPrimarySite.mri insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForPrimarySite.mri ^comment = """Magnetic resonance imaging - 4013636"""
* imagingForPrimarySite.us 0..* boolean "US for primary site (R)" """Defines whether any US for primary site was performed or not 
"""
* imagingForPrimarySite.us insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForPrimarySite.us insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForPrimarySite.us ^comment = """Ultrasonography - 4037672"""
* imagingForPrimarySite.other 0..* CodeableConcept "Other imaging for primary site (R)" """Provides any other value for imaging options for primary site 
"""
* imagingForPrimarySite.other insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForPrimarySite.other insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForPrimarySite.other ^comment = """Code from Procedure domain

 Fluorodeoxyglucose positron emission tomography - 2000100025
Positron emission tomography using other tracers - 2000100026"""
* imagingForNeck 1..* BackboneElement "Imaging for neck (M)" """Whether any imaging study for the neck was performed or not 
"""
* imagingForNeck insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForNeck insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForNeck.ct 0..* boolean "CT for neck (R)" """Defines whether any CT scan for neck was performed or not 
"""
* imagingForNeck.ct insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForNeck.ct insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForNeck.ct ^comment = """Computed tomography of neck - 3307719
"""
* imagingForNeck.mri 0..* boolean "MRI for neck (R)" """Defines whether any MRI for neck was performed or not 
"""
* imagingForNeck.mri insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForNeck.mri insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForNeck.mri ^comment = """Magnetic resonance imaging of neck - 4218948
"""
* imagingForNeck.us 0..* boolean "US for neck (R)" """Defines whether any US for neck was performed or not 
"""
* imagingForNeck.us insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForNeck.us insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForNeck.us ^comment = """Ultrasonography of Neck - 2793113
"""
* imagingForNeck.other 0..* CodeableConcept "Other imaging for neck (R)" """Provides any other value for imaging options for neck 
"""
* imagingForNeck.other insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForNeck.other insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForNeck.other ^comment = """Code from Procedure domain

 Fluorodeoxyglucose positron emission tomography -2000100025
Positron emission tomography using other tracers - 2000100026"""
* imagingForMetastasis 1..* BackboneElement "Imaging for metastasis (M)" """Wherther any imaging study for metastasis was performed or not 
"""
* imagingForMetastasis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForMetastasis insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForMetastasis.ct 0..* boolean "CT for metastasis (R)" """Defines whether any CT scan for metastasis was performed or not 
"""
* imagingForMetastasis.ct insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForMetastasis.ct insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForMetastasis.ct ^comment = """CT of chest - 4058335
CT of abdomen - 4061009
CT of pelvis - 4058336
CT of brain - 4145739"""
* imagingForMetastasis.mri 0..* boolean "MRI for metastasis (R)" """Defines whether any MRI for metastasis was performed or not 
"""
* imagingForMetastasis.mri insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForMetastasis.mri insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForMetastasis.mri ^comment = """MRI of abdomen - 4083230
MRI of pelvis - 4097527
MRI of brain - 37311324"""
* imagingForMetastasis.us 0..* boolean "US for metastasis (R)" """Defines whether any US for metastasis was performed or not 
"""
* imagingForMetastasis.us insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForMetastasis.us insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForMetastasis.us ^comment = """Ultrasonography of abdomen - 4261497"""
* imagingForMetastasis.other 0..* CodeableConcept "Other imaging for metastasis (R)" """Provides any other value for imaging options for metastasis 
"""
* imagingForMetastasis.other insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* imagingForMetastasis.other insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* imagingForMetastasis.other ^comment = """Code from Procedure domain

Standard chest X-ray - 4056836
Radioisotope scan of bone - 4217238
Positron emission tomography - 4305790
 Fluorodeoxyglucose positron emission tomography - 2000100025
Positron emission tomography using other tracers - 2000100026"""
* ct 1..* CodeableConcept "cT (M)" """Specifies the clinical T 
"""
* ct insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ct ^comment = """AJCC/UICC 6th clinical TX Category - 1635299
AJCC/UICC 7th clinical TX Category - 1634269
AJCC/UICC 8th clinical TX Category - 1633589

AJCC/UICC 6th clinical Tis Category - 1635857
AJCC/UICC 7th clinical Tis Category - 1635227
AJCC/UICC 8th clinical Tis Category - 1633737

AJCC/UICC 6th clinical T0 Category - 1635656
AJCC/UICC 7th clinical T0 Category - 1633815
AJCC/UICC 8th clinical T0 Category - 1635794

AJCC/UICC 6th clinical T1 Category - 1634381
AJCC/UICC 7th clinical T1 Category - 1635664
AJCC/UICC 8th clinical T1 Category - 1633883

AJCC/UICC 6th clinical T2 Category - 1633747
AJCC/UICC 7th clinical T2 Category - 1634029
AJCC/UICC 8th clinical T2 Category - 1634651

AJCC/UICC 6th clinical T3 Category - 1633877
AJCC/UICC 7th clinical T3 Category - 1633324
AJCC/UICC 8th clinical T3 Category - 1635556

AJCC/UICC 6th clinical T4 Category - 1635522
AJCC/UICC 7th clinical T4 Category - 1635530
AJCC/UICC 8th clinical T4 Category - 1634973

AJCC/UICC 6th clinical T4a Category - 1634247
AJCC/UICC 7th clinical T4a Category - 1634522
AJCC/UICC 8th clinical T4a Category - 1634963

AJCC/UICC 6th clinical T4b Category - 1634624
AJCC/UICC 7th clinical T4b Category - 1634120
AJCC/UICC 8th clinical T4b Category - 1634854"""
* cn 1..* CodeableConcept "cN (M)" """Specifies the clinical N 
"""
* cn insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* cn ^comment = """AJCC/UICC 6th clinical NX Category - 1635104
AJCC/UICC 7th clinical NX Category - 1633679
AJCC/UICC 8th clinical NX Category - 1634797

AJCC/UICC 6th clinical N0 Category - 1633315
AJCC/UICC 7th clinical N0 Category - 1633942
AJCC/UICC 8th clinical N0 Category - 1634070

AJCC/UICC 6th clinical N1 Category - 1635697
AJCC/UICC 7th clinical N1 Category - 1634139
AJCC/UICC 8th clinical N1 Category - 1633651

AJCC/UICC 6th clinical N2 Category - 1635470
AJCC/UICC 7th clinical N2 Category - 1635634
AJCC/UICC 8th clinical N2 Category - 1633763

AJCC/UICC 6th clinical N2a Category - 1634143
AJCC/UICC 7th clinical N2a Category - 1635739
AJCC/UICC 8th clinical N2a Category - 1633788

AJCC/UICC 6th clinical N2b Category - 1633433
AJCC/UICC 7th clinical N2b Category - 1635677
AJCC/UICC 8th clinical N2b Category - 1633323

AJCC/UICC 6th clinical N2c Category - 1634678
AJCC/UICC 7th clinical N2c Category - 1634727
AJCC/UICC 8th clinical N2c Category - 1633271

AJCC/UICC 6th clinical N3 Category - 1635605
AJCC/UICC 7th clinical N3 Category - 1634037
AJCC/UICC 8th clinical N3 Category - 1633854

AJCC/UICC 6th clinical N3a Category - 1633434
AJCC/UICC 7th clinical N3a Category - 1635004
AJCC/UICC 8th clinical N3a Category - 1635496

AJCC/UICC 6th clinical N3b Category - 1635283
AJCC/UICC 7th clinical N3b Category - 1635084
AJCC/UICC 8th clinical N3b Category - 1635828"""
* cm 1..* CodeableConcept "cM (M)" """Specifies the clinical M 
"""
* cm insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* cm ^comment = """AJCC/UICC 6th clinical M0 Category - 1634194
AJCC/UICC 7th clinical M0 Category - 1633468
AJCC/UICC 8th clinical M0 Category - 1634757

AJCC/UICC 6th clinical M1 Category - 1634829
AJCC/UICC 7th clinical M1 Category - 1633276
AJCC/UICC 8th clinical M1 Category - 1633974"""
* extraNodalExtension 1..* CodeableConcept "Extra-nodal extension (rEne) (M)" """Describes the presence or absence of radiological signs of extracapsular extension, as defined in the AJCC 8th Ed 
check CODEs"""
* extraNodalExtension insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* extraNodalExtension ^comment = """ENE- - 36769946
ENE+ - 36770618"""
* clinicalStaging 1..* CodeableConcept "Clinical Staging (M)" """Specifies the clinical TNM 
"""
* clinicalStaging insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* clinicalStaging ^comment = """AJCC/UICC 6th clinical Stage 0 - 1635842
AJCC/UICC 7th clinical Stage 0 - 1633828
AJCC/UICC 8th clinical Stage 0 - 1635824

AJCC/UICC 6th clinical Stage 1 - 1633905
AJCC/UICC 7th clinical Stage 1 - 1634457
AJCC/UICC 8th clinical Stage 1 - 1635758

AJCC/UICC 6th clinical Stage 2 - 1634718
AJCC/UICC 7th clinical Stage 2 - 1635182
AJCC/UICC 8th clinical Stage 2 - 1635217

AJCC/UICC 6th clinical Stage 3 - 1635848
AJCC/UICC 7th clinical Stage 3 - 1635125
AJCC/UICC 8th clinical Stage 3 - 1634596

AJCC/UICC 6th clinical Stage 4 - 1634307
AJCC/UICC 7th clinical Stage 4 - 1634766
AJCC/UICC 8th clinical Stage 4 - 1635029

AJCC/UICC 6th clinical Stage 4A - 1635535
AJCC/UICC 7th clinical Stage 4A - 1634451
AJCC/UICC 8th clinical Stage 4A - 1634810

AJCC/UICC 6th clinical Stage 4B - 1633922
AJCC/UICC 7th clinical Stage 4B - 1635757
AJCC/UICC 8th clinical Stage 4B - 1635708

AJCC/UICC 6th clinical Stage 4C - 1633270
AJCC/UICC 7th clinical Stage 4C - 1634614
AJCC/UICC 8th clinical Stage 4C - 1635006"""
* localised 1..* boolean "Localised (M)" """Describes if there disease is local 
Localised and Number of tumor modules are variables that work together"""
* localised insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* localised ^comment = """Confined disease - 32942"""
* numberOfTumorNodules 0..* integer "Number of tumor nodules (R)" """Indicates the number of tumor nodules in the case the disease is localised 
Localised and Number of tumor modules are variables that work together"""
* numberOfTumorNodules insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* numberOfTumorNodules ^comment = """Number of tumor nodules - 4228659"""
* locoRegional 1..* boolean "Loco-regional (M)" """Indicates if the disease is in a loco-regional extent 
"""
* locoRegional insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* locoRegional ^comment = """

Invasive Disease - 32943


"""
* isTransitMetastasisWithClinicalConfirmation 1..* boolean "Is Transit metastasis with clinical confirmation (M)" """Indicates spread of cancer cells through lymphatic vessels, where they lodge and grow in tissues located between the primary tumor and the nearest regional lymph nodes. 
"""
* isTransitMetastasisWithClinicalConfirmation insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* isTransitMetastasisWithClinicalConfirmation insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* isTransitMetastasisWithClinicalConfirmation ^comment = """Transit Metastasis with Clinical Confirmation - 36769249

"""
* isMultifocalTumor 1..* boolean "Is Multifocal tumor (M)" """Presence of multiple distinct tumor foci (or nodules) within the same organ or tissue, originating from the same primary tumor type. These foci may arise through independent tumorigenesis (multiple primary lesions) or local spread of the same cancer. 
"""
* isMultifocalTumor insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* isMultifocalTumor insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* isMultifocalTumor ^comment = """Multifocal Tumor - 36769933

"""
* regionalNodalMetastases 1..* boolean "Regional nodal metastases (M)" """Describes if regional nodal mestastases happened 
"""
* regionalNodalMetastases insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* regionalNodalMetastases insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* regionalNodalMetastases ^comment = """Regional spread to lymph node - 36769269
"""
* sites 0..* BackboneElement "sites (R)" """Describes if site of metastasic disease  is soft tissue"""
* sites insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.softTissue 0..* boolean "Soft tissue (R)" """Describes if site of metastasic disease  is soft tissue 
"""
* sites.softTissue insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.softTissue insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.softTissue ^comment = """Metastasis to soft tissues - 35225724"""
* sites.distantLymphNode 0..* boolean "distant lymph node (R)" """Describes if site of metastasic disease  is dystan lymph node 
"""
* sites.distantLymphNode insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.distantLymphNode insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.distantLymphNode ^comment = """Distant spread to lymph node - 36769243"""
* sites.lung 0..* boolean "lung (R)" """Describes if site of metastasic disease is lung 
"""
* sites.lung insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.lung insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.lung ^comment = """        Metastasis to lung - 36770283"""
* sites.metastasisatbone 0..* boolean "metastasisAtBone (R)" """Describes if site of metastasic disease  is bone 
"""
* sites.metastasisatbone insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.metastasisatbone insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.metastasisatbone ^comment = """Metastasis to bone - 36769301"""
* sites.liver 0..* boolean "liver (R)" """Describes if site of metastasic disease  is liver 
"""
* sites.liver insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.liver insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.liver ^comment = """Metastasis to liver - 36770544"""
* sites.pleura 0..* boolean "pleura (R)" """Describes if site of metastasic disease  is pleura 
"""
* sites.pleura insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.pleura insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.pleura ^comment = """Metastasis to pleura - 35226258"""
* sites.peritoneum 0..* boolean "peritoneum (R)" """Describes if site of metastasic disease  is peritoneum 
"""
* sites.peritoneum insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.peritoneum insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.peritoneum ^comment = """        Metastasis to peritoneum - 35226253"""
* sites.brain 0..* boolean "brain (R)" """Describes if site of metastasic disease  is brain 
"""
* sites.brain insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.brain insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.brain ^comment = """Metastasis to brain - 36768862"""
* sites.otherViscera 0..* boolean "other viscera (R)" """Describes if site of metastasic disease  is other viscera 
Use the generic metastasis code or a metastasis subsumed in it, 36769180"""
* sites.otherViscera insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.otherViscera insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.otherViscera ^comment = """Metastasis - 36769180"""
* sites.unknown 0..* boolean "unknown (R)" """Describes if site of metastasic disease  is unknown 
"""
* sites.unknown insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.unknown insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.unknown ^comment = """Unknown - 4129922"""
