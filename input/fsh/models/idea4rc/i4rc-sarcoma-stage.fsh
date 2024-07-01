//===================================================				
//  Logical Model				i4rc-sarcoma-stage.fsh
//===================================================				
Logical: SarcomaStageI4rc				
Id: SarcomaStage				
Title: "Sarcoma Stage"				
Description:  """Sarcoma Stage"""				
* episodeEvent 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event Reference" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* localised 1..1 CodeableConcept "Localised" """Is localised"""				
* locoRegional 1..1 CodeableConcept "Loco-regional" """Loco-regional information"""				
* regionalNodalMetastases 1..1 boolean "Regional nodal metastases" """Describes if regional nodal mestastases happened"""				
* sites 0..1 BackboneElement "sites" """Describes if site of metastasic disease  is soft tissue"""				
* sites.softTissue 0..1 boolean "Soft tissue" """Describes if site of metastasic disease  is soft tissue"""				
* sites.distantLymphNode 0..1 boolean "distant lymph node" """Describes if site of metastasic disease  is dystan lymph node"""				
* sites.lung 0..1 boolean "lung" """Describes if site of metastasic disease  is lung"""				
* sites.bone 0..1 boolean "bone" """Describes if site of metastasic disease  is bone"""				
* sites.liver 0..1 boolean "liver" """Describes if site of metastasic disease  is liver"""				
* sites.pleura 0..1 boolean "pleura" """Describes if site of metastasic disease  is pleura"""				
* sites.peritoneum 0..1 boolean "peritoneum" """Describes if site of metastasic disease  is peritoneum"""				
* sites.brain 0..1 boolean "brain" """Describes if site of metastasic disease  is brain"""				
* sites.otherViscera 0..1 boolean "other viscera" """Describes if site of metastasic disease  is other viscera"""				
* sites.unknown 0..1 boolean "unknown" """Describes if site of metastasic disease  is unknown"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
				
* localised ^comment = """Stage at diagnosis (before any treatments)        ""? Localised 
     ? Yes/No; if yes specify No of  lesions""
        
"""				
* locoRegional ^comment = """
        ? Loco-regional
     ? In transit metastasis 
     ? Multifocal (more than one lesion in the same organ or/anatomical compartment) ""
        """				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* localised insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* locoRegional insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* regionalNodalMetastases insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.softTissue insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.distantLymphNode insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.lung insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.bone insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.liver insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.pleura insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.peritoneum insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.brain insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.otherViscera insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
* sites.unknown insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
