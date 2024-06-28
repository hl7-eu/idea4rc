//===================================================	
//  Logical Model	i4rc-TreatmentResponse.fsh
//===================================================	
Logical: TreatmentResponseI4rc	
Id: TreatmentResponse	
Title: "Treatment Response"	
Description:  """Treatment Response"""	
* episodeEvent 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event Reference" """EpisodeEvent element containing the data regarding the patient's cancer"""	
* treatmentResponse 1..1 CodeableConcept "Treatment response (based on imaging alone; no recist or other criteria)" """It refers to the response to the entire therapy administered to the patient. It measures how well a cancer patient responds to treatment. RECIST criteria should not be applied. The definition of Complete response; Partial response; Stable disease; Progression, should be based on the clinical judgement based on imaging."""	
* treatmentResponseDefinedDone 1..1 CodeableConcept "Treatment response defined/done" """refers to whether overall treatment reponse was assessed at the registering hospital or another."""	
//--- END	
//--- END	
//--- END	
//--- END





//--------------------------------------------------------------------------------	
//  Logical Model - Comments	
//--------------------------------------------------------------------------------

* treatmentResponse ^comment = """Complete response; partial response; stable disease; progression; unknown
Complete Remission - 32946
Partial Remission - 32947
Stable Disease - 32948
Progression - 32949

"""	
* treatmentResponseDefinedDone ^comment = """At the hospital; At a different hospital
Custom"""	
//--- END	
//--- END	
//--- END	
//--- END





// -------------------------------------------------------------------------------	
// Obligations H&N	
// -------------------------------------------------------------------------------	
* episodeEvent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)	
* treatmentResponse insert ObligationActorAndCode($actor-headneck, #SHALL:handle)	
* treatmentResponseDefinedDone insert ObligationActorAndCode($actor-headneck, #SHALL:handle)	
//--- END	
//--- END	
//--- END

// -------------------------------------------------------------------------------	
// Obligations Sarcoma	
// -------------------------------------------------------------------------------	
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* treatmentResponse insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* treatmentResponseDefinedDone insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
//--- END	
//--- END	
//--- END	
