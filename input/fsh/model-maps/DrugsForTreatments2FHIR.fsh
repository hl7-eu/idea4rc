Instance: drugsForTreatments2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/drugsForTreatments2FHIR"
* name = "DrugsForTreatments2FHIR"
* title = "DrugsForTreatments Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the DrugsForTreatments model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/DrugsForTreatments"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/MedicationAdministration-eu-i4rc"
* group[=].element[+].code = #systemicTreatmentReference
* group[=].element[=].display = "SystemicTreatment reference (M)"
* group[=].element[=].target.code = #MedicationAdministration
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #drug
* group[=].element[=].display = "Drug (M)"
* group[=].element[=].target.code = #MedicationAdministration.medication[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Applicable only if Code is in ValueSet: Drugs for Treatments "
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/DrugsForTreatments"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-otherTreatment-eu-i4rc"
* group[=].element[+].code = #RegionalDeepHyperthemiaReference
* group[=].element[=].display = "RegionalDeepHyperthemia (M)"
* group[=].element[=].target.code = #Procedure
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #isolatedLimbPerfusionReference
* group[=].element[=].display = "IsolatedLimbPerfusion reference (M)"
* group[=].element[=].target.code = #Procedure
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #drug
* group[=].element[=].display = "Drug (M)"
* group[=].element[=].target.code = #Procedure.usedReference.substance.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
