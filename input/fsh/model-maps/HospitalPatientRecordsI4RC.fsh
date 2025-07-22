Logical: HospitalPatientRecordsI4RC
Id: HospitalPatientRecords
Title: "Hospital Patient Records and Hospital Data"
Description: """Hospital Patient Records and Hospital Data
Maturity Level: 0 Draft"""
* patient 1..* Subject "Patient (M)" """Patient element containing the data regarding the patient followed by the hospital"""
* patient insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* patient ^comment = """-"""
* hospital 1..* BackboneElement "Hospital (M)" """Hospital element containing the data regarding the patient followed by the hospital"""
* hospital insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* hospital ^comment = """-"""
* hospital.name 1..* string "Hospital name (M)" """Hospital where the patients is included in the registry"""
* hospital.name insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* dateOfFirstContactWithTheHospital 1..* date "Date of first contact with the hospital (M)" """Date of the first contact of the patient with the hospital registering the data. The hospital will record information on the patient's entire disease trajectory, thus also on procedures and/or  treatments performed in another hospital. The “date of first contact” will be crossed with other dates to better understand which parts of the disease path were managed by the hospital that registered the patient."""
* dateOfFirstContactWithTheHospital insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* dateOfFirstContactWithTheHospital ^comment = """-"""
