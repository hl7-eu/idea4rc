Instance: condition-id-7
InstanceOf: ConditionSecondaryCancerI4rc
Title: "Condition: Metastasis bone and pleura"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-secondaryCancer-eu-i4rc"
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension.valueReference = Reference(condition-id-10)
* code = $athena#36769180  "Metastasis"
* bodySite[0] = $athena#4000496 "Bone part"
* bodySite[+] = $athena#4150673 "Pleural structure"
* subject = Reference(patient-id-17)