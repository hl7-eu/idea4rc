Profile: ObservationEneI4rc
Parent: Observation
Id: observation-extraNodalExtension-eu-i4rc
Title: "Observation: Radiological Extra-nodal extension (rENE)"
Description: """This profile constrains the Observation resource to represent Radiological Extra-nodal extension (rENE) for the purpose of the IDEA4RC project.
It describes the presence or absence of radiological signs of extracapsular extension, as defined in the AJCC 8th Ed"""
* code 1..1
* code = $athena#37078016 // "Extranodal extension of carcinoma" 
* insert SubjectRules
/* * effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing." */
* valueCodeableConcept 1..
* valueCodeableConcept from VsExtranodalExtensionI4rc // Unknown ?
* component ..0