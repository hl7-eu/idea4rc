Instance: observation-id-4
InstanceOf: TNMDistantMetastasesCategory
Title: "Observation: Distant metastases pathology M1"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-distant-metastases-category"
* status = #final
// code not present in the profile 
// * code = $athena#4221515 "Pathologic TNM stage grouping"
* code = $loinc#21901-4	"'Distant metastases.pathology [Class] Cancer" // the athena code is 3018082
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#1634891 "AJCC/UICC 8th pathological M1 Category"