//===================================================				
//  Logical Model				i4rc-cancerUnderStudyTreatment.fsh
//===================================================				
Logical: CancerUnderStudyTreatmentI4rc				
Id: CancerUnderStudyTreatment				
Title: "Cancer Under Study Treatment"				
Description:  """Subject of care 
Maturity Level: 0 Draft"""				
* surgeryPerformed 0..1 string "Surgery performed in hospital" """Whether or not a surgical procedure was performed and whether it was performed at the registering hospital or another hospital. Diagnostic procedures (biopsy) are not included."""				
* dateofTumourSurgery 0..1 date "Date of tumour surgery" """Date of the surgery for primary tumor with or without neck surgery"""				
* surgeryIntention 0..1 string "intention of the surgery" """The intention of the perfromed surgery. Palliative: surgery performed with the intent of improving quality of life or relieving symptoms caused by advanced disease.
Curative: surgery performed with the intend of oncologic cure, regardless of its result (R0 / R1/R2)"""				
* tumourSurgeryApproach 0..* string "Approach of the tumour surgery" """Describes the approach to tumor resection whether it includes skin incision (extenal or open ),  or it 's aproached through a natural orifice (Transnasal/transorbital/transoral) or if the approach combines two or more of the previous ones"""				
* TumourSurgeryDevice 0..1 string "Deviced used for the tumour surgery" """Describes  the device used (LASER / Robot)"""				
* surgicalProcedureNasopharynx 0..1 string "surgical procedure for nasopharynx tumour" """Describes the procedure performed to resect tumor from nasopharynx, any kind of tumor removal, either open or endoscopic. Diagnostic biopsy is not included"""				
* surgicalProcedureNasalCavityandParanasalSinus 0..1 string "Surgical procedore for nasal cavity and paranasal sinus tumour" """Describes the procedure performed to resect tumor from  nasal cavity and paranasal sinus"""				
* surgicalProcedureSalivaryGland 0..1 string "Surgical procedure for salivary glands tumour" """Describes the procedure performed on salivary glands. """				
* surgicalProcedureEar 0..1 string "Surgical procedure for ear tumour" """Describes the procedure performed onear and temporal bone."""				
* surgicalProcedureLip 0..1 string "Surgical procedure for the lip" """Describes the procedure performed on the lip"""				
* surgicalProcedureOralCavity 0..1 string "Surgical procedure for the oral cavity" """Describes the procedure performed on the oral cavity"""				
* surgicalProcedureMandibulectomy 0..* string "Mandibulectomy surgical procedure" """Describes the procedure performed on the mandible."""				
* surgicalProcedureOropharynx 0..1 string "Oropharynx surgical procedure" """Describes the procedure performed on the oropharynx cavity. 
Lateral Oropharyngectomy (LO) Types were described by De Virgilio in 2019. See references
Transoral Base Of Tongue (TOBOT) Resection Types were described by De Virgilio in 2021. See references"""				
* surgicalProcedureHypopharynx 0..1 string "Hypopharynx surgical procedure" """Describes the procedure performed on the hypopharynx"""				
* surgicalProcedureLarynx 0..1 string "Larynx surgical procedure" """Laryngo fissure and cordectomy is a procololized procedure to remove tumors from the vocal cords through an incision in the skin and a vertical section of the thyroid cartilage.
Vertical hemilaryngectomy is a protocoled procedure. Please see references
TLM cordectomies were defined by Remacle et al in  2007 (please see references)
TSL were defined by Remacle et al in 2009 (please see references)
OPHL were defined by Succo et al in 2014 (please see references)
Near-total laryngectomy refers to procolized procedures that remove the entire larynx except for some elements (arytenoids, ...) to improve speech production, but the patient requires a permanent stoma to breathe.
Total laryngectomy is a protocoled procedure to remove all laryngeal tissue and results in a permanent stoma."""				
* reconstruction 0..1 string "Reconstruction surgical procedure" """Describes whether a reconstruction procedure was performed after tomor removal, to restore either shape or function"""				
* reconstructionType 0..1 string "Surgical reconstruction type" """Describes type of grft or flap used for the reconstruction. Combined flaps is used when two or more pedicle and/or microvascular flap is used for reconstruction, simultaneously. Otherwise, the most complex flaps used must be choosen. 
"""				
* firstFlapforreconstruction 0..1 string "First Flap used for reconstruction" """Describes the flap used for reconstrucion when only one flap was used. When two or more flaps has been used, the most complex or advanced one must be choosen. If the procedure performed is not defined and protocoled, the most appropriate one will be chosen from the list of options."""				
* secondFlapforReconstruction 0..1 string "Second Flap used for reconstruction" """Describes the secind flap used for reconstruction when more than one flap was used. When more than two flaps has been used, the most complex or advanced one must be choosen."""				
* neckSurgery 0..1 string "Neck surgery" """Describes whether a surgical procedure to treat and address the neck was performed or not. """				
* dateofNeckSurgery 0..1 string "Date of the neck surgery" """Date of the surgery for the neck when it was performed after tumor resection """				
* nodePicking 0..1 string "Surgery node picking" """Describes whether a non-protocoled and non-standardized resection of more than one lymph node is performed or not"""				
* neckDissection 0..1 string "Surgery neck dissection performed" """Describes whether a protocoled and standardized en block resection of lymphatic tissue is performed or not"""				
* lateralityofDissection 0..1 string "Laterality of dissection" """Describes laterality of the neck surgical procedure: 
Ipsilateral when only  the neck ipsilateral to the tumor has been treated
Contralateral when only the neck contralateral to the tumor has been treated 
Bilateral: when both sides of the neck have been treated"""				
* surgicalProcedure 0..* BackboneElement "Surgical Procedure " """"""				
* surgicalProcedure.rightNeck 0..1 string "Right neck surgical procedure" """Describes surgical procedure performed to treat the right neck, if applies.  
Neck Dissection clasification is described according to the Consensus published by Robbins et al in 2002. See references
Central Neck dissection includes all subtypes defined by Orloff in 2011. See reference"""				
* surgicalProcedure.rightNeckLevelsDissected 0..1 string "Right neck surgical procedure levels dissected" """Multiple selection: all lymphatic levels, defined by the Consensus published by Robbins et al  in 2002, treated must be choosen"""				
* surgicalProcedure.leftNeck 0..1 string "left neck surgical procedure" """Describes surgical procedure performed to treat the left neck, if applies.  
Neck Dissection clasification is described according to the Consensus published by Robbins et al in 2002. See references
Central Neck dissection includes all subtypes defined by Orloff in 2011. See reference """				
* surgicalProcedure.leftNeckLevelsDissected 0..1 string "left neck surgical procedure levels dissected" """Multiple selection: all lymphatic levels, defined by the Consensus published by Robbins et al  in 2002, treated must be choosen"""				
* surgeryonM 0..1 string "Surgery on metastasis" """Describes whether surgery is performed to treat the Metastasis"""				
* surgeryonM.softTissue 0..1 string "Site of surgery metastasis soft tissue" """Describes if site of surgery on metastasis  is soft tissue"""				
* surgeryonM.distantLymphnodes 0..1 string "Site of surgery metastasis distant lymph nodes" """Describes if site of surgery on metastasis  is dystan lymph node"""				
* surgeryonM.lung 0..1 string "Site of surgery metastasis lung" """Describes if site of surgery on metastasis  is lung"""				
* surgeryonM.bone 0..1 string "Site of surgery metastasis bone" """Describes if site of surgery on metastasis  is bone"""				
* surgeryonM.liver 0..1 string "Site of surgery metastasis liver" """Describes if site of surgery on metastasis  is liver"""				
* surgeryonM.pleura 0..1 string "Site of surgery metastasis pleura" """Describes if site of surgery on metastasis  is pleura"""				
* surgeryonM.peritoneum 0..1 string "Site of surgery metastasis periotoneum" """Describes if site of surgery on metastasis  is peritoneum"""				
* surgeryonM.brain 0..1 string "Site of surgery metastasis brain" """Describes if site of surgery on metastasis  is brain"""				
* surgeryonM.otherViscera 0..1 string "Site of surgery metastasis other viscera" """Describes if site of surgery on metastasis  is other viscera"""				
* surgeryonM.unknown 0..1 string "Site of surgery metastasis unknown" """Describes if site of surgery on metastasis  is unknown"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model				
//--------------------------------------------------------------------------------				
* surgeryPerformed ^comment = """A string value representing if and where was the surgery performed."""				
* dateofTumourSurgery ^comment = """Must be formatted as YYYY-MM-DD. Leave empty if not known. Optional rule : Possible date anonymisation by
setting the 15th of every month i.e.: YYYY-MM-15. If the month is not known, we set it to June (06)."""				
* surgeryIntention ^comment = """A string value whether the surgery was performed with palliative or curative intentions of it was unknown"""				
* tumourSurgeryApproach ^comment = """A string value to describe the used approach"""				
* TumourSurgeryDevice ^comment = """A string value to specify the used device"""				
* surgicalProcedureNasopharynx ^comment = """A string value to specify the used procedure for the nasopharynx tumour"""				
* surgicalProcedureNasalCavityandParanasalSinus ^comment = """A string value to specify the procedure for the nasal cavity and paranasal sinus tumour"""				
* surgicalProcedureSalivaryGland ^comment = """A string value to specify the procedure for the salivary glands tumour"""				
* surgicalProcedureEar ^comment = """A string value to specify the procedure for the ear"""				
* surgicalProcedureLip ^comment = """A string value to specify the procedure for the lip tumour"""				
* surgicalProcedureOralCavity ^comment = """A string value to specify the procedure for the oral cavity tumour"""				
* surgicalProcedureMandibulectomy ^comment = """A string value to specify the procedure for the mandibule tumour"""				
* surgicalProcedureOropharynx ^comment = """A string value to specify the procedure for the oropharynx tumour"""				
* surgicalProcedureHypopharynx ^comment = """A string value to specify the procedure for the hypopharynx tumour"""				
* surgicalProcedureLarynx ^comment = """A string value to specify the procedure for the larynx tumour"""				
* reconstruction ^comment = """A string value to specify whether a reconstruction procedure was performed"""				
* reconstructionType ^comment = """A string value to describe the type of graft or flap used for the reconstruction"""				
* firstFlapforreconstruction ^comment = """A string value to describe the first (and only if so) flap used for reconstruction"""				
* secondFlapforReconstruction ^comment = """A string value to describe the second flap used for reconstruction"""				
* neckSurgery ^comment = """A string value to describe whether a surgical procedure for the neck was performed"""				
* dateofNeckSurgery ^comment = """Date of the surgery for the neck when it was performed after tumor resection """				
* nodePicking ^comment = """String describing whether a non-protocoled and non-standardized resection of more than one lymph node is performed or not"""				
* neckDissection ^comment = """String describing whether a protocoled and standardized en block resection of lymphatic tissue is performed or not"""				
* lateralityofDissection ^comment = """String describing the laterality of the neck surgical procedure"""				
* surgicalProcedure ^comment = """String describing the surgical procedure performed (right)"""				
* surgicalProcedure.rightNeck ^comment = """String describing the lympathic levels."""				
* surgicalProcedure.rightNeckLevelsDissected ^comment = """String describing the surgical procedure performed (left)"""				
* surgicalProcedure.leftNeck ^comment = """String describing the lympathic levels."""				
* surgicalProcedure.leftNeckLevelsDissected ^comment = """A string describing whether the surgery on metastasis was performed or not"""				
* surgeryonM ^comment = """A string describing whether the surgery on metastasis was performed or not"""				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: I4RCCancerUnderStudyTReatment2Fhir				
Id: fhir				
Title: "Idea4RC Subject model to FHIR R4 Map"				
Source: CancerUnderStudyTreatment				
Target: "hl7.org/fhir/r4"				
				
* -> "TBD"				
* surgeryPerformed -> "TBD"				
* dateofTumourSurgery -> "TBD"				
* surgeryIntention -> "TBD"				
* tumourSurgeryApproach -> "TBD"				
* TumourSurgeryDevice -> "TBD"				
* surgicalProcedureNasopharynx -> "TBD"				
* surgicalProcedureNasalCavityandParanasalSinus -> "TBD"				
* surgicalProcedureSalivaryGland -> "TBD"				
* surgicalProcedureEar -> "TBD"				
* surgicalProcedureLip -> "TBD"				
* surgicalProcedureOralCavity -> "TBD"				
* surgicalProcedureMandibulectomy -> "TBD"				
* surgicalProcedureOropharynx -> "TBD"				
* surgicalProcedureHypopharynx -> "TBD"				
* surgicalProcedureLarynx -> "TBD"				
* reconstruction -> "TBD"				
* reconstructionType -> "TBD"				
* firstFlapforreconstruction -> "TBD"				
* secondFlapforReconstruction -> "TBD"				
* neckSurgery -> "TBD"				
* dateofNeckSurgery -> "TBD"				
* nodePicking -> "TBD"				
* neckDissection -> "TBD"				
* lateralityofDissection -> "TBD"				
* surgicalProcedure -> "TBD"				
* surgicalProcedure.rightNeck -> "TBD"				
* surgicalProcedure.rightNeckLevelsDissected -> "TBD"				
* surgicalProcedure.leftNeck -> "TBD"				
* surgicalProcedure.leftNeckLevelsDissected -> "TBD"				
* surgeryonM -> "TBD"				
* surgeryonM.softTissue -> "TBD"				
* surgeryonM.distantLymphnodes -> "TBD"				
* surgeryonM.lung -> "TBD"				
* surgeryonM.bone -> "TBD"				
* surgeryonM.liver -> "TBD"				
* surgeryonM.pleura -> "TBD"				
* surgeryonM.peritoneum -> "TBD"				
* surgeryonM.brain -> "TBD"				
* surgeryonM.otherViscera -> "TBD"				
* surgeryonM.unknown -> "TBD"				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
