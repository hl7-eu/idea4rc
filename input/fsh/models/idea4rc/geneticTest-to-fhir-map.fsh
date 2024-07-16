// -------------------------------------------------------------------------------					
//  Concept Model. File: 					geneticTest-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: geneticTest2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "GeneticTest2FHIR"					
* title = "Genetic Test to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Genetic Test to this guide Map"					
* purpose = "It shows how the Genetic Test model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/GeneticTestExpression"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/GeneticTestExpression"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #GeneticTestExpression.episodeEventReference					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
* group[=].element[+].code = #GeneticTestExpression.geneExpressionAnalysisPerformed					
* group[=].element[=].display = "Is a gene expression analysis performed ?"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#geneExpressionAnalysisPerformed	'A gene expression analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.dateOfGeneExpression					
* group[=].element[=].display = "Date of the gene expression analysis"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#geneExpressionAnalysisPerformed 'A gene expression analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.geneMutationAnalysisPerformed					
* group[=].element[=].display = "Is a gene mutation analysis performed ?"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#geneMutationAnalysisPerformed 'A gene mutation analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.dateOfGeneMutation					
* group[=].element[=].display = "Date of the gene mutation analysis"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#geneMutationAnalysisPerformed 'A gene mutation analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.testsForChromosomeTranslocationsPerformed					
* group[=].element[=].display = "Is a tests for chromosome translocations performed ?"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#testsForChromosomeTranslocationsPerformed 'A tests for chromosome translocations is performed'"					
* group[=].element[+].code = #GeneticTestExpression.dateOfTraslocation					
* group[=].element[=].display = "Date of the Chromosome translocation test"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#testsForChromosomeTranslocationsPerformed 'A tests for chromosome translocations is performed'"					
* group[=].element[+].code = #GeneticTestExpression.ngsPerformed					
* group[=].element[=].display = "Is a NGS analysis performed ?"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#ngsPerformed	'A NGS analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.dateOfNgs					
* group[=].element[=].display = "Date of the NGS analysis"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#ngsPerformed	'A NGS analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.pcrTestPerformed					
* group[=].element[=].display = "Is a PCR analysis performed ?"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#pcrTestPerformed 'A PCR analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.dateOfPcr					
* group[=].element[=].display = "Date of the PCR analysis"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#pcrTestPerformed 'A PCR analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.immunohistochemistryPerformed					
* group[=].element[=].display = "Is a immunohiostochemestry analysis performed ?"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#immunohistochemistryPerformed 'A immunohiostochemestry analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.dateOfImmunohistochemistry					
* group[=].element[=].display = "Date of the immunohiostochemestry analysis"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#immunohistochemistryPerformed 'A immunohiostochemestry analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.ctDnaPerformed					
* group[=].element[=].display = "Is a ctDNA analysis performed ?"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#ctDnaPerformed 'A ctDNA analysis is performed'"					
* group[=].element[+].code = #GeneticTestExpression.dateOfCtdna					
* group[=].element[=].display = "Date of the ctDNA analysis"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "evidence.detail.ofType(Observation) and evidence.detail.resolve().code=CsGenericI4rc#ctDnaPerformed 'A ctDNA analysis is performed'"					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
