// -------------------------------------------------------------------------------					
//  Concept Model. File: 					GeneticTestExpression-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: geneticTestExpression2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "GeneticTestExpression2FHIR"					
* title = "Genetic Test Expression Model to this guide Map"					
* status = #draft					
* experimental = true					
* description = "Genetic Test Expression Model to this guide Map"					
* purpose = "It shows how the Genetic Test Expression Model is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/GeneticTestExpression"					
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/GeneticTestExpression"					
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"					
					
* group[=].element[+].code = #GeneticTestExpression.episodeEventReference					
* group[=].element[=].display = "Cancer Episode Reference"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "The relationship is between EpisodeOfCare to the Primary Condition"					
* group[=].element[+].code = #GeneticTestExpression.geneExpressionAnalysisPerformed					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if at least one evidence:genetic-test.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.dateOfGeneExpression					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "With evidence:genetic-test.detail.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.geneMutationAnalysisPerformed					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if at least one evidence:genetic-test.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.dateOfGeneMutation					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "With evidence:genetic-test.detail.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.testsForChromosomeTranslocationsPerformed					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if at least one evidence:genetic-test.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.dateOfTraslocation					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "With evidence:genetic-test.detail.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.nextGenerationSequencingNgsPerformed					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if at least one evidence:genetic-test.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.dateOfNgs					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "With evidence:genetic-test.detail.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.polymeraseChainReactionPcrTestPerformed					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if at least one evidence:genetic-test.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.dateOfPcr					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "With evidence:genetic-test.detail.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.immunohistochemistryPerformed					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if at least one evidence:genetic-test.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.dateOfImmunohistochemistry					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "With evidence:genetic-test.detail.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.circulatingTumourDnaCtdnaPerformed					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if at least one evidence:genetic-test.code in a 'to be defined' Value Set exists"					
* group[=].element[+].code = #GeneticTestExpression.dateOfCtdna					
* group[=].element[=].display = "Cancer Episode Reference"					
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "With evidence:genetic-test.detail.code in a 'to be defined' Value Set exists"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
