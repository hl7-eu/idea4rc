//===================================================				
//  Logical Model				i4rc-otherTreatment.fsh
//===================================================				
Logical: OtherTreatmentI4rc				
Id: OtherTreatment				
Title: "Other Local Treatment"				
Description:  """Other Local Treatment"""				
* episodeEvent 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event reference" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* type 1..1 CodeableConcept "Type of local treatment" """Which type of local treatment is applied"""				
* startDate 1..1 date "Start date" """Date when local treatment started"""				
* endDate 1..1 date "End  date" """Date when local treatment ended"""				
* treatmentResponse 0..1 CodeableConcept "Treatment response" """Measures how well a cancer patient responds to treatment. RECIST criteria should not be applied. The definition of Complete response; Partial response; Stable disease; Progression, should be based on the clinical judgement based on imaging.  Only when setting=neoadiuvant or  palliative"""				
//--- END				
//--- END				
//--- END				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
* type ^comment = """Regional Deep Hyperthemia; Other;
Hypertermia treatment - 4137449
Other - 9177"""				
				
				
* treatmentResponse ^comment = """Complete response; Partial response; Stable disease; Progression; Unknown.
Complete Remission - 32946
Partial Remission - 32947
Stable Disease - 32948
Progression - 32949

"""				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
* episodeEvent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
				
* startDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* endDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* treatmentResponse insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* type insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* startDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* endDate insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* treatmentResponse insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
