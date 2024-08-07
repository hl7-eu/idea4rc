//===================================================				
//  Logical Model				i4rc-GeneticTestExpression.fsh
//===================================================				
Logical: GeneticTestExpressionI4rc				
Id: GeneticTestExpression				
Title: "Genetic Test Expression"				
Description:  """Genetic Test Expression"""				
* episodeEventReference 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Cancer Episode Reference" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* geneExpressionAnalysisPerformed 0..1 boolean "Is a gene expression analysis performed ?" """Clarifies whether a gene expression analysis is performed"""				
* dateOfGeneExpression 0..1 date "Date of the gene expression analysis" """Date of the gene expression analysis"""				
* geneMutationAnalysisPerformed 0..1 boolean "Is a gene mutation analysis performed ?" """Clarifies whether a gene mutation analysis is performed"""				
* dateOfGeneMutation 0..1 date "Date of the gene mutation analysis" """Date of the gene mutation analysis"""				
* testsForChromosomeTranslocationsPerformed 0..1 boolean "Is a tests for chromosome translocations performed ?" """Clarifies whether a tests for chromosome translocations is performed"""				
* dateOfTraslocation 0..1 date "Date of the Chromosome translocation test" """Date of the Chromosome translocation test"""				
* ngsPerformed 0..1 boolean "Is a NGS analysis performed ?" """Clarifies whether a NGS analysis is performed"""				
* dateOfNgs 0..1 date "Date of the NGS analysis" """Date of the NGS analysis"""				
* pcrTestPerformed 0..1 boolean "Is a PCR analysis performed ?" """Clarifies whether a PCR analysis is performed"""				
* dateOfPcr 0..1 date "Date of the PCR analysis" """Date of the PCR analysis"""				
* immunohistochemistryPerformed 0..1 boolean "Is a immunohiostochemestry analysis performed ?" """Clarifies whether a immunohiostochemestry analysis is performed"""				
* dateOfImmunohistochemistry 0..1 date "Date of the immunohiostochemestry analysis" """Date of the immunohiostochemestry analysis"""				
* ctDnaPerformed 0..1 boolean "Is a ctDNA analysis performed ?" """Clarifies whether a ctDNA analysis is performed"""				
* dateOfCtdna 0..1 date "Date of the ctDNA analysis" """Date of the ctDNA analysis"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
* episodeEventReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* geneExpressionAnalysisPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfGeneExpression insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* geneMutationAnalysisPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfGeneMutation insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* testsForChromosomeTranslocationsPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfTraslocation insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* ngsPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfNgs insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* pcrTestPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfPcr insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* immunohistochemistryPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfImmunohistochemistry insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* ctDnaPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* dateOfCtdna insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
