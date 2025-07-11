Profile: ObservationSimpleResult
Parent: Observation
Id: observation-testResult-eu-i4rc
Title: "Observation: test results"
Description: "This profile constrains the Observation resource to represent test results for the purpose of the IDEA4RC project."
* obeys obs-valueOftype-quantity 
* obeys obs-valueOftype-codeable
* obeys obs-valueMemberof-mitotic
* obeys obs-valueMemberof-positiveNegativeNoTest
* code 1..1
* code from VsSimpleResultI4rc
* insert SubjectRules
/* * effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing." */
* value[x] 1..
* valueCodeableConcept 0..
* valueCodeableConcept from CodedTestResultsVS (example)
/*   * insert AdditionalBinding (required, VsYesNoUnkAthenaI4rc,Yes-No-Unkwnon)
  * insert AdditionalBinding (required, VsPositiveNegativeNTAthenaI4rc, Positive-Negative-Not Tested)
  * insert AdditionalBinding (extensible, VsPositiveNegativeNTSnomedI4rc, Positive-Negative-Not Tested) */
* valueQuantity 0..
* partOf only Reference (MedicationAdministration or MedicationDispense or MedicationStatement or ProcedureSurgeryI4rc or Immunization or ImagingStudy)

Invariant: obs-valueOftype-quantity
Description: "If the type is 'Dimension of tumor' or 'Number of mitoses per 10 high power fields' or 'Invasion into the fascia then the value is a Quantity'"
Severity:    #warning
Expression:  "((code = '36768664') or (code = '4227243') or  or (code = '36768749')) implies value.ofType(Quantity).exists()"

Invariant: obs-valueOftype-codeable
Description: "If the type is 'Mitotic index' or 'Epstein Barr virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection' or 'Human papilloma virus 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA [Interpretation] in Specimen' or 'C reactive protein [Presence] in Serum or Plasma' then the value is a CodeableConcept"
Severity:    #warning
Expression:  "((code = '4099595') or (code = '3043849') or (code = '46236082') or (code = 3000965) )  implies value.ofType(CodeableConcept).exists()"

Invariant: obs-valueMemberof-mitotic
Description: "If the type is Mitotic index than the value is in Mitotic Index: Athena"
Severity:    #warning
Expression:  "(code = '4099595')  implies value.memberOf(http://hl7.eu/fhir/ig/idea4rc/ValueSet/mitotic-index-athena-vs).exists()"

Invariant: obs-valueMemberof-positiveNegativeNoTest
Description: "If the type is 'Epstein Barr virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection' or 'Human papilloma virus 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA [Interpretation] in Specimen' or 'C reactive protein [Presence] in Serum or Plasma' then the value is in PositiveNegativeNoTestVS "
Severity:    #warning
Expression:  "( (code = '3043849') or (code = '46236082') or (code = '3000965') )  implies value.memberOf(http://hl7.eu/fhir/ig/idea4rc/ValueSet/positive-negative-notest-athena-vs).exists()"