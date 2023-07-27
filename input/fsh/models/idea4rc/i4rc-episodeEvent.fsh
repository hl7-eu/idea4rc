//===================================================		
//  Logical Model		i4rc-episodeEvent.fsh
//===================================================		
Logical: EpisodeEvent		
Id: EpisodeEvent		
Title: "Episode Event"		
Description:  """Episode Event"""		
* cancerEpisode 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode "Cancer Episode Reference" """CancerEpisode element containing the data regarding the patient's cancer"""		
* eventType 1..1 CodeableConcept "Event type" """Type of event registered"""		
* definedAt 0..1 CodeableConcept "Defined At" """Whether or not the progression/recurrnce or persistent disease  was performed at the registering hospital or another hospital."""		
* dateOfEpisode 0..1 date "Date of episode" """Start date of progression/recurrence or persistent disease"""		
* isLocal 0..1 CodeableConcept "Is local" """Describes if the progression /recurrence or persistent disease is local"""		
* isRegional 0..1 CodeableConcept "Is regional" """Describes if the progression /recurrence or persistent disease is regional"""		
* isMetastatic 0..1 CodeableConcept "Is metastatic" """Describes if the progression /recurrence or persistent disease is metastatic"""		
* siteOfMetastasis 0..1 BackboneElement "Site of metastasis" """Site of metastasis"""		
* siteOfMetastasis.softTissue 0..1 boolean "Site of metastasis_soft tissue" """Describes if site of metastasic disease  is soft tissue"""		
* siteOfMetastasis.distantLymphNodes 0..1 boolean "Site of metastasis_distant lymph nodes" """Describes if site of metastasic disease  is dystan lymph node"""		
* siteOfMetastasis.lung 0..1 boolean "Site of metastasis_lung" """Describes if site of metastasic disease  is lung"""		
* siteOfMetastasis.bone 0..1 boolean "Site of metastasis_bone" """Describes if site of metastasic disease  is bone"""		
* siteOfMetastasis.liver 0..1 boolean "Site of metastasis_liver" """Describes if site of metastasic disease  is liver"""		
* siteOfMetastasis.pleura 0..1 boolean "Site of metastasis_pleura" """Describes if site of metastasic disease  is pleura"""		
* siteOfMetastasis.peritoneum 0..1 boolean "Site of metastasis_peritoneum" """Describes if site of metastasic disease  is peritoneum"""		
* siteOfMetastasis.brain 0..1 boolean "Site of  metastasis_brain" """Describes if site of metastasic disease  is brain"""		
* siteOfMetastasis.otherViscera 0..1 boolean "Site of  metastasis_other viscera" """Describes if site of metastasic disease  is other viscera"""		
* siteOfMetastasis.unknown 0..1 boolean "Site of  metastasis_unknown" """Describes if site of metastasic disease  is unknown"""		
//--- END		
//--- END		
//--- END		
		
		
		
		
//--------------------------------------------------------------------------------		
//  Comment		
//--------------------------------------------------------------------------------		
* cancerEpisode ^comment = """CancerEpisode"""		
* eventType ^comment = """Baseline; Progression; Recurrence; Persistent diseaseBaseline -  4190366
Progression - 4168352
Recurrence - 4097297
Persistent disease - """		
* definedAt ^comment = """the hospital; a different hospitalCustom"""		
* dateOfEpisode ^comment = """YYYY-MM-DD"""		
* isLocal ^comment = """Yes; No; UnknownYes - 4188539
No -  4188540
Unknown - 4129922"""		
* isRegional ^comment = """Yes; No; UnknownYes - 4188539
No -  4188540
Unknown - 4129922"""		
* isMetastatic ^comment = """Yes; No; UnknownYes - 4188539
No -  4188540
Unknown - 4129922"""		
		
* siteOfMetastasis.softTissue ^comment = """True; False"""		
* siteOfMetastasis.distantLymphNodes ^comment = """True; False"""		
* siteOfMetastasis.lung ^comment = """True; False"""		
* siteOfMetastasis.bone ^comment = """True; False"""		
* siteOfMetastasis.liver ^comment = """True; False"""		
* siteOfMetastasis.pleura ^comment = """True; False"""		
* siteOfMetastasis.peritoneum ^comment = """True; False"""		
* siteOfMetastasis.brain ^comment = """True; False"""		
* siteOfMetastasis.otherViscera ^comment = """True; False"""		
* siteOfMetastasis.unknown ^comment = """True; False"""		
//--- END		
//--- END		
//--- END		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
