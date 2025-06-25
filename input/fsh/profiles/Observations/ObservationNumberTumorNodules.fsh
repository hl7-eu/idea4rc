Profile:  NumberTumorNodules
Id: observation-number-tumor-nodules
Parent: Observation
Title: "Observation: Number of tumor nodules"
Description: "This profile constrains the Observation resource to represent the number of tumor nodules."
* code 1..1
* code =  $athena#4228659
* insert SubjectRules
* value[x] only integer
* value[x] 1..1