Instance: observation-id-2
InstanceOf: TNMPrimaryTumorCategory
Title: "Observation: Primary tumor pathological T0"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-primary-tumor-category"
* status = #final
// * code = $athena#4221079 "Clinical TNM stage grouping"
* code = $loinc#21899-0 "Primary tumor.pathology Cancer"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#1633279 "AJCC/UICC 6th pathological T0 Category"