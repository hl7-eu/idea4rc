Alias:  $episodeEventReference = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ext-episode-event-reference
Alias:  $geneExpressionAnalysisPerformed = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ext-gene-Expression-Analysis-Performed
Alias:  $geneMutationAnalysisPerformed = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ext-gene-mutation-Analysis-Performed
Alias:  $dateOfGeneMutation = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/date-Gene-Mutation
Alias:  $dateOfTranslocation = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/date-translocation
Alias:  $testsForChromosomeTranslocationsPerformed	= http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/tests-Chromosome-Translocations-Performed	
Alias:  $nextGenerationSequencingNgsPerformed = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/next-Generation-Sequencing-Ngs-Performed
Alias:  $dateOfNgs = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/date-Ngs
Alias:  $polymeraseChainReactionPcrTestPerformed = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/polymerase-Chain-Reaction-Pcr-Test-Performed
Alias:  $dateOfPcr = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/date-PCR
Alias:  $immunohistochemistryPerformed = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/immuno-histo-chemistry-Performed
Alias:  $dateOfImmunohistochemistry = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/date-Immunohistochemistry
Alias:  $circulatingTumourDnaCtdnaPerformed = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/circulating-Tumour-DnaCtdnaPerformed
Alias:  $dateOfCtdna = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/date-Ctdna

//use R4 base to map to R5 GenomicStudy ?

Profile: GeneticTestExpressionI4RC
Parent: Procedure
Id: genetic-test-expression-i4rc
Title: "GeneticTestExpression"
Description: "Profile for the GeneticTestExpression"
* extension contains
  $episodeEventReference named episodeEventReference 1..1 MS and 
  $geneExpressionAnalysisPerformed named geneExpressionAnalysisPerformed 1..1 MS and
  $geneMutationAnalysisPerformed named geneMutationAnalysisPerformed 1..1 MS and
  $dateOfGeneMutation named dateOfGeneMutation 1..1 MS and 
  $testsForChromosomeTranslocationsPerformed named testsForChromosomeTranslocationsPerformed 1..1 MS and
  $dateOfTranslocation named dateOfTranslocation 1..1 MS and 
  $nextGenerationSequencingNgsPerformed named nextGenerationSequencingNgsPerformed 1..1 MS and 
  $dateOfNgs named dateofNgs 1..1 MS and
  $polymeraseChainReactionPcrTestPerformed named polymeraseChainReactionPcrTestPerformed 1..1 MS and
  $dateOfPcr named dateOfPCR 1..1 MS and 
  $immunohistochemistryPerformed named immunohistochemistryPerformed 1..1 MS and 
  $dateOfImmunohistochemistry named dateOfImmunohistochemistry 1..1 MS and
  $circulatingTumourDnaCtdnaPerformed named circulatingTumourDnaCtdnaPerformed 1..1 MS and
  $dateOfCtdna named dateOfCtdna 1..1 MS
* performedDateTime	1..1
  * ^short = "Date of the gene expression analysis"


//-------------

Extension: ExtepisodeEventReference
Id: ext-episode-event-reference
Title: "Extension : episodeEventReference"
Description: "Extension for the Episode event Reference"
* . ^short = "EpisodeEvent element containing the data regarding the patient's cancer"
* value[x] 1..1
* value[x] only Reference(Condition)

Extension: ExtgeneExpressionAnalysisPerformed
Id: ext-gene-Expression-Analysis-Performed
Title: "Extension : geneExpressionAnalysisPerformed"
Description: "Extension for the geneExpressionAnalysisPerformed"
* . ^short = "Clarifies whether a gene expression analysis is performed"
* value[x] 1..1
* value[x] only boolean

Extension: ExtgeneMutationAnalysisPerformed
Id: ext-gene-mutation-Analysis-Performed
Title: "Extension : geneMutationAnalysisPerformed"
Description: "Extension for the geneMutationAnalysisPerformed"
* . ^short = "Clarifies whether a gene mutation analysis is performed"
* value[x] 1..1
* value[x] only boolean

Extension: DateOfGeneMutation
Id: date-Gene-Mutation
Title: "Extension : Date Of Gene Mutation"
Description: "Extension for the dateOfGeneMutation"
* . ^short = "Date of the gene mutation analysis"
* value[x] 1..1
* value[x] only date

Extension: TestsForChromosomeTranslocationsPerformed	
Id: tests-Chromosome-Translocations-Performed	
Title: "Extension : testsForChromosomeTranslocationsPerformed "
Description: "Extension for the testsForChromosomeTranslocationsPerformed	"
* . ^short = "Clarifies whether a tests for chromosome translocations is performed"
* value[x] 1..1
* value[x] only boolean

Extension: DateOfTranslocation
Id: date-translocation
Title: "Extension : Date Of Translocation"
Description: "Extension for the dateOfTranslocation"
* . ^short = "Date of the Chromosome translocation test"
* value[x] 1..1
* value[x] only date

Extension: NextGenerationSequencingNgsPerformed
Id: next-Generation-Sequencing-Ngs-Performed
Title: "Extension : NextGenerationSequencingNgsPerformed"
Description: "Extension for the NextGenerationSequencingNgsPerformed"
* . ^short = "Clarifies whether a NGS analysis is performed "
* value[x] 1..1
* value[x] only boolean

Extension: DateOfNgs
Id: date-Ngs
Title: "Extension : dateOfNgs"
Description: "Extension for the date of Ngs"
* . ^short = "Date of the NGS analysis"
* value[x] 1..1
* value[x] only date

Extension: ExtpolymeraseChainReactionPcrTestPerformed
Id: polymerase-Chain-Reaction-Pcr-Test-Performed
Title: "Extension : polymerase-Chain-Reaction-Pcr-Test-Performed"
Description: "Extension for the polymerase-Chain-Reaction-Pcr-Test-Performed"
* . ^short = "Clarifies whether a PCR analysis is performed"
* value[x] 1..1
* value[x] only boolean

Extension: DateOfPcr
Id: date-PCR
Title: "Extension : dateOfPCR"
Description: "Extension for the date of PCR"
* . ^short = "Date of the PCR analysis"
* value[x] 1..1
* value[x] only date

Extension: ImmunohistochemistryPerformed
Id: immuno-histo-chemistry-Performed
Title: "Extension : immunohistochemistryPerformed"
Description: "Extension for the immunohistochemistryPerformed"
* . ^short = "Clarifies whether a immunohiostochemestry analysis is performed"
* value[x] 1..1
* value[x] only boolean

Extension: DateOfImmunohistochemistry
Id: date-Immunohistochemistry
Title: "Extension : dateOfImmunohistochemistry"
Description: "Extension for the date of the immunohiostochemestry analysis "
* . ^short = "Date of the immunohiostochemestry analysis"
* value[x] 1..1
* value[x] only date

Extension: CirculatingTumourDnaCtdnaPerformed
Id: circulating-Tumour-DnaCtdnaPerformed
Title: "Extension : circulatingTumourDnaCtdnaPerformed"
Description: "Extension for the circulatingTumourDnaCtdnaPerformed"
* . ^short = "Clarifies whether a ctDNA analysis is performed"
* value[x] 1..1
* value[x] only boolean

Extension:  DateOfCtdna
Id: date-Ctdna
Title: "Extension : dateOfCtdna"
Description: "Extension for the date of a ctDNA analysis"
* . ^short = "Date of the ctDNA analysis"
* value[x] 1..1
* value[x] only date