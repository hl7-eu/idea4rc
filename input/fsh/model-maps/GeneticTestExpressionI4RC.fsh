Logical: GeneticTestExpressionI4RC
Id: GeneticTestExpression
Title: "Genetic Test Expression"
Description: """Genetic Test Expression
Maturity Level: 0 Draft"""
* diagnosisReference 1..* Diagnosis "Diagnosis reference (M)" """Diagnosis reference in case the treatment was done for baseline 
"""
* diagnosisReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* episodeEventReference 1..* EpisodeEvent "Episode Event Reference (M)" """EpisodeEvent element containing the data regarding the patient's cancer 
"""
* episodeEventReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* geneExpressionAnalysisPerformed 0..* boolean "Gene expression analysis performed (R)" """Clarifies whether a gene expression analysis is performed 
"""
* geneExpressionAnalysisPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* geneExpressionAnalysisPerformed ^comment = """Gene expression assay -  44808037"""
* dateOfGeneExpression 0..* date "Date of Gene expression (O)" """Date of the gene expression analysis 
"""
* dateOfGeneExpression insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* geneMutationAnalysisPerformed 0..* boolean "Gene mutation analysis performed (R)" """Clarifies whether a gene mutation analysis is performed 
"""
* geneMutationAnalysisPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* geneMutationAnalysisPerformed ^comment = """Gene mutation analysis - 4038339"""
* dateOfGeneMutation 0..* date "Date of Gene mutation (O)" """Date of the gene mutation analysis 
"""
* dateOfGeneMutation insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* testsForChromosomeTranslocationsPerformed 0..* boolean "Tests for chromosome translocations performed (R)" """Clarifies whether a tests for chromosome translocations is performed 
"""
* testsForChromosomeTranslocationsPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* testsForChromosomeTranslocationsPerformed ^comment = """Translocation analysis - 4039364"""
* dateOfTraslocation 0..* date "Date of traslocation (O)" """Date of the Chromosome translocation test 
"""
* dateOfTraslocation insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ngsPerformed 0..* boolean "Next generation sequencing (NGS)  performed (R)" """Clarifies whether a NGS analysis is performed 
"""
* ngsPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ngsPerformed ^comment = """Analysis using chain termination sequencing technique - 40485067"""
* dateOfNgs 0..* date "Date of NGS (O)" """Date of the NGS analysis 
"""
* dateOfNgs insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* pcrPerformed 0..* boolean "Polymerase chain reaction (PCR) test performed (R)" """Clarifies whether a PCR analysis is performed 
"""
* pcrPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* pcrPerformed ^comment = """Quantitative PCR analysis - 40482792"""
* dateOfPcr 0..* date "Date of PCR (O)" """Date of the PCR analysis 
"""
* dateOfPcr insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* immunohistochemistryPerformed 0..* boolean "Immunohistochemistry  performed (R)" """Clarifies whether a immunohiostochemestry analysis is performed 
"""
* immunohistochemistryPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* immunohistochemistryPerformed ^comment = """Immunohistochemistry procedure - 4035726"""
* dateOfImmunohistochemistry 0..* date "Date of immunohistochemistry (O)" """Date of the immunohiostochemestry analysis 
"""
* dateOfImmunohistochemistry insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ctdnaPerformed 0..* boolean "Circulating Tumour DNA (ctDNA) performed (R)" """Clarifies whether a ctDNA analysis is performed 
"""
* ctdnaPerformed insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* ctdnaPerformed ^comment = """Circulating Tumor DNA - 19387013"""
* dateOfCtdna 0..* date "Date of ctDNA (O)" """Date of the ctDNA analysis 
"""
* dateOfCtdna insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
