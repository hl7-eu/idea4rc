Instance: encounter-id-14
InstanceOf: EncounterI4rc
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Encounter-eu-i4rc"
* status = #planned
* class = $v3-ActCode#IMP "inpatient encounter"
// ADDED Missing linkk to condition
* reasonReference =  Reference( condition-id-10) 
* subject = Reference(patient-id-17)
* period.start = "2024-03-14T00:00:00+01:00"