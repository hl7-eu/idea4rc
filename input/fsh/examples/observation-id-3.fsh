Instance: observation-id-3
InstanceOf: TNMRegionalNodesCategory
Title: "Observation: Regional lymph nodes pathology N3b"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-regional-nodes-category"
* status = #final
// * code = $athena#4221515 "Pathologic TNM stage grouping"
* code = $loinc#21900-6	"Regional lymph nodes.pathology [Class] Cancer"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#1634770 "AJCC/UICC 8th pathological N3b Category"