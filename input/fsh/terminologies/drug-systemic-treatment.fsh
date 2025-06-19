ValueSet: DrugSystemicTreatmentsVS
Id: drug-systemic-treatments-eu-i4rc
Title: "Drugs for Systemic Treatment"
Description: """A list of drugs given to a patient for systemic treatment."""

* ^compose.include[+].valueSet = Canonical(DrugForTreatmentsVS)
* ^compose.include[+].valueSet = Canonical(RegimenVS)