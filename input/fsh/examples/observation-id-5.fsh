Instance: observation-id-5
InstanceOf: ObservationEneI4rc
Title: "Observation: Radiological Extra-nodal extension"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-extraNodalExtension-eu-i4rc"
* status = #final
// changed with amore generic observation code 
// * code = $athena#602282 "Presence of direct invasion by metastatic carcinoma of lymph node in excised specimen to perilymphatic tissue"
* code  = $athena#37078016 "Extranodal extension of carcinoma" //it represent a LOINC part.. TBC
* subject = Reference(patient-id-17)
* valueCodeableConcept = $athena#36770618 "Major Extranodal Extension (ENEma)"