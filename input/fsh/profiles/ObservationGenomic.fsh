Profile: ObservationGenomicVariant
Parent: Variant
Id: mcode-genomic-variant
Title:      "Genomic Variant Profile"
Description:    """Details about a set of changes in the tested sample compared to a reference sequence. The term variant can be used to describe an alteration that may be benign, pathogenic, or of unknown significance. The term variant is increasingly being used in place of the term mutation. Variants can be computed relative to reference sequence assembly from which it was identified.
This Profiles is copied from the mcode-genomic-variant"""
// * ^extension[FMM].valueInteger = 1
* insert NotUsed(referenceRange)
* insert NotUsed(hasMember)
// * subject only Reference(CancerPatient)
* subject only Reference(PatientI4rc)
// * specimen only Reference(HumanSpecimen)
* value[x] ^slicing.rules = #closed

// 
// * category[labCategory].coding 1..1  // To prevent the message "The repeating element has a pattern. The pattern will apply to all the repeats (this has not been clear to all users)"
// * category[labCategory] = ObsCat#laboratory

* component[gene-studied] and component[gene-studied].code and component[gene-studied].value[x] MS
* component[variation-code] and component[variation-code].code and component[variation-code].value[x] MS
* component[genomic-hgvs] and component[genomic-hgvs].code and component[genomic-hgvs].value[x] MS
* component[coding-change-type] and component[coding-change-type].code and component[coding-change-type].value[x] MS
* component[molecular-consequence] and component[molecular-consequence].code and component[molecular-consequence].value[x] MS
* component[genomic-source-class] and component[genomic-source-class].code and component[genomic-source-class].value[x] MS
* component[protein-hgvs] and component[protein-hgvs].code and component[protein-hgvs].value[x] MS
* component[amino-acid-change-type] and component[amino-acid-change-type].code and component[amino-acid-change-type].value[x] MS
* component[copy-number] and component[copy-number].code and component[copy-number].value[x] MS
* component[sample-allelic-frequency] and component[sample-allelic-frequency].code and component[sample-allelic-frequency].value[x] MS
* component[allelic-state] and component[allelic-state].code and component[allelic-state].value[x] MS
* component[cytogenomic-nomenclature] and component[cytogenomic-nomenclature].code and component[cytogenomic-nomenclature].value[x] MS
* component[cytogenetic-location] and component[cytogenetic-location].code and component[cytogenetic-location].value[x] MS
* status and category and code and subject and effective[x] and effectiveDateTime and value[x] and dataAbsentReason and method and specimen and component MS