Instance: observation-id-1
InstanceOf: TNMDistantMetastasesCategory
Title: "Observation: Distant metastases clinical M1"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-distant-metastases-category"
* status = #final
* code = $loinc#21907-1 "Distant metastases.clinical [Class] Cancer"
// * code = $athena#4221079 "Clinical TNM stage grouping"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#1634829 "AJCC/UICC 6th clinical M1 Category"