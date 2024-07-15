Instance: condition-id-10
InstanceOf: ConditionPrimaryCancerI4rc
Title: "Condition: Grade 2 tumor with several body sites and evidences"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Condition-primaryCancer-eu-i4rc"
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-dueTo"
* extension.valueCodeableConcept = $athena#4029715 "Radiation oncology AND/OR radiotherapy" //  $athena#37117814 "Radiation therapy induced change"
* code = $athena#4298030 "Verrucous squamous cell carcinoma"
* bodySite[0] = $athena#4102600 "Structure of posterior wall of hypopharynx"
* bodySite[+] = $athena#4001049 "Supraglottis structure"
* bodySite[+] = $athena#4027545 "Structure of vermilion border of lip"
* bodySite[+] = $athena#4088327 "Nasal cavity structure"
* bodySite[+] = $athena#4220236 "Structure of anterior wall of nasopharynx"
* bodySite[+] = $athena#4181419 "Structure of anterior floor of mouth"
* bodySite[+] = $athena#4173123 "Structure of vallecula of epiglottis"
* bodySite[+] = $athena#4298444 "Breast structure"
* bodySite[+] = $athena#4238088 "Testis structure"
* bodySite[+] = $athena#4122633 "Face and/or neck structure"
* bodySite[+] = $athena#4215634 "Colon structure"
* bodySite[+] = $athena#4213162 "Lung structure"
// * bodySite[+] = $athena#OTHER "other subsite"
* bodySite[+].text = "Other subsite"
* bodySite[+] = $athena#4244412 "Anterior abdominal wall structure"
* bodySite[+] = $athena#4165266 "Upper arm structure"
* subject = Reference(patient-id-17)
* onsetAge = 54 'a'
* stage.summary = $athena#1634752 "Grade 2 tumor"
// * evidence[0].code = $loinc#29308-4 "Diagnosis"
* evidence[+].detail = Reference(observation-id-21)
// * evidence[+].code = $athena#36768664 "Dimension of Tumor"
* evidence[+].detail = Reference(observation-id-31)
//* evidence[+].code = $athena#4227243 "Number of mitoses per 10 high power fields"
* evidence[+].detail = Reference(observation-id-32)
// * evidence[+].code = $athena#3043849 "Epstein Barr virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* evidence[+].detail = Reference(observation-id-33)
// * evidence[+].code = $athena#46236082 "Human papilloma virus 16 and 18 and 31+33+35+39+45+51+52+56+58+59+66+68 DNA [Interpretation] in Specimen"
* evidence[+].detail = Reference(observation-id-34)
// * evidence[+].code = $athena#3000965 "C reactive protein [Presence] in Serum or Plasma"
* evidence[+].detail = Reference(observation-id-35)