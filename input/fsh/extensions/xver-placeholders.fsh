// This file contains placeholder extensions for some XVer extensions not present in the official XVer
// package and therefore not yet recognized during publisher process

Extension: MedicationAdministrationCategory
Id: extension-MedicationAdministration.category
Title: "MedicationAdministration Category"
Description: """
Temporary placeholder for the official HL7 cross-version extension.

At the time of publication, the corresponding HL7 cross-version extension is not resolved through the implementation guide's dependency chain. This placeholder preserves compatibility until the official cross-version extension can be used.
"""
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationAdministration.category"
* ^status = #draft
* ^experimental = true

* value[x] only CodeableConcept

Extension: ProcedureCategory
Id: extension-Procedure.category
Title: "Procedure Category"
Description: """
Temporary placeholder for the official HL7 cross-version extension.

At the time of publication, the corresponding HL7 cross-version extension is not resolved through the implementation guide's dependency chain. This placeholder preserves compatibility until the official cross-version extension can be used.
"""
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.category"
* ^status = #draft
* ^experimental = true

* value[x] only CodeableConcept