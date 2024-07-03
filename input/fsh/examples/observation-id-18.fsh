Instance: observation-id-18
InstanceOf: ObservationTobaccoUseI4rc
Title: "Observation: Tobacco use panel"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-tobaccouse-eu-i4rc"
* status = #final
* code = $loinc#88028-6 "Tobacco use panel"
* subject = Reference(patient-id-17)
* component[0].code = $loinc#72166-2 "Tobacco smoking status"
* component[=].valueCodeableConcept = $athena#45883458 "Former smoker"
* component[+].code = $athena#903650 "Cigarettes pack-years smoked during life"
* component[=].valueQuantity.value = 5