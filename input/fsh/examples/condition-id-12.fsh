Instance: condition-id-12
InstanceOf: ConditionPrimaryCancerI4rc
Title: "Condition: gene mutation and immunohiostochemestry analysis"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension.valueReference = Reference(condition-id-10)
* code = $athena#4298030 "Verrucous squamous cell carcinoma"
* subject = Reference(patient-id-17)
* evidence[0].code = $cs-generic-eu-i4rc#geneMutationAnalysisPerformed "A gene mutation analysis is performed"
* evidence[=].detail = Reference(observation-id-9)
* evidence[+].code = $cs-generic-eu-i4rc#immunohistochemistryPerformed "A immunohiostochemestry analysis is performed"
* evidence[=].detail = Reference(observation-id-11)