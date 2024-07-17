Instance: observation-id-6-1
InstanceOf: HnCancerStageGroup
Title: "Observation: TNM clinical stage grouping"
Usage: #example

// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/hn-cancer-stage-group"
* status = #final
* code = $athena#4221079	"Clinical TNM stage grouping"
* subject = Reference(patient-id-17)
* focus = Reference(condition-id-10)
* valueCodeableConcept = $athena#1635029 "AJCC/UICC 8th clinical Stage 4"
* hasMember[tnmPrimaryTumorCategory]      = Reference(observation-id-37) // Clinical T
* hasMember[tnmRegionalNodesCategory]     = Reference(observation-id-0) // Clinical N
* hasMember[tnmDistantMetastasesCategory] = Reference(observation-id-1) // Clinical M
