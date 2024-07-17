Instance: observation-id-6-2
InstanceOf: HnCancerStageGroup
Title: "Observation: TNM pathology stage grouping"
Usage: #example

* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/hn-cancer-stage-group"
* status = #final
* code = $athena#4221515	"Pathologic TNM stage grouping"
* subject = Reference(patient-id-17)
* focus = Reference(condition-id-10)
* valueCodeableConcept = $athena#1633697 "AJCC/UICC 8th pathological Stage 4"
* hasMember[tnmPrimaryTumorCategory]        = Reference(observation-id-2) // pathology T
* hasMember[tnmRegionalNodesCategory]       = Reference(observation-id-3) // pathology N
* hasMember[tnmDistantMetastasesCategory]   = Reference(observation-id-4) // pathology M
* hasMember[extraNodalExtension] = Reference(observation-id-5)