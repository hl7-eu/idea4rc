Logical: RadiotherapyI4RC
Id: Radiotherapy
Title: "Radiotherapy"
Description: """Radiotherapy
Maturity Level: 0 Draft"""
* diagnosisReference 1..* Diagnosis "Diagnosis reference (M)" """Diagnosis reference in case the treatment was done for baseline 
"""
* diagnosisReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* diagnosisReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* episodeEvent 1..* EpisodeEvent "Episode Event reference (M)" """EpisodeEvent element containing the data regarding the patient's cancer 
"""
* episodeEvent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* radiotherapyHospital 1..* string "Radiotherapy Hospital (M)" """Whether it was performed at the registering hospital or another hospital. 
"""
* radiotherapyHospital insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* radiotherapyHospital insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* intent 1..* CodeableConcept "Intent (M)" """Radiotherapy intent refers to whether the intention of treatment is to cure the patient or to treat symptoms and palliate 
"""
* intent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* intent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* intent ^comment = """Palliative - 4179711
Curative procedure intent - 4162591"""
* setting 0..* CodeableConcept "Setting (M (only if Intent is Curative OR Unknown))" """Whether radiotherapy is delivered as the main treatment modality (definitive) or if it is delivered before or after another treatment such as surgery 
THIS INFO CAN BE DERIVED AT QUERY TIME (OMOP)

Preoperative: Refers to radiotherapy given before surgery.
Preoperative Concomitant to Systemic Treatment: Radiotherapy administered before surgery, alongside systemic treatments (like chemotherapy).
Postoperative: Radiotherapy given after surgery.
Postoperative Concomitant to Systemic Treatment: Radiotherapy given after surgery along with systemic treatments.
Definitive: Radiotherapy used as the primary treatment without planned surgery.
Definitive Concomitant to Systemic Treatment: Radiotherapy used as the main treatment alongside systemic therapy with curative intent.

We need to check it also at query time. So we are deriving the information at query time and we will also perform quality checks. Additionally, do them at normalized table in possible cases."""
* setting insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* setting insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* setting ^comment = """Preoperative -  4059384
Preoperative radiotherapy concomitant to systemic treatment - 2000100031
Postoperative - 4058775
Postoperative concomitant to systemic treatment - 2000100032
Definitive radiotherapy - 2000100033
Definitive radiotherapy concomitant to systemic treatment - 2000100034"""
* beamQuality 1..* CodeableConcept "Beam quality (M)" """Describes the type of radiation therapy given. If external beam, please specify if delivered with Photons (most common), electrons, carbon, or protons. 
'External beam RT Photons - 607996
 External beam RT Electrons - 4165039
External beam radiation therapy using carbon ions - 607995
External Beam RT Protons - 4024005
Brachytherapy interstitial endocavitary contact - 4012485
Radionuclide therapy - 4161415
Boron neutron capture Therapy - 4058601
other -  4077953'
'2D - 603132
Three dimensional external beam radiation therapy - 37156151
IMRT CONVENTIONAL - 40480519
VMAT - 603135
Tomotherapy - 3662120
SBRT - 4215577
Ultra high dose rate radiotherapy - 37156211
PASSIVE SCATTERING - 
SINGLE BEAM OPTIMIZATION - CUSTOM CODE
Intensity Modulated Proton Therapy (IMPT) - CUSTOM CODE 
Other -  4077990'"""
* beamQuality insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* beamQuality ^comment = """External beam RT Photons - 607996
 External beam RT Electrons - 4165039
External beam radiation therapy using carbon ions - 607995
External Beam RT Protons - 4024005
Brachytherapy interstitial endocavitary contact - 4012485
Radionuclide therapy - 4161415
Boron neutron capture Therapy - 4058601
other -  4077953"""
* other 0..* string "Other; specify (O)" """ 
"""
* other insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* treatmentTechnique 1..* CodeableConcept "Treatment technique (M)" """Refers to the type of radiotherapy treatment delivered 
'External beam RT Photons - 607996
 External beam RT Electrons - 4165039
External beam radiation therapy using carbon ions - 607995
External Beam RT Protons - 4024005
Brachytherapy interstitial endocavitary contact - 4012485
Radionuclide therapy - 4161415
Boron neutron capture Therapy - 4058601
other -  4077953'
'2D - 603132
Three dimensional external beam radiation therapy - 37156151
IMRT CONVENTIONAL - 40480519
VMAT - 603135
Tomotherapy - 3662120
SBRT - 4215577
Ultra high dose rate radiotherapy - 37156211
PASSIVE SCATTERING - 
SINGLE BEAM OPTIMIZATION - CUSTOM CODE
Intensity Modulated Proton Therapy (IMPT) - CUSTOM CODE 
Other -  4077990'"""
* treatmentTechnique insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* treatmentTechnique ^comment = """Two dimensional (2D) radiotherapy - 2000100035
Three dimensional (3D) radiotherapy - 2000100036
Intensity modulated radiation therapy (IMRT) - 2000100037
Volumetric modulated arc therapy (VMAT) - 2000100038
Tomotherapy - 2000100039
Stereotactic radiotherapy (SBRT) - 2000100040
Ultra high dose rate radiotherapy (Flash therapy) - 2000100041
Passive scattering - 2000100042
Single beam optimization - 2000100043
Intensity modulated proton therapy (IMPT) - 2000100044"""
* totalDoseGy 1..* Quantity "Total Dose (TD) Gy (M)" """Refers to the total dose delivered to the patient in Gy 
"""
* totalDoseGy insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* totalDoseGy insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* totalHighDose 0..* Quantity "Total High Dose (Gy) (R)" """Refers to the highest dose delivered to the patient. In a SIB boost and SEQ (only with a single beam) this varibale contains the same value of theTotal Dose. Value only expected for progression, recurrence... 
"""
* totalHighDose insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* totalHighDose ^comment = """High dose - 4129296"""
* numberOfFractions 1..* Quantity "Number of fractions (M)" """Refers to the total number of fractions delivered to the patient 
"""
* numberOfFractions insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* numberOfFractions insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* adaptiveRt 0..* boolean "Adaptive RT (O)" """Refers to whether treatment planning was changed or adapted after the initial radiation plan was developed. This could be due to a change in the patient’s anatomy or if the tumor changed in size. 
"""
* adaptiveRt insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* adaptiveRt ^comment = """Adaptive radiotherapy - 2000100045"""
* igrt 0..* boolean "IGRT  (image guide radiotherapy) (O)" """Refers to whether image guided radiotherapy was used for delivery of radiotherapy and to check the patient set up. This includes MV, KV, or Cone Beam CT imaging. 
"""
* igrt insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* igrt ^comment = """Image guided radiotherapy (IGRT) - 2000100046"""
* reirradiation 0..* boolean "Reirradiation (local or regional) (O)" """Whether the patient was re-irradiated loco-regionally. Value only expected for progression, recurrence... 
"""
* reirradiation insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* reirradiation ^comment = """NOT to be recorded in OMOP, it should be derived from second radiotherapy in same site."""
* fieldOfReirradiation 0..* CodeableConcept "Field of Re-irradiation (O)" """Specifes the reason for loco-regional re-irradiation. Value only expected for progression, recurrence... 
"""
* fieldOfReirradiation insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* fieldOfReirradiation ^comment = """Re-irradiation in field of first radiation - 2000100047
Re-irradiation out of field of first radiation - 2000100048
Re-irradiation marginal field of first radiation - 2000100049"""
* startDate 1..* date "Start date (M)" """Date when  the first radiation treatment was delivered 
"""
* startDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* startDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* endDate 1..* date "End  date (M)" """Date when the last radiation treatment ended 
"""
* endDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* endDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* treatmentSitePrimaryOnly 0..* boolean "Treatment site primary only (M (suggest to modify the label into Primary only))" """ 
"""
* treatmentSitePrimaryOnly insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* treatmentSiteNeckOnly 0..* boolean "Treatment site neck only (M (suggest to modify the label into Neck only))" """ 
"""
* treatmentSiteNeckOnly insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* treatmentSitePrimaryAndIpsilateralNeck 1..* boolean "Treatment site primary and ipsilateral neck (M)" """Refers to the areas that the radiation is targeting. This could include the primary tumor , the neck lymph nodes, the ipsilateral neck and the primary, the bilateral neck and the primary, or a distant metastatic lesion 
"""
* treatmentSitePrimaryAndIpsilateralNeck insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* treatmentSitePrimaryAndBilateralNeck 1..* boolean "Treatment site primary and bilateral neck (M)" """Refers to the areas that the radiation is targeting. This could include the primary tumor , the neck lymph nodes, the ipsilateral neck and the primary, the bilateral neck and the primary, or a distant metastatic lesion 
"""
* treatmentSitePrimaryAndBilateralNeck insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* treatmentSiteDistantMetastasis 1..* boolean "Treatment site distant metastasis (M)" """Designates which treatment sites were irradiated. Lung Vs Mediastinum Vs Bone Vs soft tissue vs liver Vs other. 
"""
* treatmentSiteDistantMetastasis insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* treatmentSiteDistantMetastasis ^comment = """Metastasis - 36769180

NO SPECIFIC CODE (DEPRECATED)"""
* metastaticTreatmentSiteLung 0..* boolean "Metastatic treatment site lung (R)" """Designates which treatment sites were irradiated. Lung Vs Mediastinum Vs Bone Vs soft tissue vs liver Vs other. 
"""
* metastaticTreatmentSiteLung insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* metastaticTreatmentSiteLung insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* metastaticTreatmentSiteLung ^comment = """        Metastasis to lung - 36770283"""
* metastaticTreatmentSiteMediastinum 0..* boolean "Metastatic treatment site mediastinum (R)" """Designates which treatment sites were irradiated. Lung Vs Mediastinum Vs Bone Vs soft tissue vs liver Vs other. 
"""
* metastaticTreatmentSiteMediastinum insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* metastaticTreatmentSiteMediastinum insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* metastaticTreatmentSiteMediastinum ^comment = """Metastasis to mediastinum - 35225542"""
* metastaticTreatmentSiteBone 0..* boolean "Metastatic treatment site bone (R)" """Designates which treatment sites were irradiated. Lung Vs Mediastinum Vs Bone Vs soft tissue vs liver Vs other. 
"""
* metastaticTreatmentSiteBone insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* metastaticTreatmentSiteBone insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* metastaticTreatmentSiteBone ^comment = """Metastasis to bone - 36769301"""
* metastaticTreatmentSiteSoftTissue 0..* boolean "Metastatic treatment site soft tissue (R)" """Designates which treatment sites were irradiated. Lung Vs Mediastinum Vs Bone Vs soft tissue vs liver Vs other. 
"""
* metastaticTreatmentSiteSoftTissue insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* metastaticTreatmentSiteSoftTissue insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* metastaticTreatmentSiteSoftTissue ^comment = """Metastasis to soft tissues - 35225724"""
* metastaticTreatmentSiteLiver 0..* boolean "Metastatic treatment site liver (R)" """Designates which treatment sites were irradiated. Lung Vs Mediastinum Vs Bone Vs soft tissue vs liver Vs other. 
"""
* metastaticTreatmentSiteLiver insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* metastaticTreatmentSiteLiver insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* metastaticTreatmentSiteLiver ^comment = """Metastasis to liver - 36770544"""
* rtTreatmentCompletedAsPlanned 1..* CodeableConcept "RT Treatment Completed as Planned? (M)" """Refers to whether patient completed all treatment as planned or if it had to be interrupted due to several reasons including toxicity, a co-morbidity preventing the delivery of radiation (pulmonary embolism, failure to thrive during RT), death due to progression of the cancer or patient decision 
Check CODES"""
* rtTreatmentCompletedAsPlanned insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* rtTreatmentCompletedAsPlanned insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* rtTreatmentCompletedAsPlanned ^comment = """Completed successfully - 44788181
Radiotherapy course change due to acute radiotherapy toxicity - 4161588
Treatment ended due to comorbidity - CUSTOM CODE 
Intolerance - 4105297
Procedure discontinued by patient - 37017062
Death - 4306655"""
* regionalDeepHyperthemia 1..* CodeableConcept "Regional deep hyperthemia (M)" """Whether Regional Deep Hyperthemia was applied with the RT (information for Regional Deep Hyperthemia can be found in the specific entity) 
Redundant"""
* regionalDeepHyperthemia insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* treatmentResponse 0..* CodeableConcept "Treatment response (R)" """Clinical treatment response for the radiotherapy 
OLD

Complete response - 4163135
Partial response -  4161302
Stable disease - 32948
Progression - 4168352
Unknown - 4129922

'A treatment response is a record of the EPISODE table;
episode_start_date is end date of regimen;
episode_object_concept_id is the overarching sarcoma'




"""
* treatmentResponse insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* treatmentResponse ^comment = """Complete Remission - 32946
Partial Remission - 32947
Stable Disease - 32948
Progression - 32949
Not applicable - 4294169 (Not usable in OMOP)"""
