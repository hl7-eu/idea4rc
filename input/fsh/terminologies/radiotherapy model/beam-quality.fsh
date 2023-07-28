//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsBeamQualityI4RC
Id: beam-quality-i4rc
Title: "Beam Quality"
Description: "describes the type of radiation therapy given"
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = true

* $athena#607996 "external beam RT photons"
* $athena#4165039 "external beams RT electrons"
// TO BE ADDED EXTERNAL BEAM RT CARBONS 
* $athena#4024005 "external beam RT protons "
* $athena#4012485 "brachytherapy interstitial endocavitary contact"
* $athena#4161415 "radionuclide therapy"
* $athena#405801 "boron neuton capture therapy"
* $athena#4077953 "other"
* $athena#4129922 "unknown"







