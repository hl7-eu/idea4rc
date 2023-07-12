//===================================================				
//  Logical Model				i4rc-pathologyStage.fsh
//===================================================				
Logical: PathologicalStage				
Id: PathologicalStage				
Title: "Pathological Stage"				
Description:  """PathologicalStage"""				
* episodeEventReference 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event Reference" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* pT 0..1 CodeableConcept "pT" """Specifies the pathological T"""				
* pN 0..1 CodeableConcept "pN" """Specifies the pathological N"""				
* pM 0..1 CodeableConcept "pM" """Describes whether capsular extension is present by histopathologic examination or not"""				
* extranodalExtension 0..1 CodeableConcept "Extranodal extension (ENE)" """Describes extent of extranodal extension. This number must be explicitly referred to in the pathological report, otherwise it is unknown"""				
* extranodalExtent 0..1 CodeableConcept "Extranodal Extent" """Describes whether a sentinel node procedure was performed or not. Sentinel lymph node biopsy is considered a diagnostic procedure, therefore, per se, the neck is not considered to have been treated if it does not lead to a neck dissection."""				
* sentinelNode 1..1 CodeableConcept "Sentinel node" """Describes whether a protocoled and standardized en block resection of lymphatic tissue is performed or not"""				
* neckDissection 0..1 CodeableConcept "Neck dissection" """Specifies the pathological M"""				
* pathologicalStaging 1..1 CodeableConcept "Pathological staging" """Specifies the pathological staging"""				
* ajccEdition 1..1 CodeableConcept "Ajcc edition" """Describe the edition of the AJCC used for staging"""				
* softTissue 0..1 boolean "Soft Tissue" """Describes if site of metastasic disease  is soft tissue"""				
* distantLymphNode 0..1 boolean "distant lymph node" """Describes if site of metastasic disease  is dystan lymph node"""				
* lung 0..1 boolean "lung" """Describes if site of metastasic disease  is lung"""				
* bone 0..1 boolean "bone" """Describes if site of metastasic disease  is bone"""				
* liver 0..1 boolean "liver" """Describes if site of metastasic disease  is liver"""				
* pleura 0..1 boolean "pleura" """Describes if site of metastasic disease  is pleura"""				
* peritoneum 0..1 boolean "peritoneum" """Describes if site of metastasic disease  is peritoneum"""				
* brain 0..1 boolean "brain" """Describes if site of metastasic disease  is brain"""				
* otherViscera 0..1 boolean "other viscera" """Describes if site of metastasic disease  is other viscera"""				
* unknown 0..1 boolean "unknown" """Describes if site of metastasic disease  is unknown"""				
//--- END				
//--- END				
//--- END				
				
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
				
* pT ^comment = """Tx; Tis; T0;T1;T2; T3; T4; T4a; T4b; unknownTx - 4282467
 Tis - 4195922
T0 - 4243213
T1 -  4052407
T2 - 4194614
 T3 - 4032012
 T4 - 4278513
 T4a - 4127612
 T4b - 4129920
Unknown - 4129922"""				
* pN ^comment = """Nx; N0;N1;N2;N2a;N2b;N2c;N3; N3a;N3b; unknownNx - 4195718
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
* pM ^comment = """M0; M1; unknownM0 -  4149726
M1 - 4205430
Unknown - 4129922"""				
* extranodalExtension ^comment = """ENE-; ENE+;  unknown.ENE- - 36769946
ENE+ - 36770618
Unknown - 4129922"""				
* extranodalExtent ^comment = """< 2mm;  >=2mm; unknownCustom"""				
* sentinelNode ^comment = """Yes; No; Unknown.Yes - 4188539
No -  4188540
Unknown - 4129922"""				
* neckDissection ^comment = """Yes; No; Unknown.Yes - 4188539
No -  4188540
Unknown - 4129922"""				
* pathologicalStaging ^comment = """0;I;II;III;IV;IVA;IVB;IVC;UnknownUnknown - 4129922"""				
* ajccEdition ^comment = """8th,9th,10th,11th"""				
* softTissue ^comment = """True; False"""				
* distantLymphNode ^comment = """True; False"""				
* lung ^comment = """True; False"""				
* bone ^comment = """True; False"""				
* liver ^comment = """True; False"""				
* pleura ^comment = """True; False"""				
* peritoneum ^comment = """True; False"""				
* brain ^comment = """True; False"""				
* otherViscera ^comment = """True; False"""				
* unknown ^comment = """True; False"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
