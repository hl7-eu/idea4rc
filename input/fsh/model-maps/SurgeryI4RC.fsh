Logical: SurgeryI4RC
Id: Surgery
Title: "Surgery"
Description: """Surgery
Maturity Level: 0 Draft"""
* diagnosisReference 1..* Diagnosis "Diagnosis reference (M)" """Diagnosis reference in case the treatment was done for baseline 
"""
* diagnosisReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* diagnosisReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* episodeEvent 1..* EpisodeEvent "Episode Event reference (M)" """EpisodeEvent element containing the data regarding the patient's cancer, in case the treatment was done for an episode event (progression, recurrence...) 
"""
* episodeEvent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* surgeryType 1..* CodeableConcept "Surgery type (M)" """Primary surgery/re-excision (check with unplanned or excisional biopsy)"""
* surgeryType insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* surgeryType ^comment = """Surgical procedure - 4301351
Local excision - 4315400
Amputation - 4217482
Limb operation - 4181193
"""
* surgeryHospital 1..* string "Surgery Hospital (M)" """Whether or not a surgical procedure was performed and whether it was performed at the registering hospital or another hospital. Diagnostic procedures (biopsy) are not included. 
"""
* surgeryHospital insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* dateOfSurgery 1..* date "Date of surgery (M)" """Date of the surgery for primary tumor with or without neck surgery 
"""
* dateOfSurgery insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* dateOfSurgery insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* surgeryIntention 0..* CodeableConcept "Surgery intention (O)" """Palliative: surgery performed with the intent of improving quality of life or relieving symptoms caused by advanced disease.
Curative: surgery performed with the intend of oncologic cure, regardless of its result (R0 / R1/R2) 
"""
* surgeryIntention insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* surgeryIntention insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* surgeryIntention ^comment = """Palliative - 4179711
Curative procedure intent - 4162591"""
* typeOfSurgicalApproachOnTumour 1..* CodeableConcept "Type of surgical approach on Tumour (M)" """Describes the approach to tumor resection whether it includes skin incision (extenal or open ),  or it 's aproached through a natural orifice (Transnasal/transorbital/transoral) or if the approach combines two or more of the previous ones 
Maybe should be a flag"""
* typeOfSurgicalApproachOnTumour insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* typeOfSurgicalApproachOnTumour ^comment = """External/Open - 4236080
Transnasal - 4050374
Transorbital - 4044897
Transoral - 4038679
Craniofacial - 4333339
Combined surgical approach - 2000100027"""
* marginsAfterSurgery 1..* CodeableConcept "Margins after surgery (M)" """The R0 (“no residual rumor”) category applies only to cases in which residual tumor cannot be detected by conventional diagnostic methods. A more exact definition would read “no detectable residual tumor.”This category corresponds to surgical resection for cure.
The R1 category is reserved exclusively for cases in which residual tumor is found by histologic examination. This category may apply to biopsy sampling of the regional tissue at the site of resection or of a distant site at the time of surgery. It also applies to microscopic examination of the resection margins of the surgical resection specimen by the pathologist.
R2 applies to cases with macroscopically visible residual tumor that is detected either clinically or pathologically. 
"""
* marginsAfterSurgery insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* marginsAfterSurgery insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* marginsAfterSurgery ^comment = """R0: No residual tumor - 1634643
R1: Microscopic residual tumor - 1633801
R2: Macroscopic residual tumor - 1634484
"""
* tumorRupture 1..* boolean "Tumor rupture (M)" """Tumor rupture Yes/No 
Cancer modifiers (associated with diagnosis)

For Absence use value_as_concept_id = ABSENT"""
* tumorRupture insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* tumorRupture ^comment = """Tumor Rupture - 36768904"""
* extraNodalExtension 1..* CodeableConcept "Extra-nodal extension (rEne) (M)" """Describes the presence or absence of radiological signs of extracapsular extension by histopathologic examination or not, as defined in the AJCC 8th Ed. It's also present in the Clinical/Pathological stages for baseline diagnosis. 
check CODEs"""
* extraNodalExtension insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* extraNodalExtension ^comment = """ENE- - 36769946
ENE+ - 36770618"""
* surgicalSpecimenMitoticCount 1..* Quantity "Surgical specimen Mitotic count (M)" """Surgical specimen Mitotic count 
"""
* surgicalSpecimenMitoticCount insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* surgicalSpecimenMitoticCount ^comment = """Number of mitoses per 10 high power fields - 4227243
"""
* surgicalSpecimenGradingOnlyInUntreatedTumours 1..* CodeableConcept "Surgical specimen grading only in untreated tumours (M)" """Provides the grading for surgical specimen only for untreated tumours 
"""
* surgicalSpecimenGradingOnlyInUntreatedTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* surgicalSpecimenGradingOnlyInUntreatedTumours ^comment = """Grade-1 - 1634371
Grade-2 - 1634752
Grade-3 - 1633749
Grade-H - 1635587
Grade-L - 1634085"""
* reconstruction 1..* boolean "Reconstruction (M)" """Local flap / regional pedicled flap / free flap 
"""
* reconstruction insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* reconstruction ^comment = """Yes - 4188539
No -  4188540"""
* neckSurgery 1..* boolean "Neck surgery (M)" """Describes whether a surgical procedure to treat and address the neck was performed or not. 
"""
* neckSurgery insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* neckSurgery ^comment = """Yes - 4188539
No -  4188540"""
* dateOfNeckSurgery 1..* date "Date of Neck surgery (M)" """Date of the surgery on the neck 
"""
* dateOfNeckSurgery insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* lateralityOfTheDissection 1..* CodeableConcept "Laterality of the dissection (M)" """Describes laterality of the neck surgical procedure: 
Ipsilateral when only  the neck ipsilateral to the tumor has been treated
Contralateral when only the neck contralateral to the tumor has been treated 
Bilateral: when both sides of the neck have been treated 
"""
* lateralityOfTheDissection insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* lateralityOfTheDissection ^comment = """Ipsilateral - 4112106
Bilateral Sampling - 4117496
Controlateral - 4112107"""
* surgeryOnM 1..* boolean "Surgery on M (M)" """Describes whether surgery is performed to treat the Metastasis 
"""
* surgeryOnM insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* surgeryOnM ^comment = """Yes - 4188539
No -  4188540"""
* dateOfSurgeryOnM 1..* date "Date of surgery on M (M)" """Date of the surgery on the metastasis 
"""
* dateOfSurgeryOnM insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis 0..* BackboneElement "Site of surgery on metastasis_soft tissue (O)" """Describes if site of surgery on metastasis  is soft tissue 
"""
* siteOfSurgeryOnMetastasis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.softTissue 0..* boolean "Site of surgery on metastasis_soft tissue (O)" """Describes if site of surgery on metastasis  is soft tissue 
"""
* siteOfSurgeryOnMetastasis.softTissue insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.softTissue ^comment = """Metastasis to soft tissues - 35225724"""
* siteOfSurgeryOnMetastasis.distantLymphNodes 0..* boolean "Site of surgery on metastasis_distant lymph nodes (O)" """Describes if site of surgery on metastasis  is dystan lymph node 
"""
* siteOfSurgeryOnMetastasis.distantLymphNodes insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.distantLymphNodes ^comment = """Distant spread to lymph node - 36769243"""
* siteOfSurgeryOnMetastasis.lung 0..* boolean "Site of surgery on metastasis_lung (O)" """Describes if site of surgery on metastasis  is lung 
"""
* siteOfSurgeryOnMetastasis.lung insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.lung ^comment = """Metastasis to lung - 36770283"""
* siteOfSurgeryOnMetastasis.bone 0..* boolean "Site of surgery on metastasis_bone (O)" """Describes if site of surgery on metastasis  is bone 
"""
* siteOfSurgeryOnMetastasis.bone insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.bone ^comment = """Metastasis to bone - 36769301"""
* siteOfSurgeryOnMetastasis.liver 0..* boolean "Site of surgery on metastasis_liver (O)" """Describes if site of surgery on metastasis  is liver 
"""
* siteOfSurgeryOnMetastasis.liver insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.liver ^comment = """Metastasis to liver - 36770544"""
* siteOfSurgeryOnMetastasis.pleura 0..* boolean "Site of surgery on metastasis_pleura (O)" """Describes if site of surgery on metastasis  is pleura 
"""
* siteOfSurgeryOnMetastasis.pleura insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.pleura ^comment = """Metastasis to pleura - 35226258"""
* siteOfSurgeryOnMetastasis.peritoneum 0..* boolean "Site of surgery on metastasis_peritoneum (O)" """Describes if site of surgery on metastasis  is peritoneum 
"""
* siteOfSurgeryOnMetastasis.peritoneum insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.peritoneum ^comment = """Metastasis to peritoneum - 35226253"""
* siteOfSurgeryOnMetastasis.brain 0..* boolean "Site of surgery on metastasis_brain (O)" """Describes if site of surgery on metastasis  is brain 
"""
* siteOfSurgeryOnMetastasis.brain insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.brain ^comment = """Metastasis to brain - 36768862"""
* siteOfSurgeryOnMetastasis.otherViscera 0..* boolean "Site of surgery on metastasis_other viscera (O)" """Describes if site of surgery on metastasis  is other viscera 
Use the generic metastasis code or a metastasis subsumed in it, 36769180"""
* siteOfSurgeryOnMetastasis.otherViscera insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.otherViscera ^comment = """Metastasis - 36769180"""
* siteOfSurgeryOnMetastasis.unknown 0..* boolean "Site of surgery on metastasis_unknown (O)" """Describes if site of surgery on metastasis  is unknown 
"""
* siteOfSurgeryOnMetastasis.unknown insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* siteOfSurgeryOnMetastasis.unknown ^comment = """Unknown - 4129922"""
* surgicalComplications 1..* CodeableConcept "Surgical complications (Clavien-Dindo Classification) (M)" """Describes presence and grade of complications after a surgical procedure, 
"""
* surgicalComplications insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* surgicalComplications ^comment = """Absent - 4132135
Clavien-Dindo complication scale: Grade I - 715974
Clavien-Dindo complication scale: Grade II - 715975
Clavien-Dindo complication scale: Grade III - 715976
Clavien-Dindo complication scale: Grade IIIA - 715977
Clavien-Dindo complication scale: Grade IIIB - 715978
Clavien-Dindo complication scale: Grade IV - 715979
Clavien-Dindo complication scale: Grade IVA - 715980
Clavien-Dindo complication scale: Grade IVB - 715981
Clavien-Dindo complication scale: Grade V - 715982"""
