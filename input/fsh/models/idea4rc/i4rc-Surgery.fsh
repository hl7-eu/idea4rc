//===================================================				
//  Logical Model				i4rc-Surgery.fsh
//===================================================				
Logical: SurgeryI4rc				
Id: Surgery				
Title: "Surgery"				
Description:  """Surgery"""				
* episodeEventReference 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event reference" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* type 1..1 CodeableConcept "Surgery type" """Primary surgery/re-excision (check with unplanned or excisional biopsy)
"""				
* surgeryHospital 1..1 CodeableConcept "Surgery Hospital" """Whether or not a surgical procedure was performed and whether it was performed at the registering hospital or another hospital. Diagnostic procedures (biopsy) are not included."""				
* date 1..1 date "Date of surgery" """Date of the surgery for primary tumor with or without neck surgery"""				
* intention 1..1 CodeableConcept "Surgery intention" """Palliative: surgery performed with the intent of improving quality of life or relieving symptoms caused by advanced disease.
Curative: surgery performed with the intend of oncologic cure, regardless of its result (R0 / R1/R2)"""				
* typeOfApproach 1..1 CodeableConcept "Type of surgical approach on Tumour" """Describes the approach to tumor resection whether it includes skin incision (extenal or open ),  or it 's aproached through a natural orifice (Transnasal/transorbital/transoral) or if the approach combines two or more of the previous ones"""				
* marginsAfterSurgery 0..1 CodeableConcept "Margins after surgery" """The R0 (?no residual rumor?) category applies only to cases in which residual tumor cannot be detected by conventional diagnostic methods. A more exact definition would read ?no detectable residual tumor.?This category corresponds to surgical resection for cure.
The R1 category is reserved exclusively for cases in which residual tumor is found by histologic examination. This category may apply to biopsy sampling of the regional tissue at the site of resection or of a distant site at the time of surgery. It also applies to microscopic examination of the resection margins of the surgical resection specimen by the pathologist.
R2 applies to cases with macroscopically visible residual tumor that is detected either clinically or pathologically."""				
* tumorRupture 1..1 CodeableConcept "Tumor rupture" """Tumor rupture Yes/No"""				
* SpecimenMitoticCount 1..1 Quantity "Surgical specimen Mitotic count" """Surgical specimen Mitotic count"""				
* SpecimenGradingOnlyInUntreatedTumours 1..1 CodeableConcept "Surgical specimen grading only in untreated tumours" """"""				
* isolatedLimbPerfusion 1..1 CodeableConcept "Isolated Limb perfusion" """"""				
* reconstruction 1..1 CodeableConcept "Reconstruction" """Local flap / regional pedicled flap / free flap"""				
* neckSurgery 1..1 CodeableConcept "Neck surgery" """Describes whether a surgical procedure to treat and address the neck was performed or not."""				
* dateOfNeckSurgey 0..1 date "Date of Neck surgey" """Date of the surgery on the neck"""				
* lateralityOfTheDissection 0..1 CodeableConcept "Laterality of the dissection" """Describes laterality of the neck surgical procedure: 
Ipsilateral when only  the neck ipsilateral to the tumor has been treated
Contralateral when only the neck contralateral to the tumor has been treated 
Bilateral: when both sides of the neck have been treated"""				
* surgeryOnM 0..1 CodeableConcept "Surgery on M" """Describes whether surgery is performed to treat the Metastasis"""				
* dateOfSurgeryOnM 0..1 date "Date of surgery on M" """Date of the surgery on the metastasis"""				
* siteOnMetastasis 0..1 boolean "Site of surgery on metastasis" """Describes if site of surgery on metastasis  is soft tissue"""				
* siteOnMetastasis.softTissue 0..1 boolean "Site of surgery on metastasis_soft tissue" """Describes if site of surgery on metastasis  is soft tissue"""				
* siteOnMetastasis.distantLymphNodes 0..1 boolean "Site of surgery on metastasis_distant lymph nodes" """Describes if site of surgery on metastasis  is dystan lymph node"""				
* siteOnMetastasis.lung 0..1 boolean "Site of surgery on metastasis_lung" """Describes if site of surgery on metastasis  is lung"""				
* siteOnMetastasis.bone 0..1 boolean "Site of surgery on metastasis_bone" """Describes if site of surgery on metastasis  is bone"""				
* siteOnMetastasis.liver 0..1 boolean "Site of surgery on metastasis_liver" """Describes if site of surgery on metastasis  is liver"""				
* siteOnMetastasis.pleura 0..1 boolean "Site of surgery on metastasis_pleura" """Describes if site of surgery on metastasis  is pleura"""				
* siteOnMetastasis.peritoneum 0..1 boolean "Site of surgery on metastasis_peritoneum" """Describes if site of surgery on metastasis  is peritoneum"""				
* siteOnMetastasis.brain 0..1 boolean "Site of surgery on metastasis_brain" """Describes if site of surgery on metastasis  is brain"""				
* siteOnMetastasis.otherViscera 0..1 boolean "Site of surgery on metastasis_other viscera" """Describes if site of surgery on metastasis  is other viscera"""				
* siteOnMetastasis.unknown 0..1 boolean "Site of surgery on metastasis_unknown" """Describes if site of surgery on metastasis  is unknown"""				
* surgicalComplications 1..1 CodeableConcept "Surgical complications (Clavien-Dindo Classification)" """Describes presence and grade of complications after a surgical procedure,"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
* type ^comment = """Primary surgery/re-excision (check with unplanned or excisional biopsy)

Surgical procedure - 4301351
Local excision - 4315400
Amputation - 4217482
Limb operation - 4181193
"""				
* surgeryHospital ^comment = """Yes done at the hospital; Yes done at a different hospital; Not Done; Unknown.
Custom"""				
				
* intention ^comment = """Palliative; Curative; Unknown
Palliative - 4179711
Curative procedure intent - 4162591
Unknown - 4129922"""				
* typeOfApproach ^comment = """endoscopic?.

External/Open - 4236080
Transnasal - 4050374
Transorbital - 4044897
Transoral - 4038679
Craniofacial - 4333339
Combined - 
Unknown - 4129922"""				
* marginsAfterSurgery ^comment = """R0 (microscopic negative); R1 (microscopic positive); R2 (macroscopic positive); Unknown
R0: No residual tumor - 1634643
R1: Microscopic residual tumor - 1633801
R2: Macroscopic residual tumor - 1634484
"""				
				
				
* SpecimenGradingOnlyInUntreatedTumours ^comment = """FNCLCC : 1, 2, 3, unknown, not applicable - Other classification system: high/low
Grade-1 - 1634371
Grade-2 - 1634752
Grade-3 - 1633749
Grade-H - 1635587
Grade-L - 1634085"""				
* isolatedLimbPerfusion ^comment = """Yes/No
Isolated limb perfusion - 4019656

"""				
* reconstruction ^comment = """Yes, no, unknown
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
* neckSurgery ^comment = """Yes; No; Unknown.
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
				
* lateralityOfTheDissection ^comment = """Ipsilateral; Bilateral; Controlateral; Unknown.
Ipsilateral - 4112106
Bilateral Sampling - 4117496
Controlateral - 4112107
Unknown - 4129922"""				
* surgeryOnM ^comment = """Yes; No; Unknown.
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
				
				
				
				
				
				
				
				
				
				
				
				
* surgicalComplications ^comment = """No complication; Grade I-V; unknown.
No complication -  4188540
Clavien-Dindo complication scale: Grade I - 715974
Clavien-Dindo complication scale: Grade II - 715975
Clavien-Dindo complication scale: Grade III - 715976
Clavien-Dindo complication scale: Grade IIIA - 715977
Clavien-Dindo complication scale: Grade IIIB - 715978
Clavien-Dindo complication scale: Grade IV - 715979
Clavien-Dindo complication scale: Grade IVA - 715980
Clavien-Dindo complication scale: Grade IVB - 715981
Clavien-Dindo complication scale: Grade V - 715982"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
* episodeEventReference insert ObligationActorAndCode($actor-headneck, #handle)				
* type insert ObligationActorAndCode($actor-headneck, #handle)				
* surgeryHospital insert ObligationActorAndCode($actor-headneck, #handle)				
* date insert ObligationActorAndCode($actor-headneck, #handle)				
* intention insert ObligationActorAndCode($actor-headneck, #handle)				
* typeOfApproach insert ObligationActorAndCode($actor-headneck, #handle)				
* marginsAfterSurgery insert ObligationActorAndCode($actor-headneck, #handle)				
				
				
				
				
* reconstruction insert ObligationActorAndCode($actor-headneck, #handle)				
* neckSurgery insert ObligationActorAndCode($actor-headneck, #handle)				
* dateOfNeckSurgey insert ObligationActorAndCode($actor-headneck, #handle)				
* lateralityOfTheDissection insert ObligationActorAndCode($actor-headneck, #handle)				
* surgeryOnM insert ObligationActorAndCode($actor-headneck, #handle)				
* dateOfSurgeryOnM insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.softTissue insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.distantLymphNodes insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.lung insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.bone insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.liver insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.pleura insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.peritoneum insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.brain insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.otherViscera insert ObligationActorAndCode($actor-headneck, #handle)				
* siteOnMetastasis.unknown insert ObligationActorAndCode($actor-headneck, #handle)				
* surgicalComplications insert ObligationActorAndCode($actor-headneck, #handle)				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
* episodeEventReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* type insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
				
* date insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* intention insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
				
* marginsAfterSurgery insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* tumorRupture insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* SpecimenMitoticCount insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* SpecimenGradingOnlyInUntreatedTumours insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* isolatedLimbPerfusion insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
