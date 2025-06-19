ValueSet: DrugForTreatmentsVS
Id: drug-for-treatments-eu-i4rc
Title: "Drug for Treatments"
Description: """A list of drugs given to a patient for a specific treatment.
This list can be visualized here : https://athena.ohdsi.org/search-terms/terms?domain=Drug&standardConcept=Standard&vocabulary=RxNorm&vocabulary=RxNorm+Extension&page=1&pageSize=15&query=
"""
* ^experimental = false
* ^compose.include[+].system = $athena
* ^compose.include[=].filter[+].property = #domain
* ^compose.include[=].filter[=].op = #=
* ^compose.include[=].filter[=].value = "Drug"
* ^compose.include[=].filter[+].property = #standardConcept
* ^compose.include[=].filter[=].op = #=
* ^compose.include[=].filter[=].value = "Standard"
* ^compose.include[=].filter[+].property = #vocabulary
* ^compose.include[=].filter[=].op = #in
* ^compose.include[=].filter[=].value = "RxNorm,RxNorm Extension"