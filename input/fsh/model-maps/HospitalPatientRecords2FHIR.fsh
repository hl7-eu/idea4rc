Instance: hospitalPatientRecords2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/hospitalPatientRecords2FHIR"
* name = "HospitalPatientRecords2FHIR"
* title = "Hospital Patient Records Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the Hospital Patient Records model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/HospitalPatientRecords"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/episodeOfCare-eu-i4rc"
* group[=].element[+].code = #patient
* group[=].element[=].display = "Patient (M)"
* group[=].element[=].target.code = #EpisodeOfCare.patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #hospital
* group[=].element[=].display = "Hospital (M)"
* group[=].element[=].target.code = #EpisodeOfCare.managingOrganization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #hospital.name
* group[=].element[=].display = "Hospital name (M)"
* group[=].element[=].target.code = #EpisodeOfCare.managingOrganization.display
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #dateOfFirstContactWithTheHospital
* group[=].element[=].display = "Date of first contact with the hospital (M)"
* group[=].element[=].target.code = #EpisodeOfCare.period.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
