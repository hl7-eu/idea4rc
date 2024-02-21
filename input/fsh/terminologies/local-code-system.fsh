
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  CodeSystem:  CsGenericI4rc
  Id: cs-generic-eu-i4rc
  Title: "IDEA4RC Code System"
  Description:  "Temporary coded concepts to be used by this Project waiting for the assignement from international terminologies."
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^caseSensitive = true
* ^experimental = false

//===== status last follow up

* #NED "Alive, No Evidence of Disease" "Alive, No Evidence of Disease"
* #DOD "Dead of Disease DEATH" "Dead of Disease DEATH"
* #DOC "Dead of Other Cause DEATH" "Dead of Other Cause DEATH"
* #DUC "Dead of Unknown Cause DEATH" "Dead of Unknown Cause DEATH "
* #AWD "Alive With Disease" "Alive With Disease"


// == 

* #solid-tumor "Solid tumor (non metastatic)" "Solid tumor (non metastatic)"
* #1620421-liver  "Moderate or severe liver disease" "Moderate or severe liver disease"
* #1620421-renal  "Moderate or severe renal disease" "Moderate or severe renal disease"


// ==

// * #last-followup-dx "Diagnosis at the last follow-up" "Diagnosis at the last follow-up"
 * #last-followup-status "Status at last follow-up"

// == questions on genetic test performed

* #geneExpressionAnalysisPerformed	"A gene expression analysis is performed" "Clarifies whether a gene expression analysis is performed"
* #geneMutationAnalysisPerformed	"A gene mutation analysis is performed" "Clarifies whether a gene mutation analysis is performed"
* #testsForChromosomeTranslocationsPerformed	"A tests for chromosome translocations is performed" "Clarifies whether a tests for chromosome translocations is performed"
* #ngsPerformed	"A NGS analysis is performed" "Clarifies whether a NGS analysis is performed"
* #pcrTestPerformed	"A PCR analysis is performed" "Clarifies whether a PCR analysis is performed"
* #immunohistochemistryPerformed	"A immunohiostochemestry analysis is performed" "Clarifies whether a immunohiostochemestry analysis is performed"
* #ctDnaPerformed	"A ctDNA analysis is performed" "Clarifies whether a ctDNA analysis is performed"



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