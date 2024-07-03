Instance: observation-id-6
InstanceOf: HnCancerStageGroup
Title: "Observation: TNM stage grouping"
Usage: #example

* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/hn-cancer-stage-group"
* status = #final
* code = $athena#4219603 "TNM stage grouping"
* subject = Reference(patient-id-17)
* focus = Reference(condition-id-10)
* valueCodeableConcept = $athena#1635029 "AJCC/UICC 8th clinical Stage 4"
* hasMember[0] = Reference(urn:uuid:1a646370-8369-4750-b6ea-806e198b5ee1)
* hasMember[+] = Reference(urn:uuid:567f9703-1061-4b46-a145-2082b2ce39cc)
* hasMember[+] = Reference(urn:uuid:45b033b3-d8b8-4499-9f74-0f8ffefe5812)
* hasMember[+] = Reference(urn:uuid:e8fbf540-a33a-4073-8141-3d96bb9288cc)
* hasMember[+] = Reference(urn:uuid:e9674649-5644-46ed-af4d-f10e86050cfb)
* hasMember[+] = Reference(urn:uuid:0cbe6b0b-2c54-4bda-8ea9-565d81cf6900)
* hasMember[+] = Reference(urn:uuid:98bf4ea3-96f3-42e0-88c5-2b24f0264b53)