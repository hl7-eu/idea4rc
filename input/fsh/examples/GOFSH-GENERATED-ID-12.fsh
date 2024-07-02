Instance: GOFSH-GENERATED-ID-12
InstanceOf: Condition
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension.valueReference = Reference(urn:uuid:5a5bd0ce-8470-458c-897e-823efc99154f)
* subject = Reference(patient-id-17)
* evidence[0].code = $cs-generic-eu-i4rc#geneMutationAnalysisPerformed "A gene mutation analysis is performed"
* evidence[=].detail = Reference(urn:uuid:88e120dc-47bb-4276-8cf1-1def71627455)
* evidence[+].code = $cs-generic-eu-i4rc#immunohistochemistryPerformed "A immunohiostochemestry analysis is performed"
* evidence[=].detail = Reference(urn:uuid:f9e7f23d-4a78-401e-971e-b7399d6271cd)