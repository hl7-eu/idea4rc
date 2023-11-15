//===================================================	
//  Logical Model	i4rc-episodeEvent.fsh
//===================================================	
Logical: EpisodeEventI4rc	
Id: EpisodeEvent	
Title: "Episode Event"	
Description:  """Episode Event"""	
* cancerEpisode 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode "Cancer Episode Reference" """CancerEpisode element containing the data regarding the patient's cancer"""	
* eventType 1..1 CodeableConcept "Event type" """Type of event registered"""	
* definedAt 0..1 CodeableConcept "Defined At" """Whether or not the progression/recurrnce or persistent disease  was performed at the registering hospital or another hospital."""	
* dateOfEpisode 1..1 date "Date of episode" """Start date of progression/recurrence or persistent disease"""	
//--- END	
//--- END	
//--- END	
//--- END







	
//--------------------------------------------------------------------------------	
//  Comment	
//--------------------------------------------------------------------------------

* eventType ^comment = """Baseline; Progression; Recurrence; Persistent disease
First episode -  4113134
Progression - 4168352
Recurrence - 4097297
Stable disease - 32948"""	
* definedAt ^comment = """the hospital; a different hospital
Custom"""

//--- END	
//--- END	
//--- END	
//--- END

// -------------------------------------------------------------------------------	
// Obligations H&N	
// -------------------------------------------------------------------------------	
* cancerEpisode insert ObligationActorAndCode($actor-headneck, #handle)	
* eventType insert ObligationActorAndCode($actor-headneck, #handle)	
* definedAt insert ObligationActorAndCode($actor-headneck, #handle)	
* dateOfEpisode insert ObligationActorAndCode($actor-headneck, #handle)	
//--- END	
//--- END	
//--- END	
//--- END



	
// -------------------------------------------------------------------------------	
// Obligations Sarcoma	
// -------------------------------------------------------------------------------	
* cancerEpisode insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* eventType insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* definedAt insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
* dateOfEpisode insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)	
//--- END	
//--- END	
//--- END	
//--- END	
//--- END











































































































































































































































	
