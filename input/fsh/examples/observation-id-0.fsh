Instance: observation-id-0
InstanceOf: TNMRegionalNodesCategory
Title: "Observation: Regional lymph nodes Clinical N1"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/mcode-tnm-regional-nodes-category"
* status = #final
/* * code = $athena#4221079 "Clinical TNM stage grouping" */
* code = $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#1635697 "AJCC/UICC 6th clinical N1 Category"