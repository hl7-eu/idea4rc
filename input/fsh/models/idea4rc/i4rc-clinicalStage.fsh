//===================================================				
//  Logical Model				i4rc-clinicalStage.fsh
//===================================================				
Logical: ClinicalStage				
Id: ClinicalStage				
Title: "Clinical Stage"				
Description:  """Clinical Stage"""				
* episodeEvent 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event" """EpisodeEvent element containing the data regarding the patient's cancer"""				
* cT 1..1 CodeableConcept "cT" """Specifies the clinical T"""				
* cN 1..1 CodeableConcept "cN" """Specifies the clinical N"""				
* radiologicalExtraNodalExtension 1..1 CodeableConcept "Radiological Extra-nodal extension (rENE)" """Describes the presence or absence of radiological signs of extracapsular extension, as defined in the AJCC 8th Ed"""				
* cM 1..1 CodeableConcept "cM" """Specifies the clinical M"""				
* clinicalStaging 1..1 CodeableConcept "Clinical staging" """Specifies the clinical TNM"""				
* ajccEdition 1..1 CodeableConcept "Ajcc edition" """Describe the edition of the AJCC used for staging"""				
* softTissue 0..1 boolean "Soft tissue" """Describes if site of metastasic disease  is soft tissue"""				
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
//--- END				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Comment				
//--------------------------------------------------------------------------------				
				
* cT ^comment = """Tx; Tis; T0;T1;T2; T3; T4; T4a; T4b;Tx - 4282467
 Tis - 4195922
T0 - 4243213
T1 -  4052407
T2 - 4194614
 T3 - 4032012
 T4 - 4278513
 T4a - 4127612
 T4b - 4129920"""				
* cN ^comment = """Nx; N0;N1;N2;N2a;N2b;N2c;N3; N3a;N3b;Nx - 4195718
N0 - 4266674
N1 - 4203608
N2 - 4263599
N2a - 4135247
N2b - 4119012
N2c - 4118508
N3 - 4239307
N3a - 4240556
N3b - 4240557"""				
* radiologicalExtraNodalExtension ^comment = """ENE-; ENE+;ENE- - 36769946
ENE+ - 36770618"""				
* cM ^comment = """M0; M1;M0 -  4149726
M1 - 4205430"""				
* clinicalStaging ^comment = """0;I;II;III;IV;IVA;IVB;IVC;0 - 4127500
I - 4121054
II - 4106768
III - 4121176
IV - 4123017
IVA - 4129915
IVB - 4130412
IVC - 4196439"""				
* ajccEdition ^comment = """8th,9th,10th,11th8th - 1634449
9th - 
10th - 
11th - """				
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
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
