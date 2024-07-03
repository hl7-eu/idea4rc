Instance: condition-id-8
InstanceOf: ConditionPrimaryCancerI4rc // change for allowing the sample compilation
Title: "Condition: Stable Disease"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* code = $athena#4298030 "Verrucous squamous cell carcinoma"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing"
* extension[=].valueReference = Reference(urn:uuid:d12b4db9-4a37-4925-b64b-a9a7548c452b)
* clinicalStatus = $athena#32948 "Stable Disease"
* subject = Reference(patient-id-17)
* recordedDate = "2022-05-18T00:00:00+02:00"