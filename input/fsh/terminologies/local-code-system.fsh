
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  CodeSystem:  CsGenericI4rc
  Id: cs-generic-eu-i4rc
  Title: "Temporary Code System"
  Description:  "Coded concepts specified by this Project. TO BE UPDATED"
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

// Chemotherapy
* #cumulativeDose "Cumulative dose received by a patient for a specific drug."