Instance: observation-id-21
InstanceOf: ObservationDiagnosisI4rc
Title: "Observation: Diagnosis"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Observation-diagnosis-eu-i4rc"
* status = #final
* code = $loinc#29308-4 "Diagnosis"
* subject = Reference(patient-id-17)
* effectiveDateTime = "2022-01-15T00:00:00+01:00"
// added value[x] required
* valueCodeableConcept = $athena#4298030 "Verrucous squamous cell carcinoma"
* method = $athena#4171863 "Fine needle biopsy"