//===================================================	
//  Logical Model	i4rc-systemicTreatment.fsh
//===================================================	
Logical: SystemicTreatmentI4rc	
Id: SystemicTreatment	
Title: "Systemic Treatment"	
Description:  """Systemic Treatment"""	
* episodeEventReference 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event reference" """EpisodeEvent element containing the data regarding the patient's cancer"""	
* typeOfSystemicTreatment 1..1 CodeableConcept "type of systemic treatment" """Select the type of systemic treatment administered. It is possible to directly select the single treatment as appropriate."""	
* intent 1..1 CodeableConcept "Intent" """Clarifies the reasons why systemic therapy is administered
? Curative chemotherapy is chemotherapy administered with the goal of achieving a complete remission and preventing the recurrence of cancer. 
? Palliative chemotherapy refers to any chemotherapy administration that is not curative but administered simply to decrease tumor load and increase life expectancy. It has been defined also as ??treatment in circumstances where the impact of intervention is insufficient to result in major survival advantage, but does affect improvement in terms of tumor?related symptoms??
"""	
* setting 1..1 CodeableConcept "Setting" """clarifies the context / how the therapy was administered alone or in conjunction with other treatments
? Neoadjuvant: treatment given as a first step to shrink a tumor before the main treatment, which is usually surgery, is given. Examples of neoadjuvant therapy include chemotherapy, radiation therapy, and hormone therapy. It is a type of induction therapy.
? Adjuvant: additional cancer treatment given after the primary treatment to lower the risk that the cancer will come back. Adjuvant therapy may include chemotherapy, radiation therapy, hormone therapy, targeted therapy, or biological therapy.
? Concomitant/concurrent: A treatment that is given at the same time as another (es. Chemotherapy + radiotherapy).
"""	
* computedTomographyInfo 0..1 CodeableConcept "Computed tomography info" """Information for computed tomography"""	
* startDateSystemicTreatment 1..1 date "Start date systemic treatment" """Specifies when systemic treatment begins"""	
* endDateSystemicTreatment 1..1 date "End date systemic treatment" """Specifies when systemic treatment ends"""	
* numberOfCyclesAdministrations 0..1 decimal "Number of cycles/ administrations" """clarifies how many times the treatment was administered. A cycle of treatment is a period of treatment followed by a period of rest (no treatment). For example, treatment given for one week followed by three weeks of rest is one cycle of treatment. A cycle can be repeated multiple times."""	
* regimen 0..1 BackboneElement "Regimen" """Regimen"""	
* regimen.drugs1 1..1 CodeableConcept "Drugs 1" """Drugs 1"""	
* regimen.drugs2 1..1 CodeableConcept "Drugs 2" """Drugs 2"""	
* regimen.drugs3 1..1 CodeableConcept "Drugs 3" """Drugs 3"""	
* regimen.startDateRegimenChanged 1..1 date "Start date regimen changed" """specifies when the new systemic treatment begins, if a combination please specify the start of the first drug"""	
* regimen.endDateRegimenChanged 1..1 date "End date regimen changed" """specifies when the new  systemic treatment ends,if a combination please specify the end of the last drug"""	
* reasonForEndOfTreatment 1..1 CodeableConcept "Reason for end of treatment" """Clarifies the reasons why the treatment ended or was interrupted"""	
* treatmentResponse 1..1 CodeableConcept "Treatment response (based on imaging alone; no recist or other criteria)" """Measures how well a cancer patient responds to treatment. RECIST criteria should not be applied. The definition of Complete response; Partial response; Stable disease; Progression, should be based on the clinical judgement based on imaging.  Only when setting=neoadiuvant or  palliative"""	
//--- END	
//--- END	
//--- END





	
//--------------------------------------------------------------------------------	
//  Logical Model - Comments	
//--------------------------------------------------------------------------------

* typeOfSystemicTreatment ^comment = """Chemotherapy; Immunotherapy; Target therapy;  Unknown

Chemotherapy - 4273629
Immunotherapy - 40310107
Target therapy -  40488979
Unknown - 4129922
"""	
* intent ^comment = """Palliative; Curative; Unknwon
Palliative - 4179711
Curative - 
Unknown - 4129922"""	
* setting ^comment = """Neo-adjuvant; Concomitant; Adjuvant; Systemic tretament alone;  Unknown;
Neo-adjuvant - 44808409
Concomitant - 
 Adjuvant - 44804498
Systemic tretament alone - 
Unknown - 4129922"""	
* computedTomographyInfo ^comment = """Pre-operative; Post-operative; Intra-operative (hypertermic intraperiotoneal chemotherapy HIPEC ); therapeutic (without surgery)
Preoperative - 4119031
Postoperative period - 4118656
Hyperthermic intraperitoneal chemotherapy - 3184898
Therapeutic - 4133895"""



	
* regimen.drugs1 ^comment = """ATC list
Athena vocabulary 
ATC"""	
* regimen.drugs2 ^comment = """ATC list
Athena vocabulary 
ATC"""	
* regimen.drugs3 ^comment = """ATC list
Athena vocabulary 
ATC"""

	
* reasonForEndOfTreatment ^comment = """Completion; Toxicity; Comorbidity; Patient  intolerance; Patients decision; Death;  Unknown.
Completion - 4058777 
Toxicity - 438028
Comorbidity - 4162706 
Patient  intolerance -  4105297
Patients decision - 
Death - 4306655
Unknown - 4129922"""	
* treatmentResponse ^comment = """Complete response; Partial response; Stable disease; Progression; Unknown.
Complete response - 4163135
Partial response -  4161302
Stable disease - 4241442
Progression - 4168352
Unknown - 4129922"""	
//--- END	
//--- END	
//--- END



// -------------------------------------------------------------------------------	
// Obligations H&N	
// -------------------------------------------------------------------------------	
* episodeEventReference insert ObligationActorAndCode($actor-headneck, #handle)	
* typeOfSystemicTreatment insert ObligationActorAndCode($actor-headneck, #handle)	
* intent insert ObligationActorAndCode($actor-headneck, #handle)	
* setting insert ObligationActorAndCode($actor-headneck, #handle)

* startDateSystemicTreatment insert ObligationActorAndCode($actor-headneck, #handle)	
* endDateSystemicTreatment insert ObligationActorAndCode($actor-headneck, #handle)	
* numberOfCyclesAdministrations insert ObligationActorAndCode($actor-headneck, #handle)	
* regimen insert ObligationActorAndCode($actor-headneck, #handle)	
* regimen.drugs1 insert ObligationActorAndCode($actor-headneck, #handle)	
* regimen.drugs2 insert ObligationActorAndCode($actor-headneck, #handle)	
* regimen.drugs3 insert ObligationActorAndCode($actor-headneck, #handle)	
* regimen.startDateRegimenChanged insert ObligationActorAndCode($actor-headneck, #handle)	
* regimen.endDateRegimenChanged insert ObligationActorAndCode($actor-headneck, #handle)	
* reasonForEndOfTreatment insert ObligationActorAndCode($actor-headneck, #handle)	
* treatmentResponse insert ObligationActorAndCode($actor-headneck, #handle)	
//--- END	
//--- END	
//--- END	
//--- END	
//--- END	
//--- END

// -------------------------------------------------------------------------------	
// Obligations Sarcoma	
// -------------------------------------------------------------------------------	
* episodeEventReference insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* typeOfSystemicTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)

	
* computedTomographyInfo insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* startDateSystemicTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* endDateSystemicTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* numberOfCyclesAdministrations insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* regimen insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* regimen.drugs1 insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* regimen.drugs2 insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* regimen.drugs3 insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)

	
* reasonForEndOfTreatment insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* treatmentResponse insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
//--- END	
//--- END	
//--- END	
//--- END	
//--- END	
//--- END





































































	
