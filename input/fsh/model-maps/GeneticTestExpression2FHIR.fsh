Instance: geneticTestExpression2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/geneticTestExpression2FHIR"
* name = "GeneticTestExpression2FHIR"
* title = "GeneticTestExpression Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the GeneticTestExpression model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/GeneticTestExpression"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* group[=].element[+].code = #diagnosisReference
* group[=].element[=].display = "Diagnosis reference (M)"
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #episodeEventReference
* group[=].element[=].display = "Episode Event Reference (M)"
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #geneExpressionAnalysisPerformed
* group[=].element[=].display = "Gene expression analysis performed (R)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='44808037' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfGeneExpression
* group[=].element[=].display = "Date of Gene expression (O)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='44808037'"
* group[=].element[+].code = #geneMutationAnalysisPerformed
* group[=].element[=].display = "Gene mutation analysis performed (R)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='4038339' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfGeneMutation
* group[=].element[=].display = "Date of Gene mutation (O)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='4038339'"
* group[=].element[+].code = #testsForChromosomeTranslocationsPerformed
* group[=].element[=].display = "Tests for chromosome translocations performed (R)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='4039364' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfTraslocation
* group[=].element[=].display = "Date of traslocation (O)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='4039364'"
* group[=].element[+].code = #ngsPerformed
* group[=].element[=].display = "Next generation sequencing (NGS)  performed (R)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='40485067' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfNgs
* group[=].element[=].display = "Date of NGS (O)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='40485067'"
* group[=].element[+].code = #pcrPerformed
* group[=].element[=].display = "Polymerase chain reaction (PCR) test performed (R)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='40482792' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfPcr
* group[=].element[=].display = "Date of PCR (O)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='40482792'"
* group[=].element[+].code = #immunohistochemistryPerformed
* group[=].element[=].display = "Immunohistochemistry  performed (R)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='4035726' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfImmunohistochemistry
* group[=].element[=].display = "Date of immunohistochemistry (O)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='4035726'"
* group[=].element[+].code = #ctdnaPerformed
* group[=].element[=].display = "Circulating Tumour DNA (ctDNA) performed (R)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='19387013' it is 'true', else it is 'false'"
* group[=].element[+].code = #dateOfCtdna
* group[=].element[=].display = "Date of ctDNA (O)"
* group[=].element[=].target.code = #Condition.evidence:genetic-test.detail.effectiveDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Where Condition.evidence.detail.ofType(Observation) and Condition.evidence.detail.resolve().code='19387013'"
