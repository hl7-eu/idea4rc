//===================================================				
//  Logical Model				i4rc-Surgery.fsh
//===================================================				
Logical: Surgery				
Id: Surgery				
Title: "Surgery"				
Description:  """Surgery"""				
* episodeEventReference 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event reference" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* surgery 1..1 CodeableConcept "Surgery" """Whether or not a surgical procedure was performed and whether it was performed at the registering hospital or another hospital. Diagnostic procedures (biopsy) are not included."""				
* dateOfSurgery 1..1 date "Date of surgery" """Date of the surgery for primary tumor with or without neck surgery"""				
* surgeryIntention 1..1 CodeableConcept "Surgery intention" """Palliative: surgery performed with the intent of improving quality of life or relieving symptoms caused by advanced disease.
Curative: surgery performed with the intend of oncologic cure, regardless of its result (R0 / R1/R2)"""				
* typeOfSurgicalApproachOnTumour 1..1 CodeableConcept "Type of surgical approach on Tumour" """Describes the approach to tumor resection whether it includes skin incision (extenal or open ),  or it 's aproached through a natural orifice (Transnasal/transorbital/transoral) or if the approach combines two or more of the previous ones"""				
* marginsAfterSurgery 1..1 CodeableConcept "Margins after surgery" """The R0 (?no residual rumor?) category applies only to cases in which residual tumor cannot be detected by conventional diagnostic methods. A more exact definition would read ?no detectable residual tumor.?This category corresponds to surgical resection for cure.
The R1 category is reserved exclusively for cases in which residual tumor is found by histologic examination. This category may apply to biopsy sampling of the regional tissue at the site of resection or of a distant site at the time of surgery. It also applies to microscopic examination of the resection margins of the surgical resection specimen by the pathologist.
R2 applies to cases with macroscopically visible residual tumor that is detected either clinically or pathologically."""				
* reconstruction 0..1 CodeableConcept "Reconstruction" """Local flap / regional pedicled flap / free flap"""				
* neckSurgery 1..1 CodeableConcept "Neck surgery" """Describes whether a surgical procedure to treat and address the neck was performed or not."""				
* dateOfNeckSurgey 1..1 date "Date of Neck surgey" """Date of the surgery on the neck"""				
* lateralityOfTheDissection 1..1 CodeableConcept "Laterality of the dissection" """Describes laterality of the neck surgical procedure: 
Ipsilateral when only  the neck ipsilateral to the tumor has been treated
Contralateral when only the neck contralateral to the tumor has been treated 
Bilateral: when both sides of the neck have been treated"""				
* surgeryOnM 1..1 CodeableConcept "Surgery on M" """Describes whether surgery is performed to treat the Metastasis"""				
* dateOfSurgeryOnM 1..1 date "Date of surgery on M" """Date of the surgery on the metastasis"""				
* siteOfSurgeryOnMetastasis 1..1 BackboneElement "Site of surgery on metastasis" """Describes the site of surgery on metastasis"""				
* siteOfSurgeryOnMetastasis.SoftTissue 0..1 boolean "Site of surgery on metastasis_soft tissue" """Describes if site of surgery on metastasis  is soft tissue"""				
* siteOfSurgeryOnMetastasis.DistantLymphNodes 0..1 boolean "Site of surgery on metastasis_distant lymph nodes" """Describes if site of surgery on metastasis  is dystan lymph node"""				
* siteOfSurgeryOnMetastasis.Lung 0..1 boolean "Site of surgery on metastasis_lung" """Describes if site of surgery on metastasis  is lung"""				
* siteOfSurgeryOnMetastasis.Bone 0..1 boolean "Site of surgery on metastasis_bone" """Describes if site of surgery on metastasis  is bone"""				
* siteOfSurgeryOnMetastasis.Liver 0..1 boolean "Site of surgery on metastasis_liver" """Describes if site of surgery on metastasis  is liver"""				
* siteOfSurgeryOnMetastasis.Pleura 0..1 boolean "Site of surgery on metastasis_pleura" """Describes if site of surgery on metastasis  is pleura"""				
* siteOfSurgeryOnMetastasis.Peritoneum 0..1 boolean "Site of surgery on metastasis_peritoneum" """Describes if site of surgery on metastasis  is peritoneum"""				
* siteOfSurgeryOnMetastasis.Brain 0..1 boolean "Site of surgery on metastasis_brain" """Describes if site of surgery on metastasis  is brain"""				
* siteOfSurgeryOnMetastasis.OtherViscera 0..1 boolean "Site of surgery on metastasis_other viscera" """Describes if site of surgery on metastasis  is other viscera"""				
* siteOfSurgeryOnMetastasis.Unknown 0..1 boolean "Site of surgery on metastasis_unknown" """Describes if site of surgery on metastasis  is unknown"""				
* surgicalComplicationsClavienDindoClassification 1..1 CodeableConcept "Surgical complications (Clavien-Dindo Classification)" """Describes presence and grade of complications after a surgical procedure,"""				
//--- END				
//--- END				
//--- END				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
* surgery ^comment = """Yes done at the hospital; Yes done at a different hospital; Not Done; Unknown.
Custom"""				
				
* surgeryIntention ^comment = """Palliative; Curative; Unknown
Palliative - 4179711
Curative - 
Unknown - 4129922"""				
* typeOfSurgicalApproachOnTumour ^comment = """endoscopic?.

External/Open - 4236080
Transnasal - 4050374
Transorbital - 4044897
Transoral - 4038679
Craniofacial - 4333339
Combined - 
Unknown - 4129922"""				
* marginsAfterSurgery ^comment = """R0 (microscopic negative); R1 (microscopic positive); R2 (macroscopic positive); Unknown
R0 (microscopic negative) - 4121182
R1 (microscopic positive) -  4175704
R2 (macroscopic positive) - 4081832
Unknown - 4129922"""				
* reconstruction ^comment = """Yes, no, unknown
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
* neckSurgery ^comment = """Yes; No; Unknown.
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
				
				
* surgeryOnM ^comment = """Yes; No; Unknown.
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
				
				
				
				
				
				
				
				
				
				
				
				
* surgicalComplicationsClavienDindoClassification ^comment = """No complication; Grade I-V; unknown.
No complication -  4188540
Grade I - 40459832
Grade II - 40459833
Grade III - 40459834
Grade IV - 40459835
Grade V - 40459836 
Unknown - 4129922"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
