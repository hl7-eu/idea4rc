//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsImmagingClinicalStageI4rc
Id: imaging-clinical-stage-i4rc
Title: " Immaging Clinical Stage"
Description: "This ValueSet defines a collection of codes describing Immaging Clinical Stage"
//-------------------------------------------------------------------------------------------

* ^experimental = false

* $athena#2000100025 "Fluorodeoxyglucose positron emission tomography"
* $athena#2000100026 "Positron emission tomography using other tracers"

* codes from valueset VsImmagingClinicalStagePrimarySiteI4rc
* codes from valueset VsImmagingClinicalStageNeckI4rc
* codes from valueset VsImmagingClinicalStageMetastasisI4rc

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsImmagingClinicalStagePrimarySiteI4rc
Id: imaging-clinical-stage-primary-site-i4rc
Title: " Immaging Clinical Stage Primary Site"
Description: "This ValueSet defines a collection of codes describing Immaging Clinical Stage primary site"
//-------------------------------------------------------------------------------------------

* ^experimental = false

* $athena#4300757 "Computed tomography"
* $athena#4013636 "Magnetic resonance imaging"
* $athena#4037672 "Ultrasonography"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsImmagingClinicalStageNeckI4rc
Id: imaging-clinical-stage-neck-i4rc
Title: " Immaging Clinical Stage Neck"
Description: "This ValueSet defines a collection of codes describing Immaging Clinical Stage Neck"
//-------------------------------------------------------------------------------------------

* ^experimental = false

* $athena#3307719 "Computed tomography of neck"
* $athena#4218948 "Magnetic resonance imaging of neck"
* $athena#2793113 "Ultrasonography of Neck"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsImmagingClinicalStageMetastasisI4rc
Id: imaging-clinical-stage-metastasis-i4rc
Title: " Immaging Clinical Stage Metastasis"
Description: "This ValueSet defines a collection of codes describing Immaging Clinical Stage Metastasis"
//-------------------------------------------------------------------------------------------

* ^experimental = false

* $athena#4058335 "CT of chest"
* $athena#4061009 "CT of abdomen"
* $athena#4058336 "CT of pelvis"
* $athena#4145739 "CT of brain"
* $athena#4083230 "MRI of abdomen"
* $athena#4097527 "MRI of pelvis"
* $athena#37311324 "MRI of brain"
* $athena#4261497 "Ultrasonography of abdomen"
* $athena#4056836 "Standard chest X-ray"
* $athena#4217238 "Radioisotope scan of bone"
* $athena#4305790 "Positron emission tomography"
