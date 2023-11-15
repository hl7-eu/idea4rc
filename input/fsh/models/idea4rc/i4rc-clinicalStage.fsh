//===================================================				
//  Logical Model				i4rc-clinicalStage.fsh
//===================================================				
Logical: ClinicalStageI4rc				
Id: ClinicalStage				
Title: "Clinical Stage"				
Description:  """Clinical Stage"""				
* episodeEvent 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event Reference" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* type 1..1 CodeableConcept "Type of stage" """Type of stage"""				
* t 1..1 CodeableConcept "T" """Specifies the clinical T"""				
* n 1..1 CodeableConcept "N" """Specifies the clinical N"""				
* m 1..1 CodeableConcept "M" """Specifies the clinical M"""				
* rENE 1..1 CodeableConcept "Radiological Extra-nodal extension (rENE)" """Describes the presence or absence of radiological signs of extracapsular extension, as defined in the AJCC 8th Ed"""				
* localised 1..1 CodeableConcept "Localised" """Is localised"""				
* locoRegional 1..1 CodeableConcept "Loco-regional" """Loco-regional information"""				
* isMetastatic 0..1 CodeableConcept "Is metastatic" """Describes if the progression /recurrence or persistent disease is metastatic"""				
* ajccEdition 1..1 CodeableConcept "Ajcc edition" """Describe the edition of the AJCC used for staging"""				
* regionalNodalMetastases 1..1 boolean "Regional nodal metastases" """Describes if regional nodal mestastases happened"""				
* sites 0..1 BackboneElement "" """"""				
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
* stagingClassification 1..1 CodeableConcept "Staging classification" """Specifies the clinical TNM"""				
//--- END				
//--- END				
//--- END				
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
				
* type ^comment = """Clinical;pathologic; rClinical; rPathological; unknown
Clinical - 4241440
Pathologic - 4105323
Unknown - 4129922"""				
* t ^comment = """Tx; Tis; T0;T1;T2; T3; T4; T4a; T4b;
Tx - 4282467
 Tis - 4195922
T0 - 4243213
T1 -  4052407
T2 - 4194614
 T3 - 4032012
 T4 - 4278513
 T4a - 4127612
 T4b - 4129920
Unknown - 4129922"""				
* n ^comment = """Nx; N0;N1;N2;N2a;N2b;N2c;N3; N3a;N3b;
Nx - 4195718
N0 - 4266674
N1 - 4203608
N2 - 4263599
N2a - 4135247
N2b - 4119012
N2c - 4118508
N3 - 4239307
N3a - 4240556
N3b - 4240557
Unknown - 4129922"""				
* m ^comment = """M0; M1;
M0 -  4149726
M1 - 4205430
Unknown - 4129922"""				
* rENE ^comment = """ENE-; ENE+;
ENE- - 36769946
ENE+ - 36770618
Unknown - 4129922"""				
* localised ^comment = """Stage at diagnosis (before any treatments)        '? Localised 
     ? Yes/No; if yes specify No of  lesions'
        

Confined disease - 32942
Number of tumor nodules - 4228659

"""				
* locoRegional ^comment = """
        ? Loco-regional
     ? In transit metastasis 
     ? Multifocal (more than one lesion in the same organ or/anatomical compartment) '
        


Invasive Disease - 32943
Transit Metastasis with Clinical Confirmation - 36769249
Multifocal Tumor - 36769933

"""				
* isMetastatic ^comment = """Yes; No; Unknown
Yes - 4188539
No -  4188540
Unknown - 4129922"""				
* ajccEdition ^comment = """8th,9th,10th,11th
8th - 1634449
9th - 
10th - 
11th - """				
				
				
				
				
				
				
				
				
				
				
				
				
* stagingClassification ^comment = """0;I;II;III;IV;IVA;IVB;IVC;
0 - 4127500
I - 4121054
II - 4106768
III - 4121176
IV - 4123017
IVA - 4129915
IVB - 4130412
IVC - 4196439
Unknown - 4129922"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
// Obligations H&N				
// -------------------------------------------------------------------------------				
* episodeEvent insert ObligationActorAndCode($actor-headneck, #handle)				
* type insert ObligationActorAndCode($actor-headneck, #handle)				
* t insert ObligationActorAndCode($actor-headneck, #handle)				
* n insert ObligationActorAndCode($actor-headneck, #handle)				
* m insert ObligationActorAndCode($actor-headneck, #handle)				
* rENE insert ObligationActorAndCode($actor-headneck, #handle)				
				
				
* isMetastatic insert ObligationActorAndCode($actor-headneck, #handle)				
* ajccEdition insert ObligationActorAndCode($actor-headneck, #handle)				
				
* sites insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.softTissue insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.distantLymphNode insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.lung insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.bone insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.liver insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.pleura insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.peritoneum insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.brain insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.otherViscera insert ObligationActorAndCode($actor-headneck, #handle)				
* sites.unknown insert ObligationActorAndCode($actor-headneck, #handle)				
* stagingClassification insert ObligationActorAndCode($actor-headneck, #handle)				
//--- END				
//--- END				
//--- END				
				
				
				
				
// -------------------------------------------------------------------------------				
// Obligations Sarcoma				
// -------------------------------------------------------------------------------				
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* type insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
				
				
				
				
* localised insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* locoRegional insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* isMetastatic insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
				
* regionalNodalMetastases insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.softTissue insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.distantLymphNode insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.lung insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.bone insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.liver insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.pleura insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.peritoneum insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.brain insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.otherViscera insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
* sites.unknown insert ObligationActorAndCode($actor-sarcoma-i4rc, #handle)				
				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
