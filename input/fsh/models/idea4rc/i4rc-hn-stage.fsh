//===================================================				
//  Logical Model				i4rc-hn-stage.fsh
//===================================================				
Logical: HnStageI4rc				
Id: HnStage				
Title: "Head Neck Stage"				
Description:  """Head Neck Stage"""				
* episodeEvent 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event Reference" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* Ct 1..1 CodeableConcept "cT" """Specifies the clinical T"""				
* Cn 1..1 CodeableConcept "cN" """Specifies the clinical N"""				
* Cm 1..1 CodeableConcept "cM" """Specifies the clinical M"""				
* Pt 1..1 CodeableConcept "pT" """Specifies the clinical T"""				
* Pn 1..1 CodeableConcept "pN" """Specifies the clinical N"""				
* Pm 1..1 CodeableConcept "pM" """Specifies the clinical M"""				
* rEne 0..1 CodeableConcept "Radiological Extra-nodal extension (rEne)" """Describes the presence or absence of radiological signs of extracapsular extension, as defined in the AJCC 8th Ed"""				
* StagingClassification 1..1 CodeableConcept "Staging classification" """Specifies the clinical TNM"""				
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
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
				
* Ct ^comment = """Tx; Tis; T0;T1;T2; T3; T4; T4a; T4b;"""				
* Cn ^comment = """Nx; N0;N1;N2;N2a;N2b;N2c;N3; N3a;N3b;"""				
* Cm ^comment = """M0; M1;"""				
* Pt ^comment = """Tx; Tis; T0;T1;T2; T3; T4; T4a; T4b;"""				
* Pn ^comment = """Nx; N0;N1;N2;N2a;N2b;N2c;N3; N3a;N3b;"""				
* Pm ^comment = """M0; M1;"""				
* rEne ^comment = """ENE-; ENE+;"""				
* StagingClassification ^comment = """0;I;II;III;IV;IVA;IVB;IVC;"""				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
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
* episodeEvent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* Ct insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* Cn insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* Cm insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* Pt insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* Pn insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* Pm insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* rEne insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* StagingClassification insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.softTissue insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.distantLymphNode insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.lung insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.bone insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.liver insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.pleura insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.peritoneum insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.brain insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.otherViscera insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
* sites.unknown insert ObligationActorAndCode($actor-headneck, #SHALL:handle)				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
