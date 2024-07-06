Instance: condition-id-16
InstanceOf: ConditionPrimaryCancerI4rc
Title: "Condition: NOT CLEAR WHAT IT REPRESENTS..TO BE DISCUSSED"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* code = $athena#4188540 "No"
// * bodySite.text = "44503952" This si not a text and this code is not a body site
* subject = Reference(patient-id-17)
* encounter = Reference(encounter-id-14)
* onsetDateTime = "2024-03-20T00:00:00+01:00"