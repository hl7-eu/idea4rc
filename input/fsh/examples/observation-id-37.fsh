Instance: observation-id-37
InstanceOf: TNMPrimaryTumorCategory
Title: "Observation: Primary tumor clinical T0"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-primary-tumor-category"
* status = #final
// * code = $athena#4221079 "Clinical TNM stage grouping"
* code = $loinc#21905-5	"Primary tumor.clinical"  // athena 3008841
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#1633815 "AJCC/UICC 7th clinical T0 Category"