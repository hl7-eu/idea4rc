Logical: DrugsForTreatmentsI4RC
Id: DrugsForTreatments
Title: "Drugs for Treatments"
Description: """Drugs for Treatments
Maturity Level: 0 Draft"""
* systemicTreatmentReference 1..* SystemicTreatment "SystemicTreatment reference (M)" """Systemic treatment reference that will apply the drug to the patient.  
"""
* systemicTreatmentReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* systemicTreatmentReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* RegionalDeepHyperthemiaReference 1..* RegionalDeepHyperthemia "RegionalDeepHyperthemia (M)" """RegionalDeepHyperthemia reference that will apply the drug to the patient. 
"""
* RegionalDeepHyperthemiaReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* RegionalDeepHyperthemiaReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* isolatedLimbPerfusionReference 1..* IsolatedLimbPerfusion "IsolatedLimbPerfusion reference (M)" """Isolated Limb Perfusion reference that will apply the drug to the patient. 
"""
* isolatedLimbPerfusionReference insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* isolatedLimbPerfusionReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* drug 1..* CodeableConcept "Drug (M)" """A list of drugs given to a patient for a specific treatment. 
"""
* drug insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* drug insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* drug ^comment = """RxNorm Drugs from Athena (ATC)

DOMAIN = Drug
Standard concept
Vocabulary RxNorm OR RxNorm Extension

Any value from
https://athena.ohdsi.org/search-terms/terms?domain=Drug&standardConcept=Standard&vocabulary=RxNorm&vocabulary=RxNorm+Extension&page=1&pageSize=15&query="""
