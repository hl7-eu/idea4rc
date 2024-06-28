//===================================================	
//  Logical Model	i4rc-PathologicalReportInfo.fsh
//===================================================	
Logical: PathologicalReportInfoI4rc	
Id: PathologicalReportInfo	
Title: "Pathological Report Info"	
Description:  """Pathological Report Info"""	
* episodeEvent 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event Reference" """EpisodeEvent element containing the data regarding the patient's cancer"""	
* degreeOfCytologicAtypia 0..1 CodeableConcept "Degree of cytologic Atypia" """Defines the degree of cytologic atypia"""	
* patternOfGrowth 0..1 BackboneElement "Pattern of Growth" """Pattern of Growth"""	
* mitoticActivity 0..1 Quantity "Mitotic Activity" """Mitotic Activity"""	
* infiltrationOfSurroundingMyometrium 0..1 BackboneElement "Infiltration of surrounding myometrium" """Infiltration of surrounding myometrium"""	
* typeOfNecrosis 0..1 CodeableConcept "Type of necrosis" """Type of necrosis"""	
* expressionOfErPr 0..1 BackboneElement "Expression of ER/PR" """Expression of ER/PR"""	
* vascularIntrusionOrInvasion 0..1 boolean "vascular intrusion or invasion" """vascular intrusion or invasion"""	
* p16AndP53Expression 0..1 BackboneElement "p16 and p53 expression" """p16 and p53 expression"""	
//--- END	
//--- END	
//--- END



//--------------------------------------------------------------------------------	
//  Logical Model - Comments	
//--------------------------------------------------------------------------------

* degreeOfCytologicAtypia ^comment = """mild, moderate, severe
Mild cytologic atypia - 4201008
Moderate cytologic atypia - 4086011
Severe cytologic atypia - 4203317"""



* typeOfNecrosis ^comment = """coagulative necrosis, caseous necrosis, liquefactive necrosis, fat necrosis, fibrinoid necrosis, and gangrenous necrosis
Coagulative necrosis - 4138252
Caseous necrosis - 4144966
Liquefactive necrosis - 4219751
Fat necrosis - 4195121
Fibrinoid necrosis - 4179476
Gangrenous necrosis - 
"""

* vascularIntrusionOrInvasion ^comment = """True;False
Vascular invasion by tumor present - 4163142"""

//--- END	
//--- END	
//--- END

	
// -------------------------------------------------------------------------------	
// Obligations H&N	
// -------------------------------------------------------------------------------









//--- END	
//--- END	
//--- END



// -------------------------------------------------------------------------------	
// Obligations Sarcoma	
// -------------------------------------------------------------------------------	
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* degreeOfCytologicAtypia insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* patternOfGrowth insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* mitoticActivity insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* infiltrationOfSurroundingMyometrium insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* typeOfNecrosis insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* expressionOfErPr insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* vascularIntrusionOrInvasion insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
* p16AndP53Expression insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)	
//--- END	
//--- END	
//--- END	
