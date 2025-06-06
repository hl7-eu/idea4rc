
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

* $athena#44808037	"Gene expression assay"
* $athena#4038339	"Gene mutation analysis"
* $athena#4039364	"Translocation analysis"
* $athena#40485067	"Analysis using chain termination sequencing technique"
* $athena#40482792	"Quantitative PCR analysis"
* $athena#4035726	"Immunohistochemistry procedure"
* $athena#19387013	"Circulating Tumor DNA"
//* CsGenericI4rc#geneExpressionAnalysisPerformed	"A gene expression analysis is performed"
//* CsGenericI4rc#geneMutationAnalysisPerformed	"A gene mutation analysis is performed"
//* CsGenericI4rc#testsForChromosomeTranslocationsPerformed	"A tests for chromosome translocations is performed"
//* CsGenericI4rc#ngsPerformed	"A NGS analysis is performed"
//* CsGenericI4rc#pcrTestPerformed	"A PCR analysis is performed"
//* CsGenericI4rc#immunohistochemistryPerformed	"A immunohiostochemestry analysis is performed"
//* CsGenericI4rc#ctDnaPerformed	"A ctDNA analysis is performed"

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
