
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  CodeSystem:  CsGenericPcsp
  Id: cs-generic-eu-pcsp
  Title: "PCSP Code System"
  Description:  "Coded concepts specified by the PancareSurPass Project. TO BE UPDATED"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^caseSensitive = true
* ^experimental = false
// === type of radio devices (placeholders to be substitute with international codes
* #orthovoltage "Orthovoltage" "Orthovoltage / kilovoltage usually 200 - 300kv X rays/photons" 
* #linac-mv "Linac MV" "(Linear Accelerator) megavoltage MV X Rays/photons" 
* #linac-el "Linac electrons" "Linac (Linear Accelerator) electrons"
* #cobalt "Cobalt MV" "Cobalt - MV gamma rays / photons"
* #proton-beam "Proton Beam" "Proton Beam"

// === type of brachytherapy 
* #surface-brachytherapy "Surface brachytherapy" "Surface brachytherapy"
* #interstitial-brachytherapy "Interstitial brachytherapy" "Interstitial brachytherapy"
* #intra-brachytherapy  "Intracavitary or intraluminal brachytherapy" "Intracavitary or intraluminal brachytherapy"
* #unk-brachytherapy "Unknown brachytherapy" "Unknown brachytherapy"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadiotherapyDeviceType
Id: vs-radiotherapyDeviceType-eu-pcsp
Title: "Radiotherapy Device Type"
Description: "Radiotherapy device type this procedure is referring to. TO BE UPDATED"
//-------------------------------------------------------------------------------------------
* ^experimental = true
* CsGenericPcsp#orthovoltage "Orthovoltage"
* CsGenericPcsp#linac-mv "Linac MV"
* CsGenericPcsp#linac-el "Linac electrons" 
* CsGenericPcsp#cobalt "Cobalt MV" 
* CsGenericPcsp#proton-beam "Proton Beam"
// * codes from valueset UnknownOtherVs