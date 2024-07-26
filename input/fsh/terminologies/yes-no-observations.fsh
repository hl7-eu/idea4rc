
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsObsYesNoCodeI4rc
Id: obsYesNo-code-eu-i4rc
Title: "Types of Yes/No observations"
Description: """Types of Yes/No observations"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

// * $loinc#67190-9 "Other cancer diagnosis [PhenX]"
* codes from valueset VsGeneticTestsPerformed


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsGeneticTestsPerformed
Id: geneticTestPerformed-eu-i4rc
Title: "Genetic Tests performed (Yes/no/Unk)"
Description: """Genetic Tests performed (Yes/no/Unk)"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* CsGenericI4rc#geneExpressionAnalysisPerformed	"A gene expression analysis is performed"
* CsGenericI4rc#geneMutationAnalysisPerformed	"A gene mutation analysis is performed"
* CsGenericI4rc#testsForChromosomeTranslocationsPerformed	"A tests for chromosome translocations is performed"
* CsGenericI4rc#ngsPerformed	"A NGS analysis is performed"
* CsGenericI4rc#pcrTestPerformed	"A PCR analysis is performed"
* CsGenericI4rc#immunohistochemistryPerformed	"A immunohiostochemestry analysis is performed"
* CsGenericI4rc#ctDnaPerformed	"A ctDNA analysis is performed"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsYesNoUnkAthenaI4rc
Id: yes-no-unk-athena-eu-i4rc
Title: "Yes-No-Unk: Athena"
Description: """Laboratory test results: Yes-No-Unkwnon: Athena"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $athena#4188539 "yes"
* $athena#4188540 "no"
* $athena#4129922 "unknown"
