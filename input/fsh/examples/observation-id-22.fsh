Instance: observation-id-22
InstanceOf: CharlsonComorbidityIndex
Title: "Observation: Charlson Comorbidity Index"
Description: "Observation recording the patient's Charlson Comorbidity Index score."
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-cci-eu-i4rc"
// CHECK HOW THIS IS LINKED TO THE CONDITION
* status = #final
* category = $observation-category#survey
* code = $sct#762713009 "Charlson Comorbidity Index"
* subject = Reference(patient-id-17)
* valueInteger = 2