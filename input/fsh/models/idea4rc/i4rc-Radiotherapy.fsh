//===================================================		
//  Logical Model		i4rc-Radiotherapy.fsh
//===================================================		
Logical: Radiotherapy		
Id: Radiotherapy		
Title: "Radiotherapy"		
Description:  """Radiotherapy"""		
* episodeEventReference 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event reference" """EpisodeEvent element containing the data regarding the patient's cancer"""		
* radiotherapy 1..1 CodeableConcept "Radiotherapy" """Whether radiotherapy was delivered to a patient, either curatively or palliatively and whether it was performed at the registering hospital or another hospital."""		
* intent 1..1 CodeableConcept "Intent" """Radiotherapy intent refers to whether the intention of treatment is to cure the patient or to treat symptoms and palliate"""		
* setting 0..1 CodeableConcept "Setting" """Whether radiotherapy is delivered as the main treatment modality (definitive) or if it is delivered before or after another treatment such as surgery"""		
* beamQuality 1..1 CodeableConcept "Beam quality" """Describes the type of radiation therapy given. If external beam, please specify if delivered with Photons (most common), electrons, carbon, or protons."""		
* otherSpecify 0..1 string "Other; specify" """Other; specify"""		
* treatmentTechnique 1..1 CodeableConcept "Treatment technique" """Refers to the type of radiotherapy treatment delivered"""		
* totalDoseTdGy 1..1 decimal "Total Dose (TD) Gy" """Refers to the total dose delivered to the patient in Gy"""		
* fractionSizeFs 1..1 decimal "Fraction Size (FS)" """Refers to the Dose per fraction delivered to the patient."""		
* numberOfFractions 1..1 decimal "Number of fractions" """Refers to the total number of fractions delivered to the patient"""		
* adaptiveRt 0..1 CodeableConcept "Adaptive RT" """Refers to whether treatment planning was changed or adapted after the initial radiation plan was developed. This could be due to a change in the patient?s anatomy or if the tumor changed in size."""		
* igrtImageGuideRadiotherapy 0..1 CodeableConcept "IGRT  (image guide radiotherapy)" """Refers to whether image guided radiotherapy was used for delivery of radiotherapy and to check the patient set up. This includes MV, KV, or Cone Beam CT imaging."""		
* startDate 1..1 date "Start date" """Date when  the first radiation treatment was delivered"""		
* endDate 1..1 date "End  date" """Date when the last radiation treatment ended"""		
* treatmentSites 0..1 BackboneElement "Treatment Sites:" """Refers to the areas that the radiation is targeting. This could include the primary tumor , the neck lymph nodes, the ipsilateral neck and the primary, the bilateral neck and the primary, or a distant metastatic lesion"""		
* treatmentSites.primary 0..1 boolean "Primary" """Primary"""		
* treatmentSites.neck 0..1 boolean "Neck" """Neck"""		
* treatmentSites.primaryAndIpsilateralNeck 1..1 boolean "Primary and Ipsilateral Neck" """Primary and Ipsilateral Neck"""		
* treatmentSites.primaryAndBilateralNeck 1..1 boolean "Primary and Bilateral Neck" """Primary and Bilateral Neck"""		
* treatmentSites.distantMetastasis 1..1 boolean "Distant Metastasis" """Distant Metastasis"""		
* metastaticTreatmentSites 0..1 BackboneElement "Metastatic Treatment Sites:" """Designates which treatment sites were irradiated. Lung Vs Mediastinum Vs Bone Vs soft tissue vs liver Vs other."""		
* metastaticTreatmentSites.lung 0..1 boolean "Lung" """Lung"""		
* metastaticTreatmentSites.mediastinum 0..1 boolean "Mediastinum" """Mediastinum"""		
* metastaticTreatmentSites.bone 0..1 boolean "Bone" """Bone"""		
* metastaticTreatmentSites.softTissue 0..1 boolean "Soft Tissue" """Soft Tissue"""		
* metastaticTreatmentSites.liver 0..1 boolean "Liver" """Liver"""		
* treatmentCompletedAsPlanned 1..1 CodeableConcept "Treatment Completed as Planned?" """Refers to whether patient completed all treatment as planned or if it had to be interrupted due to several reasons including toxicity, a co-morbidity preventing the delivery of radiation (pulmonary embolism, failure to thrive during RT), death due to progression of the cancer or patient decision"""		
//--- END		
//--- END		
//--- END		
//--- END		
		
		
		
		
		
		
		
		
		
//--------------------------------------------------------------------------------		
//  Logical Model - Comments		
//--------------------------------------------------------------------------------		
		
* radiotherapy ^comment = """Yes done at the hospital; Yes done at a different hospital; Not Done; Unknown.
Custom"""		
* intent ^comment = """Palliative; Curative; Unknwon
Palliative - 4179711
Curative - 
Unknown - 4129922"""		
* setting ^comment = """Preoperative; Preoperative concomitant to systemic treatment;
Postoperative;Postoperative concomitant to systemic treatment;
Definitive; Definitive concomitant to systemic treatment;                                                                                              Unknown                                                                                           
Preoperative -  4059384
Preoperative concomitant to systemic treatment - 
Postoperative - 4058775
Postoperative concomitant to systemic treatment - 
Definitive - 
Definitive concomitant to systemic treatment -                                                                                               Unknown - 4129922                                                                                          """		
* beamQuality ^comment = """External beam RT Photons; External beam RT Electrons; External Beam RT Carbons; External Beam RT Protons; Brachytherapy interstitial endocavitary contact; Radionuclide therapy; Boron neutron capture Therapy; other; unknown
External beam RT Photons - 607996
 External beam RT Electrons - 4165039
External Beam RT Carbons -  
External Beam RT Protons - 4024005
Brachytherapy interstitial endocavitary contact - 4012485
Radionuclide therapy - 4161415
Boron neutron capture Therapy - 4058601
other -  4077953
Unknown - 4129922"""		
		
* treatmentTechnique ^comment = """2D; 3D; IMRT CONVENTIONAL; VMAT; Tomotherapy; SBRT; FLASH THERAPY; PASSIVE SCATTERING; SINGLE BEAM OPTIMIZATION; IMPT; OTHER; unknown
2D - 603132
3D - 4043011
IMRT CONVENTIONAL - 40480519
VMAT - 603135
Tomotherapy - 3662120
SBRT - 4215577
FLASH THERAPY - 
PASSIVE SCATTERING - 
SINGLE BEAM OPTIMIZATION - 
IMPT - 
Other -  4077990
Unknown - 4129922"""		
		
		
		
* adaptiveRt ^comment = """Yes; No; Unknown.
Yes - 4188539
No -  4188540
Unknown - 4129922"""		
* igrtImageGuideRadiotherapy ^comment = """Yes; No; Unknown.
Yes - 4188539
No -  4188540
Unknown - 4129922"""		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
* treatmentCompletedAsPlanned ^comment = """Completion; Toxicity; Comorbidity; Patient  intolerance; Patient decision; Death;  Unknown.
Completion - 4058777 
Toxicity - 438028
Comorbidity - 4162706 
Patient  intolerance -  4105297
Patients decision - 
Death - 4306655
Unknown - 4129922"""		
//--- END		
//--- END		
//--- END		
//--- END		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
