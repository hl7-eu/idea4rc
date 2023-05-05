//===================================================				
//  Logical Model				i4rc-stagingprocedureandstage.fsh
//===================================================				
Logical: StagingProcedureandStageI4rc				
Id: StagingProcedureandStage				
Title: "Staging Procedure and Stage"				
Description:  """Subject of care 
Maturity Level: 0 Draft"""				
* imagingForPrimarySite 0..1 date "Imaging performed" """Whether any imaging study for primary site  was performed or not"""				
* CT 0..1 integer "CT performed" """Whether Computed Tomography  for primary site was performed or not and, when it was performed, if contrast was used"""				
* MRI 0..1 CodeableConcept "MRI performed" """Describes wherther Magnetic Resonance for primary site was performed or not and, when it was performed, if contrast was used"""				
* US 0..* BackboneElement "US performed" """Describes whether Ultrasound Scan for primary site was performed or not."""				
* FDGPET 0..1 CodeableConcept "FDGPET performed" """Describes whether a  fluorodeoxyglucose positron emission tomography for primary site was performed or not."""				
* PETWithOtherTracers 0..1 CodeableConcept "PET with other tracers performed" """Describes whether a  positron emission tomography using other tracers for primary site was performed or not."""				
* OpticalDigitalMethods 0..1 CodeableConcept "Optical digital methods performed" """Describes whether a optical digital diagnostic method for primary site was performed or not."""				
* CTandPET 0..1 CodeableConcept "CT/PET performed" """Describes whether a  computed tomography with positron emission tomography for primary site was performed or not."""				
* Unknown 0..1 CodeableConcept "Unknown performed" """Describes whether an imaging was performed but the information about the type of imaging was not available"""				
* OtherImagingforPrimarySite 0..1 CodeableConcept "Other imaging for primary site performed" """Any other diagnostic imaging method performed for staging the primary tumor should be included here."""				
* ImagingforNeck 0..1 CodeableConcept "Imaging for neck performed" """Whether any imaging study for the neck was performed or not"""				
* CTforneck 0..* BackboneElement "CT performed" """whether Computed Tomography  for the neck was performed or not and, when it was performed, if contrast was used"""				
* MRIforneck 0..1 CodeableConcept "MRI performed" """Describes whether Magnetic Resonance for the neck was performed or not and, when it was performed, if contrast was used"""				
* USforneck 0..1 CodeableConcept "US performed" """Describes whether Ultrasound Scan for the neck was performed or not."""				
* FDGPETforneck 0..1 CodeableConcept "FDGPET performed" """Describes whether a  fluorodeoxyglucose positron emission tomography for the neck was performed or not."""				
* PETWithOtherTracersforneck 0..1 CodeableConcept "PET with other tracers performed" """Describes whether a  positron emission tomography using other tracers for the neck was performed or not."""				
* CTandPETforneck 0..1 CodeableConcept "CT/PET performed" """Describes whether a  computed tomography with positron emission tomography for the neck was performed or not."""				
* Unknownforneck 0..1 CodeableConcept "Unknown performed" """Describes whether an imaging on neck was performed but the information about the type of imaging was not available"""				
* OtherImagingforNeck 0..1 CodeableConcept "Other imaging for neck performed" """Any other diagnostic imaging method performed for staging the neck should be included here."""				
* ImagingforMetastasis 0..1 CodeableConcept "Imaging for metastasis performed" """ Wherther any imaging study for metastasis was performed or not"""				
* CTformetastasis 0..1 CodeableConcept "CT performed" """whether Computed Tomography  for metatasis was performed or not and, when it was performed, if contrast was used"""				
* MRIformetastasis 0..1 integer "MRI performed" """Describes whether Magnetic Resonanc for metastasis was performed or not and, when it was performed, if contrast was used"""				
* USformetastasis 0..1 CodeableConcept "US performed" """Describes whether Ultrasound Scan for metastasis was performed or not."""				
* FDGPETformetastasis 0..1 CodeableConcept "FDG PET performed" """Describes whether a  fluorodeoxyglucose positron emission tomography for metastasis was performed or not."""				
* PETwithOtherTracersformetastasis 0..1 CodeableConcept "PET with other tracers perfoemd" """Describes whether a  positron emission tomography using other tracers for metastasis was performed or not."""				
* CTandPETformetastasis 0..1 CodeableConcept "CT/PET performed" """Describes whether a  computed tomography with positron emission tomography for the neck was performed or not."""				
* Unknownformetastasis 0..1 CodeableConcept "Unknown performed" """Describes whether an imaging for metastasis was performed but the information about the type of imaging was not available"""				
* clinicalStage 0..* BackboneElement "Clinical Stage" """Specifies the clinical stage"""				
* clinicalStage.cN 0..1 string "Cn" """Specifies the clinical N"""				
* clinicalStage.RadiologicalExtra-nodalExtension 0..1 string "Radiological extra-nodal extension(RENE)" """Describes the presence or absence of radiological signs of extracapsular extension, as defined in the AJCC 8th Ed"""				
* clinicalStage.cM 0..1 string "Cm" """Specifies the clinical M"""				
* clinicalStage.ClinicalStaging 0..1 string "Clinical Staging" """Specifies the clinical TNM"""				
* clinicalStage.cT 0..1 string "Ct" """Specifies the clinical T"""				
* clinicalStage.AjccEdition 0..1 string "AJCC edition" """Describe the edition of the AJCC used for staging"""				
* msite 0..* BackboneElement "M site" """Describes site of metastasic disease at the time of initial diagnosis or assesed before treatment. More than one choice is allowed"""				
* msite.softTissue 0..1 string "Soft tissue" """Describes if site of metastasic disease  is soft tissue"""				
* msite.distantLymphnode 0..1 string "Distant lymph node" """Describes if site of metastasic disease  is dystan lymph node"""				
* msite.lung 0..1 string "Lung" """Describes if site of metastasic disease  is lung"""				
* msite.bone 0..1 string "Bone" """Describes if site of metastasic disease  is bone"""				
* msite.liver 0..1 string "Liver" """Describes if site of metastasic disease  is liver"""				
* msite.pleura 0..1 string "Pleura" """Describes if site of metastasic disease  is pleura"""				
* msite.peritoneum 0..1 string "Peritoneum" """Describes if site of metastasic disease  is peritoneum"""				
* msite.brain 0..1 string "Brain" """Describes if site of metastasic disease  is brain"""				
* msite.otherViscera 0..1 string "Other viscera" """Describes if site of metastasic disease  is other viscera"""				
* msite.unknown 0..1 string "Unknown " """Describes if site of metastasic disease  is unknown"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model				
//--------------------------------------------------------------------------------				
* imagingForPrimarySite ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* CT ^comment = """A string value whether it was performed with contrast, without contrast, it was not performed or it is unknown"""				
* MRI ^comment = """A string value whether it was performed with contrast, without contrast, it was not performed or it is unknown"""				
* US ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* FDGPET ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* PETWithOtherTracers ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* OpticalDigitalMethods ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* CTandPET ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* Unknown ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
				
* ImagingforNeck ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* CTforneck ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* MRIforneck ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* USforneck ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* FDGPETforneck ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* PETWithOtherTracersforneck ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* CTandPETforneck ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* Unknownforneck ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
				
* ImagingforMetastasis ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* CTformetastasis ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* MRIformetastasis ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* USformetastasis ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* FDGPETformetastasis ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* PETwithOtherTracersformetastasis ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* CTandPETformetastasis ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
* Unknownformetastasis ^comment = """A boolean value 1 if it was performed 0 if not, empty if unknown."""				
				
* clinicalStage.cN ^comment = """A string value for the clinical N. Unknown if empty."""				
* clinicalStage.RadiologicalExtra-nodalExtension ^comment = """A string value for the RENE. Unknown if empty."""				
* clinicalStage.cM ^comment = """A string value for the clinical M. Unknown if empty."""				
* clinicalStage.ClinicalStaging ^comment = """A string value for the clinical TNM. Unknown if empty."""				
* clinicalStage.cT ^comment = """A string value for the clinical T. Unknown if empty."""				
* clinicalStage.AjccEdition ^comment = """A string value for the used AJCC edition manual."""				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: I4RCStagingProcedureandStage2Fhir				
Id: fhir				
Title: "Idea4RC Subject model to FHIR R4 Map"				
Source: StagingProcedureandStage				
Target: "hl7.org/fhir/r4"				
				
* -> "TBD"				
* imagingForPrimarySite -> "TBD"				
* CT -> "TBD"				
* MRI -> "TBD"				
* US -> "TBD"				
* FDGPET -> "TBD"				
* PETWithOtherTracers -> "TBD"				
* OpticalDigitalMethods -> "TBD"				
* CTandPET -> "TBD"				
* Unknown -> "TBD"				
* OtherImagingforPrimarySite -> "TBD"				
* ImagingforNeck -> "TBD"				
* CTforneck -> "TBD"				
* MRIforneck -> "TBD"				
* USforneck -> "TBD"				
* FDGPETforneck -> "TBD"				
* PETWithOtherTracersforneck -> "TBD"				
* CTandPETforneck -> "TBD"				
* Unknownforneck -> "TBD"				
* OtherImagingforNeck -> "TBD"				
* ImagingforMetastasis -> "TBD"				
* CTformetastasis -> "TBD"				
* MRIformetastasis -> "TBD"				
* USformetastasis -> "TBD"				
* FDGPETformetastasis -> "TBD"				
* PETwithOtherTracersformetastasis -> "TBD"				
* CTandPETformetastasis -> "TBD"				
* Unknownformetastasis -> "TBD"				
* clinicalStage -> "TBD"				
* clinicalStage.cN -> "TBD"				
* clinicalStage.RadiologicalExtra-nodalExtension -> "TBD"				
* clinicalStage.cM -> "TBD"				
* clinicalStage.ClinicalStaging -> "TBD"				
* clinicalStage.cT -> "TBD"				
* clinicalStage.AjccEdition -> "TBD"				
* msite -> "TBD"				
* msite.softTissue -> "TBD"				
* msite.distantLymphnode -> "TBD"				
* msite.lung -> "TBD"				
* msite.bone -> "TBD"				
* msite.liver -> "TBD"				
* msite.pleura -> "TBD"				
* msite.peritoneum -> "TBD"				
* msite.brain -> "TBD"				
* msite.otherViscera -> "TBD"				
* msite.unknown -> "TBD"				
// --END				
// --END				
// --END				
// --END				
