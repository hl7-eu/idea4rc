//===================================================				
//  Logical Model				i4rc-treatment.fsh
//===================================================				
Logical: TreatmentI4rc				
Id: Treatment				
Title: "Treatment"				
Description:  """Treatment
Maturity Level: 0 Draft"""				
* surgery 0..1 BackboneElement "Surgery " """Surgery """				
* surgeryPerformed 0..1 string "Surgery performed" """Whether or not a surgical procedure was performed and whether it was performed at the registering hospital or another hospital Diagnostic procedures biopsy are not included"""				
* dateOfTumourSurgery 0..1 date "Date of tumour surgery" """Date of the surgery for primary tumor with or without neck surgery"""				
* surgeryIntention 0..1 string "Surgery intention" """The intention of the perfromed surgery Palliative surgery performed with the intent of improving quality of life or relieving symptoms caused by advanced disease
Curative surgery performed with the intend of oncologic cure regardless of its result R0  R1R2"""				
* tumorSurgeryApproach 0..1 string "Tumor surgery approach" """Describes the approach to tumor resection whether it includes skin incision extenal or open   or it s aproached through a natural orifice Transnasaltransorbitaltransoral or if the approach combines two or more of the previous ones"""				
* tumorSurgeryDevice 0..1 string "Tumor surgery device" """Describes  the device used LASER  Robot"""				
* surgicalProcedure 0..* BackboneElement "Surgical procedure" """Describes the procedure performed"""				
* surgicalProcedure.surgicalProcedureNasopharynx 0..1 string "Surgical procedure Nasopharynx" """Describes the procedure performed to resect tumor from nasopharynx any kind of tumor removal either open or endoscopic Diagnostic biopsy is not included"""				
* surgicalProcedure.surgicalProcedureNasalCavityAndParanasalSinus 0..1 string "Surgical Procedure Nasal Cavity And Paranasal Sinus" """Describes the procedure performed to resect tumor from  nasal cavity and paranasal sinus"""				
* surgicalProcedure.surgicalProcedureSalivaryGland 0..1 string "Surgical Procedure Salivary Gland" """Describes the procedure performed on salivary glands """				
* surgicalProcedure.surgicalProcedureEar 0..1 string "Surgical procedure Ear" """Describes the procedure performed onear and temporal bone"""				
* surgicalProcedure.surgicalProcedureLip 0..1 string "Surgical procedure  Lip" """Describes the procedure performed on the lip"""				
* surgicalProcedure.surgicalProcedureOralCavity 0..1 string "Surgical procedure Oral cavity" """Describes the procedure performed on the oral cavity"""				
* surgicalProcedure.surgicalProcedureMandibulectomy 0..1 string "Surgical procedure mandibulectomy" """Describes the procedure performed on the mandible"""				
* surgicalProcedure.surgicalProcedureOropharynx 0..1 string "Surgical procedure Oropharynx" """Describes the procedure performed on the oropharynx cavity 
Lateral Oropharyngectomy LO Types were described by De Virgilio in 2019 See references
Transoral Base Of Tongue TOBOT Resection Types were described by De Virgilio in 2021 See references"""				
* surgicalProcedure.surgicalProcedureHypopharynx 0..1 string "Surgical procedure Hypopharynx" """Describes the procedure performed on the hypopharynx"""				
* surgicalProcedure.surgicalProcedureLarynx 0..1 string "Surgical procedure Larynx" """Laryngo fissure and cordectomy is a procololized procedure to remove tumors from the vocal cords through an incision in the skin and a vertical section of the thyroid cartilage
Vertical hemilaryngectomy is a protocoled procedure Please see references
TLM cordectomies were defined by Remacle et al in  2007 please see references
TSL were defined by Remacle et al in 2009 please see references
OPHL were defined by Succo et al in 2014 please see references
Neartotal laryngectomy refers to procolized procedures that remove the entire larynx except for some elements arytenoids  to improve speech production but the patient requires a permanent stoma to breathe
Total laryngectomy is a protocoled procedure to remove all laryngeal tissue and results in a permanent stoma"""				
* reconstruction 0..1 BackboneElement "Reconstruction" """Reconstruction procedure that was performed after tomor removal to restore either shape or function"""				
* reconstruction.flag 0..1 string "Reconstruction" """Describes whether a reconstruction procedure was performed after tomor removal to restore either shape or function"""				
* reconstruction.reconstructionType 0..1 string "Reconstruction Type" """Describes type of grft or flap used for the reconstruction Combined flaps is used when two or more pedicle andor microvascular flap is used for reconstruction simultaneously Otherwise the most complex flaps used must be choosen 
"""				
* reconstruction.firstFlapUsedForReconstruction 0..1 string "First Flap used for reconstruction" """Describes the flap used for reconstrucion when only one flap was used When two or more flaps has been used the most complex or advanced one must be choosen If the procedure performed is not defined and protocoled the most appropriate one will be chosen from the list of options"""				
* reconstruction.secondFlapUsedForReconstruction 0..1 string "Second Flap used for reconstruction" """Describes the secind flap used for reconstruction when more than one flap was used When more than two flaps has been used the most complex or advanced one must be choosen"""				
* neckSurgery 0..1 string "Neck surgery" """Describes whether a surgical procedure to treat and address the neck was performed or not """				
* dateOfNeckSurgeryIfDifferentFromDateOfTumorSiteSurgery 0..1 date "Date of neck surgery  if different from date of tumor site surgery" """Date of the surgery for the neck when it was performed after tumor resection """				
* dateOfNeckSurgeryDayUnknown 0..1 date "Date of neck surgery day unknown" """Describes if the day of neck surgery is unknwon"""				
* nodePicking 0..1 string "Node picking" """Describes whether a nonprotocoled and nonstandardized resection of more than one lymph node is performed or not"""				
* neckDissection 0..1 string "Neck dissection" """Describes whether a protocoled and standardized en block resection of lymphatic tissue is performed or not"""				
* lateralityOfTheDissection 0..1 string "Laterality of the dissection" """Describes laterality of the neck surgical procedure 
Ipsilateral when only  the neck ipsilateral to the tumor has been treated
Contralateral when only the neck contralateral to the tumor has been treated 
Bilateral when both sides of the neck have been treated"""				
* surgicalProcedureRightNeck 0..1 string "Surgical procedure right neck" """Describes surgical procedure performed to treat the right neck if applies  
Neck Dissection clasification is described according to the Consensus published by Robbins et al in 2002 See references
Central Neck dissection includes all subtypes defined by Orloff in 2011 See reference
"""				
* surgicalProcedureRightNeckLevelsDissected 0..1 string "Surgical procedure right neck levels dissected" """Multiple selection all lymphatic levels defined by the Consensus published by Robbins et al  in 2002 treated must be choosen"""				
* surgicalProcedureLeftNeck 0..1 string "Surgical procedure left neck" """Describes surgical procedure performed to treat the left neck if applies  
Neck Dissection clasification is described according to the Consensus published by Robbins et al in 2002 See references
Central Neck dissection includes all subtypes defined by Orloff in 2011 See reference """				
* surgicalProcedureLeftNeckLevelsDissected 0..1 string "Surgical procedure left neck levels dissected" """Multiple selection all lymphatic levels defined by the Consensus published by Robbins et al  in 2002 treated must be choosen"""				
* surgeryOnM 0..1 string "Surgery on M" """Describes whether surgery is performed to treat the Metastasis"""				
* siteOfSurgeryOnMetastasis 0..1 BackboneElement "Site of surgery on metastasis" """Site of surgery on metastasis"""				
* siteOfSurgeryOnMetastasisSoftTissue 0..1 string "Site of surgery on metastasis soft tissue" """Describes if site of surgery on metastasis  is soft tissue"""				
* siteOfSurgeryOnMetastasisDistantLymphNodes 0..1 string "Site of surgery on metastasis distant lymph nodes" """Describes if site of surgery on metastasis  is dystan lymph node"""				
* siteOfSurgeryOnMetastasisLung 0..1 string "Site of surgery on metastasis lung" """Describes if site of surgery on metastasis  is lung"""				
* siteOfSurgeryOnMetastasisBone 0..1 string "Site of surgery on metastasis bone" """Describes if site of surgery on metastasis  is bone"""				
* siteOfSurgeryOnMetastasisLiver 0..1 string "Site of surgery on metastasis liver" """Describes if site of surgery on metastasis  is liver"""				
* siteOfSurgeryOnMetastasisPleura 0..1 string "Site of surgery on metastasis pleura" """Describes if site of surgery on metastasis  is pleura"""				
* siteOfSurgeryOnMetastasisPeritoneum 0..1 string "Site of surgery on metastasis peritoneum" """Describes if site of surgery on metastasis  is peritoneum"""				
* siteOfSurgeryOnMetastasisBrain 0..1 string "Site of surgery on metastasis brain" """Describes if site of surgery on metastasis  is brain"""				
* siteOfSurgeryOnMetastasisOtherViscera 0..1 string "Site of surgery on metastasis other viscera" """Describes if site of surgery on metastasis  is other viscera"""				
* siteOfSurgeryOnMetastasisUnknown 0..1 string "Site of surgery on metastasis unknown" """Describes if site of surgery on metastasis  is unknown"""				
* dateOfSurgeryOnMIfDifferentFromDateOfTumorSiteSurgery 0..1 date "Date of surgery on M  if different from date of tumor site surgery" """Date of the surgery on the metastasis"""				
* surgicalWorstComplications 0..1 string "Surgical complications ClavienDindo Classification please select the worst one" """Describes presence and grade of complications after a surgical procedure """				
* surgical2ndWorstComplications 0..1 string "Surgical complications ClavienDindo Classification 2 complications please select the 2 worst one" """Describes presence and grade of complications after a surgical procedure """				
* unplannedSurgery 0..1 string "Unplanned surgery" """Describes whether an unplanned surgery was performed with radical intention after the first one that was not completed  inappropriate Please do not include here the surgery performed to treat a complication of the first intervention eg bleeding"""				
* dateOfUnplannedSurgery 0..1 date "Date of unplanned surgery" """Date of the unplanned surgery"""				
* marginsAfterUnplannedSurgery 0..1 string "Margins after unplanned surgery" """The R0 no residual rumor category applies only to cases in which residual tumor cannot be detected by conventional diagnostic methods A more exact definition would read no detectable residual tumorThis category corresponds to surgical resection for cure
The R1 category is reserved exclusively for cases in which residual tumor is found by histologic examination This category may apply to biopsy sampling of the regional tissue at the site of resection or of a distant site at the time of surgery It also applies to microscopic examination of the resection margins of the surgical resection specimen by the pathologist
R2 applies to cases with macroscopically visible residual tumor that is detected either clinically or pathologically"""				
* unplannedNeckSurgery 0..1 string "Unplanned neck surgery" """Describes whether an unplanned surgical procedure to treat and address the neck was performed or not """				
* systemicTreament 0..1 BackboneElement "Systemic Treament" """Systemic Treament"""				
* systemicTreatmentPerformed 0..1 string "Systemic treatment performed " """Describes whether or not a systemic treatment ie chemotherapy target therapy immuntherapy was performed and whether it was performed at the registering hospital or another hospital"""				
* chooseTheSingleTreatment 0..1 string "Choose the single treatment" """Select the type of systemic treatment administered It is possible to directly select the single treatment as appropriate"""				
* intent 0..1 string "Intent" """Clarifies the reasons why systemic therapy is administered
 Curative chemotherapy is chemotherapy administered with the goal of achieving a complete remission and preventing the recurrence of cancer 
 Palliative chemotherapy refers to any chemotherapy administration that is not curative but administered simply to decrease tumor load and increase life expectancy It has been defined also as treatment in circumstances where the impact of intervention is insufficient to result in major survival advantage but does affect improvement in terms of tumorrelated symptoms
"""				
* setting 0..1 string "Setting " """clarifies the context  how the therapy was administered alone or in conjunction with other treatments
 Neoadjuvant treatment given as a first step to shrink a tumor before the main treatment which is usually surgery is given Examples of neoadjuvant therapy include chemotherapy radiation therapy and hormone therapy It is a type of induction therapy
 Adjuvant additional cancer treatment given after the primary treatment to lower the risk that the cancer will come back Adjuvant therapy may include chemotherapy radiation therapy hormone therapy targeted therapy or biological therapy
 Concomitantconcurrent A treatment that is given at the same time as another es Chemotherapy  radiotherapy
"""				
* startDateSystemicTreatment 0..1 date "Start date systemic treatment" """Specifies when systemic treatment begins"""				
* startDateSystemicTreatmentDayUnknown 0..1 date "Start date systemic treatment  day unknown" """Describes if the day of start systemic treatment is unknwon"""				
* endDateSystemicTreatment 0..1 date "End date systemic treatment" """Specifies when systemic treatment ends"""				
* endDateSystemicTreatmentDayUnknown 0..1 date "End date systemic treatment  day unknown" """Describes if the day of end of systemic treatment is unknwon"""				
* numberOfCyclesAdministrations 0..1 integer "Number of cycles administrations" """clarifies how many times the treatment was administered A cycle of treatment is a period of treatment followed by a period of rest no treatment For example treatment given for one week followed by three weeks of rest is one cycle of treatment A cycle can be repeated multiple times"""				
* regimen 0..1 BackboneElement "Regimen" """specifies the systemic treatment drug from a predefined list If one or more drugs used are not present in the predefined list add them in the Drug 1 Drug 2 Drug 3 variables You can add up to 3 drugs not included in the predefined list"""				
* drugs1 0..1 string "Drugs 1" """autosuggested functionality for realtime searching within biomedical ontologies"""				
* drugs2 0..1 string "Drugs 2" """autosuggested functionality for realtime searching within biomedical ontologies"""				
* drugs3 0..1 string "Drugs 3" """autosuggested functionality for realtime searching within biomedical ontologies"""				
* plasmaticEbvDnaDuringSystemicTreatment 0..1 string "Plasmatic EBV DNA during systemic treatment" """Describes the result of EBV DNA plasma testing during treatment in NPC type II and III WHO"""				
* primerType 0..1 string "Primer type" """Describes the primer used for EBV DNA plasma testing duringin NPC type II and Type III WHO"""				
* copyNumber 0..1 integer "Copy Number" """Copy number of EBVDNA in NPC"""				
* plasmaticEbvDnaAfterSystemicTreatment 0..1 string "Plasmatic EBV DNA after systemic treatment" """Describes the result of EBV DNA plasma testing after treatment in NPC type II and III WHO"""				
* afterTreatment-primerType 0..1 string "Primer type" """Describes the primer used for EBV DNA plasma testing after treatment in NPC type II and Type III WHO"""				
* afterTreatment-copyNumber 0..1 integer "Copy Number" """Copy number of EBVDNA in NPC"""				
* reasonForEndOfTreatment 0..1 string "Reason for end of treatment" """Clarifies the reasons why the treatment ended or was interrupted"""				
* regimenChanged 0..1 string "Regimen changed" """Clarifies if the regimen drug changed after a toxicity or a patient intolerance"""				
* regimenChanged-regimen 0..1 BackboneElement "Regimen " """Clarifies the drug that was administred after a toxicity or a patient intolerance that required to change the previous drug f one or more drugs used are not present in the predefined list add them in the Drug 1 Drug 2 Drug 3 variables You can add up to 3 drugs not included in the predefined list"""				
* regimenChanged-otherDrug1 0..1 string "Other Drug1" """Specifies the drug if not present in the regimen list up to 3 selection"""				
* regimenChanged-otherDrug2 0..1 BackboneElement "Other Drug2" """Other Drug2"""				
* regimenChanged-otherDrug3 0..1 BackboneElement "Other Drug3" """Other Drug3"""				
* startDateRegimenChanged 0..1 date "Start date regimen changed" """specifies when the new systemic treatment begins if a combination please specify the start of the first drug"""				
* startDateRegimenChangedDayUnknown 0..1 date "Start date regimen changed  day unknown" """Describes if the day of the begining of the  new systemic treatment  is unknwon"""				
* endDateRegimenChanged 0..1 date "End date regimen changed" """specifies when the new  systemic treatment endsif a combination please specify the end of the last drug"""				
* endDateRegimenChangedDayUnknown 0..1 date "End  date regimen changed  day unknown" """Describes if the day of the end of the systemic treatment is unknwon"""				
* regimenChanged-reasonForEndOfTreatment 0..1 string "Reason for end of treatment" """Clarifies the reasons why the treatment ended or was interrupted"""				
* treatmentResponseBasedOnImagingAloneNoRecistOrOtherCriteria 0..1 string "Treatment response based on imaging alone no recist or other criteria" """Measures how well a cancer patient responds to treatment RECIST criteria should not be applied The definition of Complete response Partial response Stable disease Progression should be based on the clinical judgement based on imaging  Only when settingneoadiuvant or  palliative"""				
* treatmentResponseDefinedDone 0..1 string "Treatment response defineddone" """Describes whether the treatment response was assessed at the registering hospital or another hospital"""				
* systemicTreatment2 0..1 string "Systemic treatment 2" """Specifies if another systemic treatment was performed"""				
* radiotherapy 0..1 BackboneElement "Radiotherapy" """"""				
* radiotherapywhere 0..1 string "RadiotherapyWhere" """Whether radiotherapy was delivered to a patient either curatively or palliatively and whether it was performed at the registering hospital or another hospital"""				
* intent-2 0..1 string "Intent" """Radiotherapy intent refers to whether the intention of treatment is to cure the patient or to treat symptoms and palliate"""				
* setting-2 0..1 string "Setting " """Whether radiotherapy is delivered as the main treatment modality definitive or if it is delivered before or after another treatment such as surgery"""				
* postoperativeRadiotherapyIndications 0..1 string "Postoperative Radiotherapy Indications" """Describes the reason for adjuvant or postoperative radiotherapy after surgical treatment Positive margins refer to margins positive at the inked surface"""				
* beamQuality 0..1 string "Beam quality" """Describes the type of radiation therapy given If external beam please specify if delivered with Photons most common electrons carbon or protons"""				
* beamQuality-otherSpecify 0..1 BackboneElement "Other specify " """"""				
* treatmentTechnique 0..1 string "Treatment technique" """Refers to the type of radiotherapy treatment delivered"""				
* treatmentTechnique-otherSpecify 0..1 BackboneElement "Other specify" """"""				
* boostType 0..1 string "Boost type" """Refers to whether the boost dose given was done after the initial dose was delivered sequential or if the dose was delivered simultaneously with the initial dose"""				
* treatmentPlan 0..1 string "Treatment Plan" """Refers to whether the plan is a single plan with multiple doses delivered during the same plan or if there is a sequential boost plan Finally if the radiotherapy was adapted or changed due to change in the patients tumor or anatomy this is referred to as adaptive planning"""				
* totalDoseTdGy 0..1 Quantity "Total Dose TD Gy" """Refers to the total dose delivered to the patient in Gy"""				
* fractionSizeFs 0..1 Quantity "Fraction Size FS" """Refers to the Dose per fraction delivered to the patient"""				
* numberOfFractions 0..1 integer "Number of fractions" """Refers to the total number of fractions delivered to the patient"""				
* totalHighDoseGy 0..1 Quantity "Total High Dose Gy" """Refers to the highest dose delivered to the patient"""				
* totalHighDoseFraction 0..1 Quantity "Total High DoseFraction" """Refers to the dose per fraction delivered to the patient in relation to the high dose  Calculated as the ratio of total high dose and numbers of fractions"""				
* totalIntermediateDoseGy 0..1 Quantity "Total Intermediate Dose Gy" """Refers to the dose that was intermediate between the low and high dose and was delivered to the patients tumor This dose is typically referred to as the high risk microscopic disease dose"""				
* totalIntermediateDoseFraction 0..1 Quantity "Total Intermediate DoseFraction" """Refers to the dose per fraction delivered to the patient in relation to the intermediate dose  Calculated as the ratio of total intermediate dose and numbers of fractions"""				
* totalLowDoseGy 0..1 Quantity "Total Low Dose Gy" """The lowest dose prescribed to the patients tumor"""				
* totalLowDoseFraction 0..1 Quantity "Total Low DoseFraction" """Refers to the dose per fraction delivered to the patient in relation to the low dose  Calculated as the ratio of total low dose and numbers of fractions"""				
* fractionationPattern 0..1 BackboneElement "Fractionation Pattern" """Refers to the pattern of how the radiation was delivered"""				
* alteredFractionationScheme 0..1 BackboneElement "Altered Fractionation Scheme" """BID refers to radiotherapy delivered twice daily This could be either daily BID Daily or once weekly BID once weekly Other options are also available included 6 fractions per week and hypofractionation"""				
* adaptiveRt 0..1 string "Adaptive RT" """Refers to whether treatment planning was changed or adapted after the initial radiation plan was developed This could be due to a change in the patients anatomy or if the tumor changed in size"""				
* igrtImageGuideRadiotherapy 0..1 string "IGRT  image guide radiotherapy" """Refers to whether image guided radiotherapy was used for delivery of radiotherapy and to check the patient set up This includes MV KV or Cone Beam CT imaging"""				
* secondBeamQuality 0..1 string "Second beam quality" """Describes the type of radiation therapy given as second beam If external beam please specify if delivered with Photons most common electrons carbon or protons"""				
* otherSpecify2 0..1 string "Other specify 2" """Specifies if the second beam quality is other"""				
* treatmentTechnique2 0..1 string "Treatment technique2" """Refers to the type of radiotherapy treatment delivered as second beam"""				
* treatmentTechnique2OtherSpecify 0..1 string "Treatment technique2 other specify " """Refers to whether patient completed all treatment as planned or if it had to be interrupted due to several reasons including toxicity a comorbidity preventing the delivery of radiation pulmonary embolism failure to thrive during RT death due to progression of the cancer or patient decision"""				
* startDate 0..1 date "Start date" """Date when  the first radiation treatment was delivered"""				
* startDateRadiotherapyDayUnknown 0..1 date "Start date radiotherapy day unknown" """Describes if the day of start radiotherapy  is unknwon"""				
* endDate 0..1 date "End  date" """Date when the last radiation treatment ended"""				
* endDateRadiotherapyDayUnknown 0..1 date "End date radiotherapy day unknown" """Describes if the day of end of radiotherapy  is unknwon"""				
* treatmentInterruption2DaysNotIncludingIntendedBreaks 0..1 string "Treatment Interruption 2 days not including intended breaks" """referred to an interruption in the prescribed radiation schedule of 2 days but which does not include intended days such as on days in which the department is not treating Holidays"""				
* treatmentDaysMissed 0..1 Quantity "Treatment days missed" """Refers to the number of days missed during treatment"""				
* overallTreatmentTimeOtt 0..1 Quantity "Overall Treatment TimeOTT" """Number of days that the radiation treatment took inclusive of  the first and last day Automatic calculated"""				
* overallTreatmentTimeOttManualInDays 0..1 Quantity "Overall Treatment TimeOTT  manual in days " """Number of days that the radiation treatment took inclusive of  the first and last day"""				
* treatmentSites 0..1 BackboneElement "Treatment Sites" """Refers to the areas that the radiation is targeting This could include the primary tumor  the neck lymph nodes the ipsilateral neck and the primary the bilateral neck and the primary or a distant metastatic lesion"""				
* primary 0..1 BackboneElement "Primary " """Primary """				
* neck 0..1 BackboneElement "Neck " """Neck """				
* primaryAndIpsilateralNeck 0..1 BackboneElement "Primary and Ipsilateral Neck" """Primary and Ipsilateral Neck"""				
* primaryAndBilateralNeck 0..1 BackboneElement "Primary and Bilateral Neck" """Primary and Bilateral Neck"""				
* distantMetastasis 0..1 BackboneElement "Distant Metastasis" """Distant Metastasis"""				
* metastaticTreatmentSites 0..1 BackboneElement "Metastatic Treatment Sites" """Designates which treatment sites were irradiated Lung Vs Mediastinum Vs Bone Vs soft tissue vs liver Vs other"""				
* lung
 0..1 BackboneElement "Lung
" """Lung
"""				
* mediastinum
 0..1 BackboneElement "Mediastinum
" """Mediastinum
"""				
* bone
 0..1 BackboneElement "Bone
" """Bone
"""				
* softTissue
 0..1 BackboneElement "Soft Tissue
" """Soft Tissue
"""				
* liver
 0..1 BackboneElement "Liver
" """Liver
"""				
* unknown 0..1 BackboneElement "Unknown" """Unknown"""				
* other 0..1 BackboneElement "Other " """Other """				
* otherSpecify 0..1 BackboneElement "Other specify" """Other specify"""				
* neckLevelsIrradiatedRight 0..1 string "Neck Levels Irradiated Right" """Refers to which neck levels were irradiated during treatment Please use the consensus guideline for nodal level delineation in the N0 neck 2013 update to specify neck levels"""				
* neckLevelsIrradiatedLeft 0..1 string "Neck Levels Irradiated Left" """Same as above but for the left neck"""				
* ctvHighExpansion 0..1 string "CTV High Expansion" """Refers to the margin that was used from GTV to CTV for the highest prescription dose"""				
* ptvHighExpansion 0..1 string "PTV High expansion" """Refers to the margin that was used from CTV to PTV"""				
* v60OfSkin 0..1 string "V60 of Skin" """Refers to the volume of skin receiving at least 60 Gy"""				
* treatmentCompletedAsPlanned 0..1 string "Treatment Completed as Planned " """Refers to whether patient completed all treatment as planned or if it had to be interrupted due to several reasons including toxicity a comorbidity preventing the delivery of radiation pulmonary embolism failure to thrive during RT death due to progression of the cancer or patient decision"""				
* hospitalizedDuringRt 0..1 string "Hospitalized during RT" """Did the patient has been hospitalized during RT"""				
* carotidBlowout 0..1 string "Carotid Blowout " """Did the patient develop a carotid blow out during or after radiation"""				
* feedingTubeDuringRt 0..1 string "Feeding Tube during RT" """Was a feeding tube required after RT"""				
* feedingTubeReason 0..1 string "Feeding Tube reason" """Was the feeding tube placed only prophylactically or reactively due to significant weight loss during treatment"""				
* smokingDuringRt 0..1 string "Smoking during RT" """Did the patient smoke cigarettes during radiation"""				
* alcoholDuringRt 0..1 string "Alcohol during RT" """Did the patient drink alcohol during radiation"""				
* otherTypeOfTreatment 0..1 BackboneElement "Other type of treatment" """Other type of treatment"""				
* otherTreatmentPerformed 0..1 BackboneElement "Other treatment performed" """Other treatment performed"""				
* dateOfStart 0..1 BackboneElement "Date of start other treatment " """Date of start other treatment """				
* dateOfOtherTreatmentDayUnknown 0..1 BackboneElement "Date of other treatment day unknown" """Date of other treatment day unknown"""				
* dateOfEnd 0..1 BackboneElement "Date of end other treatment " """Date of end other treatment """				
* dateOfEndOtherTreatmentDayUnknown 0..1 BackboneElement "Date of end other treatment day unknown" """Date of end other treatment day unknown"""				
* type 0..1 BackboneElement "Type" """Type"""				
* treatmentCompleted 0..1 BackboneElement "Treatment Completed as Planned " """Treatment Completed as Planned """				
* overallTreatmentResponse 0..1 BackboneElement "Overall treatment response" """Overall treatment response"""				
* treatmentResponseBasedOnImagingAloneNoRecistOrOtherCriteria-2 0..1 BackboneElement "Treatment response based on imaging alone no recist or other criteria" """Treatment response based on imaging alone no recist or other criteria"""				
* treatmentResponseDefineddone 0..1 BackboneElement "Treatment response defineddone" """Treatment response defineddone"""				
* patientIncludedInClinicalTrial 0..1 BackboneElement "PATIENT INCLUDED IN CLINICAL TRIAL " """PATIENT INCLUDED IN CLINICAL TRIAL """				
* patientIncludedInAClinicalTrial 0..1 BackboneElement "Patient included in a clinical trial" """Patient included in a clinical trial"""				
* clinicalTrialCode 0..1 BackboneElement "Clinical trial code" """Clinical trial code"""				
* instrumentStatus 0..1 BackboneElement "Instrument status" """Instrument status"""				
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
				
* surgeryPerformed ^comment = """A string value representing if and where was the surgery performed"""				
* dateOfTumourSurgery ^comment = """Must be formatted as YYYYMMDD Leave empty if not known Optional rule  Possible date anonymisation by
setting the 15th of every month ie YYYYMM15 If the month is not known we set it to June 06"""				
* surgeryIntention ^comment = """A string value whether the surgery was performed with palliative or curative intentions of it was unknown"""				
* tumorSurgeryApproach ^comment = """A string value to describe the used approach"""				
* tumorSurgeryDevice ^comment = """A string value to specify the used device"""				
				
* surgicalProcedure.surgicalProcedureNasopharynx ^comment = """A string value to specify the used procedure for the nasopharynx tumour"""				
* surgicalProcedure.surgicalProcedureNasalCavityAndParanasalSinus ^comment = """A string value to specify the procedure for the nasal cavity and paranasal sinus tumour"""				
* surgicalProcedure.surgicalProcedureSalivaryGland ^comment = """A string value to specify the procedure for the salivary glands tumour"""				
* surgicalProcedure.surgicalProcedureEar ^comment = """A string value to specify the procedure for the ear"""				
* surgicalProcedure.surgicalProcedureLip ^comment = """A string value to specify the procedure for the lip tumour"""				
* surgicalProcedure.surgicalProcedureOralCavity ^comment = """A string value to specify the procedure for the oral cavity tumour"""				
* surgicalProcedure.surgicalProcedureMandibulectomy ^comment = """A string value to specify the procedure for the mandibule tumour"""				
* surgicalProcedure.surgicalProcedureOropharynx ^comment = """A string value to specify the procedure for the oropharynx tumour"""				
* surgicalProcedure.surgicalProcedureHypopharynx ^comment = """A string value to specify the procedure for the hypopharynx tumour"""				
* surgicalProcedure.surgicalProcedureLarynx ^comment = """A string value to specify the procedure for the larynx tumour"""				
				
* reconstruction.flag ^comment = """A string value to specify whether a reconstruction procedure was performed"""				
* reconstruction.reconstructionType ^comment = """A string value to describe the type of graft or flap used for the reconstruction"""				
* reconstruction.firstFlapUsedForReconstruction ^comment = """A string value to describe the first and only if so flap used for reconstruction"""				
* reconstruction.secondFlapUsedForReconstruction ^comment = """A string value to describe the second flap used for reconstruction"""				
* neckSurgery ^comment = """A string value to describe whether a surgical procedure for the neck was performed"""				
* dateOfNeckSurgeryIfDifferentFromDateOfTumorSiteSurgery ^comment = """Date of the surgery for the neck when it was performed after tumor resection """				
				
* nodePicking ^comment = """String describing whether a nonprotocoled and nonstandardized resection of more than one lymph node is performed or not"""				
* neckDissection ^comment = """String describing whether a protocoled and standardized en block resection of lymphatic tissue is performed or not"""				
* lateralityOfTheDissection ^comment = """String describing the laterality of the neck surgical procedure"""				
* surgicalProcedureRightNeck ^comment = """String describing the surgical procedure performed right"""				
* surgicalProcedureRightNeckLevelsDissected ^comment = """String describing the lympathic levels"""				
* surgicalProcedureLeftNeck ^comment = """String describing the surgical procedure performed left"""				
* surgicalProcedureLeftNeckLevelsDissected ^comment = """String describing the lympathic levels"""				
* surgeryOnM ^comment = """A string describing whether the surgery on metastasis was performed or not"""				
				
				
				
				
				
				
				
				
				
				
				
* dateOfSurgeryOnMIfDifferentFromDateOfTumorSiteSurgery ^comment = """A date"""				
* surgicalWorstComplications ^comment = """A string describing the presence and grade of complications after a surgical procedure Rank1"""				
* surgical2ndWorstComplications ^comment = """A string describing the presence and grade of complications after a surgical procedure Rank2"""				
* unplannedSurgery ^comment = """A  string describing whether an unplanned surgery was performed with radical intention after the first one that was not completed  inappropriate """				
* dateOfUnplannedSurgery ^comment = """A date"""				
* marginsAfterUnplannedSurgery ^comment = """A  string describing the surgery margins after unplanned"""				
* unplannedNeckSurgery ^comment = """A string describing whether an unplanned surgical procedure to treat and address the neck was performed or not """				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: I4RCTreatment2Fhir				
Id: fhir				
Title: "Idea4RC Treatment model to FHIR R4 Map"				
Source: Treatment				
Target: "hl7.org/fhir/r4"				
				
* -> "TBD"				
* surgery -> "TBD"				
* surgeryPerformed -> "TBD"				
* dateOfTumourSurgery -> "TBD"				
* surgeryIntention -> "TBD"				
* tumorSurgeryApproach -> "TBD"				
* tumorSurgeryDevice -> "TBD"				
* surgicalProcedure -> "TBD"				
* surgicalProcedure.surgicalProcedureNasopharynx -> "TBD"				
* surgicalProcedure.surgicalProcedureNasalCavityAndParanasalSinus -> "TBD"				
* surgicalProcedure.surgicalProcedureSalivaryGland -> "TBD"				
* surgicalProcedure.surgicalProcedureEar -> "TBD"				
* surgicalProcedure.surgicalProcedureLip -> "TBD"				
* surgicalProcedure.surgicalProcedureOralCavity -> "TBD"				
* surgicalProcedure.surgicalProcedureMandibulectomy -> "TBD"				
* surgicalProcedure.surgicalProcedureOropharynx -> "TBD"				
* surgicalProcedure.surgicalProcedureHypopharynx -> "TBD"				
* surgicalProcedure.surgicalProcedureLarynx -> "TBD"				
* reconstruction -> "TBD"				
* reconstruction.flag -> "TBD"				
* reconstruction.reconstructionType -> "TBD"				
* reconstruction.firstFlapUsedForReconstruction -> "TBD"				
* reconstruction.secondFlapUsedForReconstruction -> "TBD"				
* neckSurgery -> "TBD"				
* dateOfNeckSurgeryIfDifferentFromDateOfTumorSiteSurgery -> "TBD"				
* dateOfNeckSurgeryDayUnknown -> "TBD"				
* nodePicking -> "TBD"				
* neckDissection -> "TBD"				
* lateralityOfTheDissection -> "TBD"				
* surgicalProcedureRightNeck -> "TBD"				
* surgicalProcedureRightNeckLevelsDissected -> "TBD"				
* surgicalProcedureLeftNeck -> "TBD"				
* surgicalProcedureLeftNeckLevelsDissected -> "TBD"				
* surgeryOnM -> "TBD"				
* siteOfSurgeryOnMetastasis -> "TBD"				
* siteOfSurgeryOnMetastasisSoftTissue -> "TBD"				
* siteOfSurgeryOnMetastasisDistantLymphNodes -> "TBD"				
* siteOfSurgeryOnMetastasisLung -> "TBD"				
* siteOfSurgeryOnMetastasisBone -> "TBD"				
* siteOfSurgeryOnMetastasisLiver -> "TBD"				
* siteOfSurgeryOnMetastasisPleura -> "TBD"				
* siteOfSurgeryOnMetastasisPeritoneum -> "TBD"				
* siteOfSurgeryOnMetastasisBrain -> "TBD"				
* siteOfSurgeryOnMetastasisOtherViscera -> "TBD"				
* siteOfSurgeryOnMetastasisUnknown -> "TBD"				
* dateOfSurgeryOnMIfDifferentFromDateOfTumorSiteSurgery -> "TBD"				
* surgicalWorstComplications -> "TBD"				
* surgical2ndWorstComplications -> "TBD"				
* unplannedSurgery -> "TBD"				
* dateOfUnplannedSurgery -> "TBD"				
* marginsAfterUnplannedSurgery -> "TBD"				
* unplannedNeckSurgery -> "TBD"				
* systemicTreament -> "TBD"				
* systemicTreatmentPerformed -> "TBD"				
* chooseTheSingleTreatment -> "TBD"				
* intent -> "TBD"				
* setting -> "TBD"				
* startDateSystemicTreatment -> "TBD"				
* startDateSystemicTreatmentDayUnknown -> "TBD"				
* endDateSystemicTreatment -> "TBD"				
* endDateSystemicTreatmentDayUnknown -> "TBD"				
* numberOfCyclesAdministrations -> "TBD"				
* regimen -> "TBD"				
* drugs1 -> "TBD"				
* drugs2 -> "TBD"				
* drugs3 -> "TBD"				
* plasmaticEbvDnaDuringSystemicTreatment -> "TBD"				
* primerType -> "TBD"				
* copyNumber -> "TBD"				
* plasmaticEbvDnaAfterSystemicTreatment -> "TBD"				
* afterTreatment-primerType -> "TBD"				
* afterTreatment-copyNumber -> "TBD"				
* reasonForEndOfTreatment -> "TBD"				
* regimenChanged -> "TBD"				
* regimenChanged-regimen -> "TBD"				
* regimenChanged-otherDrug1 -> "TBD"				
* regimenChanged-otherDrug2 -> "TBD"				
* regimenChanged-otherDrug3 -> "TBD"				
* startDateRegimenChanged -> "TBD"				
* startDateRegimenChangedDayUnknown -> "TBD"				
* endDateRegimenChanged -> "TBD"				
* endDateRegimenChangedDayUnknown -> "TBD"				
* regimenChanged-reasonForEndOfTreatment -> "TBD"				
* treatmentResponseBasedOnImagingAloneNoRecistOrOtherCriteria -> "TBD"				
* treatmentResponseDefinedDone -> "TBD"				
* systemicTreatment2 -> "TBD"				
* radiotherapy -> "TBD"				
* radiotherapywhere -> "TBD"				
* intent-2 -> "TBD"				
* setting-2 -> "TBD"				
* postoperativeRadiotherapyIndications -> "TBD"				
* beamQuality -> "TBD"				
* beamQuality-otherSpecify -> "TBD"				
* treatmentTechnique -> "TBD"				
* treatmentTechnique-otherSpecify -> "TBD"				
* boostType -> "TBD"				
* treatmentPlan -> "TBD"				
* totalDoseTdGy -> "TBD"				
* fractionSizeFs -> "TBD"				
* numberOfFractions -> "TBD"				
* totalHighDoseGy -> "TBD"				
* totalHighDoseFraction -> "TBD"				
* totalIntermediateDoseGy -> "TBD"				
* totalIntermediateDoseFraction -> "TBD"				
* totalLowDoseGy -> "TBD"				
* totalLowDoseFraction -> "TBD"				
* fractionationPattern -> "TBD"				
* alteredFractionationScheme -> "TBD"				
* adaptiveRt -> "TBD"				
* igrtImageGuideRadiotherapy -> "TBD"				
* secondBeamQuality -> "TBD"				
* otherSpecify2 -> "TBD"				
* treatmentTechnique2 -> "TBD"				
* treatmentTechnique2OtherSpecify -> "TBD"				
* startDate -> "TBD"				
* startDateRadiotherapyDayUnknown -> "TBD"				
* endDate -> "TBD"				
* endDateRadiotherapyDayUnknown -> "TBD"				
* treatmentInterruption2DaysNotIncludingIntendedBreaks -> "TBD"				
* treatmentDaysMissed -> "TBD"				
* overallTreatmentTimeOtt -> "TBD"				
* overallTreatmentTimeOttManualInDays -> "TBD"				
* treatmentSites -> "TBD"				
* primary -> "TBD"				
* neck -> "TBD"				
* primaryAndIpsilateralNeck -> "TBD"				
* primaryAndBilateralNeck -> "TBD"				
* distantMetastasis -> "TBD"				
* metastaticTreatmentSites -> "TBD"				
* lung
 -> "TBD"				
* mediastinum
 -> "TBD"				
* bone
 -> "TBD"				
* softTissue
 -> "TBD"				
* liver
 -> "TBD"				
* unknown -> "TBD"				
* other -> "TBD"				
* otherSpecify -> "TBD"				
* neckLevelsIrradiatedRight -> "TBD"				
* neckLevelsIrradiatedLeft -> "TBD"				
* ctvHighExpansion -> "TBD"				
* ptvHighExpansion -> "TBD"				
* v60OfSkin -> "TBD"				
* treatmentCompletedAsPlanned -> "TBD"				
* hospitalizedDuringRt -> "TBD"				
* carotidBlowout -> "TBD"				
* feedingTubeDuringRt -> "TBD"				
* feedingTubeReason -> "TBD"				
* smokingDuringRt -> "TBD"				
* alcoholDuringRt -> "TBD"				
* otherTypeOfTreatment -> "TBD"				
* otherTreatmentPerformed -> "TBD"				
* dateOfStart -> "TBD"				
* dateOfOtherTreatmentDayUnknown -> "TBD"				
* dateOfEnd -> "TBD"				
* dateOfEndOtherTreatmentDayUnknown -> "TBD"				
* type -> "TBD"				
* treatmentCompleted -> "TBD"				
* overallTreatmentResponse -> "TBD"				
* treatmentResponseBasedOnImagingAloneNoRecistOrOtherCriteria-2 -> "TBD"				
* treatmentResponseDefineddone -> "TBD"				
* patientIncludedInClinicalTrial -> "TBD"				
* patientIncludedInAClinicalTrial -> "TBD"				
* clinicalTrialCode -> "TBD"				
* instrumentStatus -> "TBD"				
// --END				
// --END				
// --END				
// --END				
