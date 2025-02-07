Logical: PathologicalStageI4RC
Id: PathologicalStage
Title: "Pathological Stage"
Description: """Pathological Stage
Maturity Level: 0 Draft"""
* diagnosis 1..* Diagnosis "Diagnosis Reference (M)" """Diagnosis element containing the data regarding the patient's cancer 
"""
* diagnosis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* diagnosis insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* doneBy 1..* string "Staging procedures done by (M)" """Describes the ID of the institution where staging procedure for primary tumour was performed 
"""
* doneBy insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
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

 Fluorodeoxyglucose positron emission tomography - 2000100025
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
* pt 1..* CodeableConcept "pT (M)" """Specifies the pathological T 
"""
* pt insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* pt ^comment = """AJCC/UICC 6th pathological TX Category - 1634270
AJCC/UICC 7th pathological TX Category - 1635402
AJCC/UICC 8th pathological TX Category - 1634986

AJCC/UICC 6th Tis Category - 1635660
AJCC/UICC 7th Tis Category - 1633798
AJCC/UICC 8th Tis Category - 1634720

AJCC/UICC 6th pathological T0 Category - 1633279
AJCC/UICC 7th pathological T0 Category - 1634675
AJCC/UICC 8th pathological T0 Category - 1634635

AJCC/UICC 6th pathological T1 Category - 1633445
AJCC/UICC 7th pathological T1 Category - 1635422
AJCC/UICC 8th pathological T1 Category - 1635070

AJCC/UICC 6th pathological T2 Category - 1634792
AJCC/UICC 7th pathological T2 Category - 1634491
AJCC/UICC 8th pathological T2 Category - 1633307

AJCC/UICC 6th pathological T3 Category - 1635670
AJCC/UICC 7th pathological T3 Category - 1634658
AJCC/UICC 8th pathological T3 Category - 1634386

AJCC/UICC 6th pathological T4 Category - 1635311
AJCC/UICC 7th pathological T4 Category - 1635341
AJCC/UICC 8th pathological T4 Category - 1635396

AJCC/UICC 6th pathological T4a Category - 1634101
AJCC/UICC 7th pathological T4a Category - 1633723
AJCC/UICC 8th pathological T4a Category - 1634894

AJCC/UICC 6th pathological T4b Category - 1633900
AJCC/UICC 7th pathological T4b Category - 1633699
AJCC/UICC 8th pathological T4b Category - 1633658"""
* pn 1..* CodeableConcept "pN (M)" """Specifies the pathological N 
"""
* pn insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* pn ^comment = """
AJCC/UICC 6th pathological NX Category - 1635823
AJCC/UICC 7th pathological NX Category - 1634505
AJCC/UICC 8th pathological NX Category - 1634117

AJCC/UICC 6th pathological N0 Category - 1634212
AJCC/UICC 7th pathological N0 Category - 1633726
AJCC/UICC 8th pathological N0 Category - 1635560

AJCC/UICC 6th pathological N1 Category - 1634562
AJCC/UICC 7th pathological N1 Category - 1634245
AJCC/UICC 8th pathological N1 Category - 1633659

AJCC/UICC 6th pathological N2 Category - 1634541
AJCC/UICC 7th pathological N2 Category - 1633569
AJCC/UICC 8th pathological N2 Category - 1633336

AJCC/UICC 6th pathological N2a Category - 1633273
AJCC/UICC 7th pathological N2a Category - 1635717
AJCC/UICC 8th pathological N2a Category - 1635871

AJCC/UICC 6th pathological N2b Category - 1634773
AJCC/UICC 7th pathological N2b Category - 1633607
AJCC/UICC 8th pathological N2b Category - 1634645

AJCC/UICC 6th pathological N2c Category - 1635113
AJCC/UICC 7th pathological N2c Category - 1634601
AJCC/UICC 8th pathological N2c Category - 1634383

AJCC/UICC 6th pathological N3 Category - 1634504
AJCC/UICC 7th pathological N3 Category - 1633668
AJCC/UICC 8th pathological N3 Category - 1635307

AJCC/UICC 6th pathological N3a Category - 1634271
AJCC/UICC 7th pathological N3a Category - 1634397
AJCC/UICC 8th pathological N3a Category - 1635545

AJCC/UICC 6th pathological N3b Category - 1633500
AJCC/UICC 7th pathological N3b Category - 1634847
AJCC/UICC 8th pathological N3b Category - 1634770"""
* pm 1..* CodeableConcept "pM (M)" """Specifies the pathological M 
"""
* pm insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* pm ^comment = """AJCC/UICC 6th pathological M0 Category - 1635345
AJCC/UICC 7th pathological M0 Category - 1635536
AJCC/UICC 8th pathological M0 Category - 1634606

AJCC/UICC 6th pathological M1 Category - 1633469
AJCC/UICC 7th pathological M1 Category - 1635336
AJCC/UICC 8th pathological M1 Category - 1634891"""
* extraNodalExtension 1..* CodeableConcept "Extra-nodal extension (rEne) (M)" """Describes the presence or absence of radiological signs of extracapsular extension, as defined in the AJCC 8th Ed 
check CODEs"""
* extraNodalExtension insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* extraNodalExtension ^comment = """ENE- - 36769946
ENE+ - 36770618"""
* sentinelNode 1..* boolean "Sentinel node (M)" """Describes whether a sentinel node procedure was performed or not. Sentinel lymph node biopsy is considered a diagnostic procedure, therefore, per se, the neck is not considered to have been treated if it does not lead to a neck dissection. 
"""
* sentinelNode insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sentinelNode ^comment = """Sentinel lymph node biopsy - 4263386"""
* pathologicalStaging 1..* CodeableConcept "Pathological staging (M)" """Specifies the clinical TNM 
"""
* pathologicalStaging insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* pathologicalStaging ^comment = """
AJCC/UICC 6th pathological Stage 0 - 1634741
AJCC/UICC 7th pathological Stage 0 - 1635511
AJCC/UICC 8th pathological Stage 0 - 1634787

AJCC/UICC 6th pathological Stage 1 - 1635797
AJCC/UICC 7th pathological Stage 1 - 1635800
AJCC/UICC 8th pathological Stage 1 - 1634799

AJCC/UICC 6th pathological Stage 2 - 1633751
AJCC/UICC 7th pathological Stage 2 - 1634619
AJCC/UICC 8th pathological Stage 2 - 1635386


AJCC/UICC 6th pathological Stage 3 - 1633499
AJCC/UICC 7th pathological Stage 3 - 1634947
AJCC/UICC 8th pathological Stage 3 - 1634705

AJCC/UICC 6th pathological Stage 4 - 1634208
AJCC/UICC 7th pathological Stage 4 - 1635230
AJCC/UICC 8th pathological Stage 4 - 1633697

AJCC/UICC 6th pathological Stage 4A - 1634731
AJCC/UICC 7th pathological Stage 4A - 1635745
AJCC/UICC 8th pathological Stage 4A - 1634005

AJCC/UICC 6th pathological Stage 4B - 1635370
AJCC/UICC 7th pathological Stage 4B - 1634472
AJCC/UICC 8th pathological Stage 4B - 1634487

AJCC/UICC 6th pathological Stage 4C - 1635893
AJCC/UICC 7th pathological Stage 4C - 1634492
AJCC/UICC 8th pathological Stage 4C - 1634551"""
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
* sites.lung 0..* boolean "lung (R)" """Describes if site of metastasic disease  is lung 
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
