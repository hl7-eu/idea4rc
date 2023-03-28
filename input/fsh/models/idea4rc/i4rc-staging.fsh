//===================================================				
//  Logical Model				i4rc-staging.fsh
//===================================================				
Logical: StagingI4rc				
Id: Staging				
Title: "Staging"				
Description:  """Staging
Maturity Level: 0 Draft"""				
* stagingProceduresDoneBy 0..1 BackboneElement "Staging procedures done by" """"""				
* imagingPerformed 0..1 BackboneElement "Imaging for primary site" """Imaging study for primary site"""				
* imagingPerformed.flag 0..1 boolean "flag" """Whether any imaging study for primary site  was performed or not"""				
* imagingPerformed.cTPerformed 0..1 string "CT" """Whether Computed Tomography  for primary site was performed or not and when it was performed if contrast was used"""				
* imagingPerformed.mRIPerformed 0..1 string "MRI" """Describes wherther Magnetic Resonance for primary site was performed or not and when it was performed if contrast was used"""				
* imagingPerformed.uSPerformed 0..1 string "US" """Describes whether Ultrasound Scan for primary site was performed or not"""				
* imagingPerformed.fDGPETPerformed 0..1 string "FDG PET" """Describes whether a  fluorodeoxyglucose positron emission tomography for primary site was performed or not"""				
* imagingPerformed.pETwithothertracersPerformed 0..1 string "PET with other tracers" """Describes whether a  positron emission tomography using other tracers for primary site was performed or not"""				
* imagingPerformed.opticaldigitalmethodsegnarrowbandimagingPerformed 0..1 string "Optical digital methods eg narrowband imaging" """Describes whether a optical digital diagnostic method for primary site was performed or not"""				
* imagingPerformed.cTPETPerformed 0..1 string "CTPET" """Describes whether a  computed tomography with positron emission tomography for primary site was performed or not"""				
* imagingPerformed.unknownPerformed 0..1 string "Unknown" """Describes whether an imaging was performed but the information about the type of imaging was not available"""				
* imagingPerformed.otherimagingforprimarysitePerformed 0..1 string "Other imaging for primary site" """Any other diagnostic imaging method performed for staging the primary tumor should be included here"""				
* imagingforneckPerformed 0..1 BackboneElement "Imaging for neck" """Imaging study for the neck"""				
* imagingforneckPerformed.flag 0..1 string "Imaging for neck" """Whether any imaging study for the neck was performed or not"""				
* imagingforneckPerformed.cTPerformed 0..1 string "CT" """whether Computed Tomography  for the neck was performed or not and when it was performed if contrast was used"""				
* imagingforneckPerformed.mRIPerformed 0..1 string "MRI" """Describes whether Magnetic Resonance for the neck was performed or not and when it was performed if contrast was used"""				
* imagingforneckPerformed.uSPerformed 0..1 string "US" """Describes whether Ultrasound Scan for the neck was performed or not"""				
* imagingforneckPerformed.fDGPETPerformed 0..1 string "FDG PET" """Describes whether a  fluorodeoxyglucose positron emission tomography for the neck was performed or not"""				
* imagingforneckPerformed.pETwithothertracersPerformed 0..1 string "PET with other tracers" """Describes whether a  positron emission tomography using other tracers for the neck was performed or not"""				
* imagingforneckPerformed.cTPETPerformed 0..1 string "CTPET" """Describes whether a  computed tomography with positron emission tomography for the neck was performed or not"""				
* imagingforneckPerformed.unknownPerformed 0..1 string "Unknown" """Describes whether an imaging on neck was performed but the information about the type of imaging was not available"""				
* imagingforneckPerformed.otherimagingforneckPerformed 0..1 string "Other imaging for neck" """Any other diagnostic imaging method performed for staging the neck should be included here"""				
* imagingformetastasisPerformed 0..1 BackboneElement "Imaging for metastasis " """Imaging study for metastasis"""				
* imagingformetastasisPerformed.imagingformetastasisPerformed 0..1 string "Imaging for metastasis " """Wherther any imaging study for metastasis was performed or not"""				
* imagingformetastasisPerformed.cTPerformed 0..1 string "CT" """whether Computed Tomography  for metatasis was performed or not and when it was performed if contrast was used"""				
* imagingformetastasisPerformed.mRIPerformed 0..1 string "MRI" """Describes whether Magnetic Resonanc for metastasis was performed or not and when it was performed if contrast was used"""				
* imagingformetastasisPerformed.uSPerformed 0..1 string "US" """Describes whether Ultrasound Scan for metastasis was performed or not"""				
* imagingformetastasisPerformed.fDGPETPerformed 0..1 string "FDG PET" """Describes whether a  fluorodeoxyglucose positron emission tomography for metastasis was performed or not"""				
* imagingformetastasisPerformed.pETwithothertracersPerformed 0..1 string "PET with other tracers" """Describes whether a  positron emission tomography using other tracers for metastasis was performed or not"""				
* imagingformetastasisPerformed.cTPETPerformed 0..1 string "CTPET" """Describes whether a  computed tomography with positron emission tomography for the neck was performed or not"""				
* imagingformetastasisPerformed.unknownPerformed 0..1 string "Unknown" """Describes whether an imaging for metastasis was performed but the information about the type of imaging was not available"""				
* imagingformetastasisPerformed.otherimagingformetastaticdiseasePerformed 0..1 string "Other imaging for metastatic disease" """Any other diagnostic imaging method performed for staging metastasis should be included here"""				
* clinicalStage 0..1 BackboneElement "Clinical  stage" """"""				
* clinicalStage.ct 0..1 string "cT" """Specifies the clinical T"""				
* clinicalStage.cn 0..1 string "cN" """Specifies the clinical N"""				
* clinicalStage.radiologicalExtraNodalExtensionRene 0..1 string "Radiological Extranodal extension rENE" """Describes the presence or absence of radiological signs of extracapsular extension as defined in the AJCC 8th Ed"""				
* clinicalStage.cm 0..1 string "cM" """Specifies the clinical M"""				
* clinicalStage.clinicalStaging 0..1 string "Clinical staging" """Specifies the clinical TNM"""				
* clinicalStage.ajccEdition 0..1 string "Ajcc edition" """Describe the edition of the AJCC used for staging"""				
* clinicalStage.nan 0..1 string "M site" """Describes site of metastasic disease at the time of initial diagnosis or assesed before treatment More than one choice is allowed"""				
* metastasisSite 0..* BackboneElement "Site of Metastasis" """Site of Metastasis"""				
* metastasisSite.softTissue 0..1 string "Soft tissue" """Describes if site of metastasic disease  is soft tissue"""				
* metastasisSite.distantLymphNode 0..1 string "distant lymph node" """Describes if site of metastasic disease  is dystan lymph node"""				
* metastasisSite.lung 0..1 string "lung" """Describes if site of metastasic disease  is lung"""				
* metastasisSite.bone 0..1 string "bone" """Describes if site of metastasic disease  is bone"""				
* metastasisSite.liver 0..1 string "liver" """Describes if site of metastasic disease  is liver"""				
* metastasisSite.pleura 0..1 string "pleura" """Describes if site of metastasic disease  is pleura"""				
* metastasisSite.peritoneum 0..1 string "peritoneum" """Describes if site of metastasic disease  is peritoneum"""				
* metastasisSite.brain 0..1 string "brain" """Describes if site of metastasic disease  is brain"""				
* metastasisSite.otherViscera 0..1 string "other viscera" """Describes if site of metastasic disease  is other viscera"""				
* metastasisSite.unknown 0..1 string "unknown" """Describes if site of metastasic disease  is unknown"""				
* clinicalStagingDefinedBy 0..1 string "Clinical staging defined by" """Describes the institution where initial clinical staging of the disease was defined"""				
* pathologicalStage 0..1 BackboneElement "Pathological stage" """Pathological stage"""				
* pathologicalStage.pt 0..1 string "pT" """Specifies the pathological T"""				
* pathologicalStage.pn 0..1 string "pN" """Specifies the pathological N"""				
* extranodalExtensionEne 0..1 string "Extranodal extension ENE" """Describes whether capsular extension is present by histopathologic examination or not"""				
* extranodalExtent 0..1 integer "Extranodal Extent" """Describes extent of extranodal extension This number must be explicitly referred to in the pathological report otherwise it is unknown"""				
* marginsAfterSurgery 0..1 string "Margins after surgery" """The R0 no residual rumor category applies only to cases in which residual tumor cannot be detected by conventional diagnostic methods A more exact definition would read no detectable residual tumorThis category corresponds to surgical resection for cure
The R1 category is reserved exclusively for cases in which residual tumor is found by histologic examination This category may apply to biopsy sampling of the regional tissue at the site of resection or of a distant site at the time of surgery It also applies to microscopic examination of the resection margins of the surgical resection specimen by the pathologist
R2 applies to cases with macroscopically visible residual tumor that is detected either clinically or pathologically"""				
* marginsAfterSurgeryIf5Mm 0..1 integer "Margins after surgery if 5mm" """Measurement in mm of the margin closest to the resection if any of the margins is less than 5 millimeters from it"""				
* sentinelNode 0..1 string "Sentinel node" """Describes whether a sentinel node procedure was performed or not Sentinel lymph node biopsy is considered a diagnostic procedure therefore per se the neck is not considered to have been treated if it does not lead to a neck dissection"""				
* neckDissection 0..1 string "Neck dissection" """Describes whether a protocoled and standardized en block resection of lymphatic tissue is performed or not"""				
* numberOfLymphNodesRemovedRightSide 0..1 integer "Number of lymph nodes removed right side" """Refers to the total number of lymph nodes resected in the right side of the neck This number must be explicitly referred to in the pathological report otherwise it is unknown"""				
* numberOfPositiveLymphNodesRightSide 0..1 integer "Number of positive lymph nodes right side" """Refers to the total number of positive lymph nodes resected in the right side of the neck This number must be explicitly referred to in the pathological report otherwise it is unknown"""				
* lnrRightLymphNodeRatio 0..1 integer "LNR right Lymph node ratio" """Automatically calculated from the right results"""				
* numberOfLymphNodesRemovedLeftSide 0..1 integer "Number of lymph nodes removed left side" """Refers to the total number of lymph nodes resected in the left side of the neck This number must be explicitly referred to in the pathological report otherwise it is unknown"""				
* numberOfPositiveLymphNodesLeftSide 0..1 integer "Number of positive lymph nodes left side" """Refers to the total number of positive lymph nodes resected in the left side of the neck This number must be explicitly referred to in the pathological report otherwise it is unknown"""				
* lnrLeftLymphNodeRatio 0..1 integer "LNR left Lymph node ratio" """Automatically calculated from left results"""				
* lymphovascularSpaceInvasionLvsi 0..1 string "Lymphovascular space invasion LVSI" """Describes a pathologic phenomenon in which tumor cells invade an endotheliumlinedspace of vascular or lymphatic vessels without underlying muscular walls Pathological report must include whether it is present or not otherwise it is Unknown"""				
* perineuralInvasionPni 0..1 string "Perineural invasion PNI" """Describes a histologic finding of tumor cell infiltration of the nerves Pathological report must include whether it is present or not otherwise it is Unknown"""				
* pm 0..1 string "pM" """Specifies the pathological M"""				
* pathologicalStaging 0..1 string "Pathological staging" """Specifies the pathological staging"""				
* ajccEdition 0..1 BackboneElement "Ajcc edition" """Ajcc edition"""				
* mSite 0..1 BackboneElement "M site" """M site"""				
* softTissue 0..1 BackboneElement "Soft Tissue" """Soft Tissue"""				
* distantLymphNode 0..1 BackboneElement "distant lymph node" """distant lymph node"""				
* lung 0..1 BackboneElement "lung" """lung"""				
* bone 0..1 BackboneElement "bone" """bone"""				
* liver 0..1 BackboneElement "liver" """liver"""				
* pleura 0..1 BackboneElement "pleura" """pleura"""				
* peritoneum 0..1 BackboneElement "peritoneum" """peritoneum"""				
* brain 0..1 BackboneElement "brain" """brain"""				
* otherViscera 0..1 BackboneElement "other viscera" """other viscera"""				
* msite 0..1 string "M SITE" """Specifices the M SITE"""				
* unknown 0..1 BackboneElement "unknown" """unknown"""				
* pathologicalStagingDefinedBy 0..1 BackboneElement "Pathological staging defined by" """Pathological staging defined by"""				
* instrumentStatus 0..1 BackboneElement "Instrument status" """Instrument status"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
				
* imagingPerformed.flag ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingPerformed.cTPerformed ^comment = """A string value whether it was performed with contrast without contrast it was not performed or it is unknown"""				
* imagingPerformed.mRIPerformed ^comment = """A string value whether it was performed with contrast without contrast it was not performed or it is unknown"""				
* imagingPerformed.uSPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingPerformed.fDGPETPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingPerformed.pETwithothertracersPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingPerformed.opticaldigitalmethodsegnarrowbandimagingPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingPerformed.cTPETPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingPerformed.unknownPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
				
				
* imagingforneckPerformed.flag ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingforneckPerformed.cTPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingforneckPerformed.mRIPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingforneckPerformed.uSPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingforneckPerformed.fDGPETPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingforneckPerformed.pETwithothertracersPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingforneckPerformed.cTPETPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingforneckPerformed.unknownPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
				
				
* imagingformetastasisPerformed.imagingformetastasisPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingformetastasisPerformed.cTPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingformetastasisPerformed.mRIPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingformetastasisPerformed.uSPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingformetastasisPerformed.fDGPETPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingformetastasisPerformed.pETwithothertracersPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingformetastasisPerformed.cTPETPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
* imagingformetastasisPerformed.unknownPerformed ^comment = """A boolean value 1 if it was performed 0 if not empty if unknown"""				
				
				
* clinicalStage.ct ^comment = """A string value for the clinical T Unknown if empty"""				
* clinicalStage.cn ^comment = """A string value for the clinical N Unknown if empty"""				
* clinicalStage.radiologicalExtraNodalExtensionRene ^comment = """A string value for the rENE Unknown if empty"""				
* clinicalStage.cm ^comment = """A string value for the clinical M Unknown if empty"""				
* clinicalStage.clinicalStaging ^comment = """A string value for the clinical TNM Unknown if empty"""				
* clinicalStage.ajccEdition ^comment = """A string value for the used AJCC edition manual"""				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
* pathologicalStage.pt ^comment = """A string value from pathological T"""				
* pathologicalStage.pn ^comment = """A string value from pathological N"""				
* extranodalExtensionEne ^comment = """A string value for the extranodal extension"""				
* extranodalExtent ^comment = """A number describing the extent of the extranodal extension"""				
* marginsAfterSurgery ^comment = """A string describing the category applied to the margin after surgery"""				
* marginsAfterSurgeryIf5Mm ^comment = """A number describing the margin closest to the resection"""				
* sentinelNode ^comment = """A string describing whether a sentinel node procedure was performed"""				
* neckDissection ^comment = """A string describing whether a protocoled and standardized en block resection of lymphatic tissue was performed"""				
* numberOfLymphNodesRemovedRightSide ^comment = """Number of right side lymph nodes removed"""				
* numberOfPositiveLymphNodesRightSide ^comment = """Number of positive right side lymph nodes removed"""				
* lnrRightLymphNodeRatio ^comment = """Ratio of right side removed lymph nodes"""				
* numberOfLymphNodesRemovedLeftSide ^comment = """Number of left side lymph nodes removed"""				
* numberOfPositiveLymphNodesLeftSide ^comment = """Number of positive left side lymph nodes removed"""				
* lnrLeftLymphNodeRatio ^comment = """Ratio of left side removed lymph nodes"""				
* lymphovascularSpaceInvasionLvsi ^comment = """A string describing whether a Lymphovascular space invasion LVSI happened"""				
* perineuralInvasionPni ^comment = """A string describing whether a perineural invasion happened"""				
* pm ^comment = """A string describing the pathological M"""				
* pathologicalStaging ^comment = """A string describing the pathological staging"""				
				
				
				
				
				
				
				
				
				
				
				
* msite ^comment = """A string or list of string describing where is the metastatic disease"""				
				
				
				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: I4RCStaging2Fhir				
Id: fhir				
Title: "Idea4RC Staging model to FHIR R4 Map"				
Source: Staging				
Target: "hl7.org/fhir/r4"				
				
* -> "TBD"				
* stagingProceduresDoneBy -> "TBD"				
* imagingPerformed -> "TBD"				
* imagingPerformed.flag -> "TBD"				
* imagingPerformed.cTPerformed -> "TBD"				
* imagingPerformed.mRIPerformed -> "TBD"				
* imagingPerformed.uSPerformed -> "TBD"				
* imagingPerformed.fDGPETPerformed -> "TBD"				
* imagingPerformed.pETwithothertracersPerformed -> "TBD"				
* imagingPerformed.opticaldigitalmethodsegnarrowbandimagingPerformed -> "TBD"				
* imagingPerformed.cTPETPerformed -> "TBD"				
* imagingPerformed.unknownPerformed -> "TBD"				
* imagingPerformed.otherimagingforprimarysitePerformed -> "TBD"				
* imagingforneckPerformed -> "TBD"				
* imagingforneckPerformed.flag -> "TBD"				
* imagingforneckPerformed.cTPerformed -> "TBD"				
* imagingforneckPerformed.mRIPerformed -> "TBD"				
* imagingforneckPerformed.uSPerformed -> "TBD"				
* imagingforneckPerformed.fDGPETPerformed -> "TBD"				
* imagingforneckPerformed.pETwithothertracersPerformed -> "TBD"				
* imagingforneckPerformed.cTPETPerformed -> "TBD"				
* imagingforneckPerformed.unknownPerformed -> "TBD"				
* imagingforneckPerformed.otherimagingforneckPerformed -> "TBD"				
* imagingformetastasisPerformed -> "TBD"				
* imagingformetastasisPerformed.imagingformetastasisPerformed -> "TBD"				
* imagingformetastasisPerformed.cTPerformed -> "TBD"				
* imagingformetastasisPerformed.mRIPerformed -> "TBD"				
* imagingformetastasisPerformed.uSPerformed -> "TBD"				
* imagingformetastasisPerformed.fDGPETPerformed -> "TBD"				
* imagingformetastasisPerformed.pETwithothertracersPerformed -> "TBD"				
* imagingformetastasisPerformed.cTPETPerformed -> "TBD"				
* imagingformetastasisPerformed.unknownPerformed -> "TBD"				
* imagingformetastasisPerformed.otherimagingformetastaticdiseasePerformed -> "TBD"				
* clinicalStage -> "TBD"				
* clinicalStage.ct -> "TBD"				
* clinicalStage.cn -> "TBD"				
* clinicalStage.radiologicalExtraNodalExtensionRene -> "TBD"				
* clinicalStage.cm -> "TBD"				
* clinicalStage.clinicalStaging -> "TBD"				
* clinicalStage.ajccEdition -> "TBD"				
* clinicalStage.nan -> "TBD"				
* metastasisSite -> "TBD"				
* metastasisSite.softTissue -> "TBD"				
* metastasisSite.distantLymphNode -> "TBD"				
* metastasisSite.lung -> "TBD"				
* metastasisSite.bone -> "TBD"				
* metastasisSite.liver -> "TBD"				
* metastasisSite.pleura -> "TBD"				
* metastasisSite.peritoneum -> "TBD"				
* metastasisSite.brain -> "TBD"				
* metastasisSite.otherViscera -> "TBD"				
* metastasisSite.unknown -> "TBD"				
* clinicalStagingDefinedBy -> "TBD"				
* pathologicalStage -> "TBD"				
* pathologicalStage.pt -> "TBD"				
* pathologicalStage.pn -> "TBD"				
* extranodalExtensionEne -> "TBD"				
* extranodalExtent -> "TBD"				
* marginsAfterSurgery -> "TBD"				
* marginsAfterSurgeryIf5Mm -> "TBD"				
* sentinelNode -> "TBD"				
* neckDissection -> "TBD"				
* numberOfLymphNodesRemovedRightSide -> "TBD"				
* numberOfPositiveLymphNodesRightSide -> "TBD"				
* lnrRightLymphNodeRatio -> "TBD"				
* numberOfLymphNodesRemovedLeftSide -> "TBD"				
* numberOfPositiveLymphNodesLeftSide -> "TBD"				
* lnrLeftLymphNodeRatio -> "TBD"				
* lymphovascularSpaceInvasionLvsi -> "TBD"				
* perineuralInvasionPni -> "TBD"				
* pm -> "TBD"				
* pathologicalStaging -> "TBD"				
* ajccEdition -> "TBD"				
* mSite -> "TBD"				
* softTissue -> "TBD"				
* distantLymphNode -> "TBD"				
* lung -> "TBD"				
* bone -> "TBD"				
* liver -> "TBD"				
* pleura -> "TBD"				
* peritoneum -> "TBD"				
* brain -> "TBD"				
* otherViscera -> "TBD"				
* msite -> "TBD"				
* unknown -> "TBD"				
* pathologicalStagingDefinedBy -> "TBD"				
* instrumentStatus -> "TBD"				
// --END				
// --END				
// --END				
				
				
				
				
				
				
				
				
				
				
				
				
