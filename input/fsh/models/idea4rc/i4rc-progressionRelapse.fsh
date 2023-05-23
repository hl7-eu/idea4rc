//===================================================				
//  Logical Model				i4rc-progressionRelapse.fsh
//===================================================				
Logical: ProgressionRelapseI4rc				
Id: ProgressionRelapse 				
Title: "Progression Relapse"				
Description:  """Subject of care 
Maturity Level: 0 Draft"""				
* Pleasespecify 0..1 string "Please Specify" """Describes if progression or recurrence or persistent disease occurred."""				
* definedat 0..1 boolean "Disease defined at hospital" """Whether or not the progression/recurrnce or persistent disease  was performed at the registering hospital or another hospital."""				
* date 0..1 date "Date" """Start date of progression/recurrence or persistent disease."""				
* local 0..* boolean "Local" """Describes if the progression /recurrence or persistent disease is local."""				
* regional 0..1 boolean "Regional" """Describes if the progression /recurrence or persistent disease is regional."""				
* metastatic 0..1 boolean "Metastatic" """Describes if the progression /recurrence or persistent disease is metastatic."""				
* msite 0..* BackboneElement "Site of metastasis " """Specifies the metastatis site."""				
* msite.softtissue 0..1 boolean "Site of metastasis soft tissue" """Describes if site of metastasic disease  is soft tissue."""				
* msite.distantlymphnodes 0..1 boolean "Site of metastasis distant lymph nodes" """Describes if site of metastasic disease  is distant lymph nodes."""				
* msite.lung 0..1 boolean "Site of metastasis lung" """Describes if site of metastasic disease is lung."""				
* msite.bone 0..1 boolean "Site of metastasis bone" """Describes if site of metastasic disease is bone"""				
* msite.liver 0..1 boolean "Site of metastasis liver" """Describes if site of metastasic disease is liver"""				
* msite.pleura 0..1 boolean "Site of metastasis pleura" """Describes if site of metastasic disease is pleura"""				
* msite.peritoneum 0..1 boolean "Site of metastasis peritoneum" """Describes if site of metastasic disease is peritoneum"""				
* msite.brain 0..1 boolean "Site of metastasis brain " """Describes if site of metastasic disease is brain"""				
* msite.otherViscera 0..1 boolean "Site of metastasis other viscera " """Describes if site of metastasic disease is other viscera"""				
* msite.unknown 0..1 boolean "Site of metastasis unknown" """Describes if site of metastasic disease is unknown."""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: I4RCProgressionRelapse2Fhir				
Id: fhir				
Title: "Idea4RC Subject model to FHIR R4 Map"				
Source: ProgressionRelapse 				
Target: "hl7.org/fhir/r4"				
				
* -> "TBD"				
* Pleasespecify -> "TBD"				
* definedat -> "TBD"				
* date -> "TBD"				
* local -> "TBD"				
* regional -> "TBD"				
* metastatic -> "TBD"				
* msite -> "TBD"				
* msite.softtissue -> "TBD"				
* msite.distantlymphnodes -> "TBD"				
* msite.lung -> "TBD"				
* msite.bone -> "TBD"				
* msite.liver -> "TBD"				
* msite.pleura -> "TBD"				
* msite.peritoneum -> "TBD"				
* msite.brain -> "TBD"				
* msite.otherViscera -> "TBD"				
* msite.unknown -> "TBD"				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
