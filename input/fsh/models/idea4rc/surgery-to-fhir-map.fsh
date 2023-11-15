// -------------------------------------------------------------------------------			
//  Concept Model. File: 			surgery-to-fhir-map.fsh
// -------------------------------------------------------------------------------			
Instance: surgery2FHIR			
InstanceOf: ConceptMap			
Usage: #definition			
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"			
* name = "surgery2FHIR"			
* title = "Surgery Model to this guide Map"			
* status = #draft			
* experimental = true			
* description = "Surgery Model to this guide Map"			
* purpose = "It shows how the Surgery model is mapped into this guide"			
* sourceUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Surgery"			
* targetUri = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-surgery-eu-i4rc"			
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Surgery"			
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Procedure-surgery-eu-i4rc"		
		
* group[=].element[+].code = #Surgery.episodeEventReference			
* group[=].element[=].display = "Episode Event reference"			
* group[=].element[=].target.code = #Procedure.reasonReference			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto		
		
* group[=].element[+].code = #Surgery.surgery			
* group[=].element[=].display = "Surgery"			
* group[=].element[=].target.code = #Procedure.extension:ProcedureCategoryR5			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be analyzed: add a slice to the category.coding or derive this from a combination of elements or use other cathegories (R5 extension)"			
* group[=].element[+].code = #Surgery.dateOfSurgery			
* group[=].element[=].display = "Date of surgery"			
* group[=].element[=].target.code = #Procedure.�performedDateTime			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equal		
		
* group[=].element[+].code = #Surgery.surgeryIntention			
* group[=].element[=].display = "Surgery intention"			
* group[=].element[=].target.code = #Procedure.code			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be analized: add a slice to code or consider to define an extension for this (or cathegories (R5 extension)) ?"			
* group[=].element[+].code = #Surgery.typeOfSurgicalApproachOnTumour			
* group[=].element[=].display = "Type of surgical approach on Tumour"			
* group[=].element[=].target.code = #Procedure.extension:procedure-approachBodyStructure			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "to be analized: the traget is a bodyStructure.. Maybe too much for justconveying a code ?"			
* group[=].element[+].code = #Surgery.marginsAfterSurgery			
* group[=].element[=].display = "Margins after surgery"			
* group[=].element[=].target.code = #Procedure.outcome			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto		
		
* group[=].element[+].code = #Surgery.reconstruction			
* group[=].element[=].display = "Reconstruction"			
* group[=].element[=].target.code = #Procedure.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "TO BE ANALIZED"			
* group[=].element[+].code = #Surgery.neckSurgery			
* group[=].element[=].display = "Neck surgery"			
* group[=].element[=].target.code = #Procedure.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "a surgical proceudre exists with bodySite = neck"			
* group[=].element[+].code = #Surgery.dateOfNeckSurgey			
* group[=].element[=].display = "Date of Neck surgey"			
* group[=].element[=].target.code = #Procedure.�performedDateTime			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equal			
* group[=].element[=].target.comment = "how this differs fomr the dateOfSurgery ?"			
* group[=].element[+].code = #Surgery.lateralityOfTheDissection			
* group[=].element[=].display = "Laterality of the dissection"			
* group[=].element[=].target.code = #Procedure.bodySite.extension:laterality			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto		
		
* group[=].element[+].code = #Surgery.surgeryOnM			
* group[=].element[=].display = "Surgery on M"			
* group[=].element[=].target.code = #Procedure.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "TO BE ANALYZED:
a surgical proceudre exists with resonReference the metstatic condition
or a surgical proceudre exists with  reasonCode = metastatis"			
* group[=].element[+].code = #Surgery.dateOfSurgeryOnM			
* group[=].element[=].display = "Date of surgery on M"			
* group[=].element[=].target.code = #Procedure.			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[=].target.comment = "how this differs fomr the dateOfSurgery ?"			
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis			
* group[=].element[=].display = "Site of surgery on metastasis"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.softTissue			
* group[=].element[=].display = "Site of surgery on metastasis_soft tissue"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.distantLymphNodes			
* group[=].element[=].display = "Site of surgery on metastasis_distant lymph nodes"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.lung			
* group[=].element[=].display = "Site of surgery on metastasis_lung"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.bone			
* group[=].element[=].display = "Site of surgery on metastasis_bone"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.liver			
* group[=].element[=].display = "Site of surgery on metastasis_liver"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.pleura			
* group[=].element[=].display = "Site of surgery on metastasis_pleura"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.peritoneum			
* group[=].element[=].display = "Site of surgery on metastasis_peritoneum"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.brain			
* group[=].element[=].display = "Site of surgery on metastasis_brain"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.otherViscera			
* group[=].element[=].display = "Site of surgery on metastasis_other viscera"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.siteOfSurgeryOnMetastasis.unknown			
* group[=].element[=].display = "Site of surgery on metastasis_unknown"			
* group[=].element[=].target.code = #Procedure.bodySite			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
* group[=].element[+].code = #Surgery.surgicalComplicationsClavienDindoClassification			
* group[=].element[=].display = "Surgical complications (Clavien-Dindo Classification)"			
* group[=].element[=].target.code = #Procedure.complication			
* group[=].element[=].target.display = ""			
* group[=].element[=].target.equivalence = #equivalent		
		
//---END			
//---END			
//---END		
		
