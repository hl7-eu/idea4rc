// -------------------------------------------------------------------------------					
//  Concept Model. File: 					surgery-to-fhir-map.fsh
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
					
* group[=].element[+].code = #Surgery.episodeEvent					
* group[=].element[=].display = "Episode Event reference"					
* group[=].element[=].target.code = #Procedure.reasonReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Surgery.type					
* group[=].element[=].display = "Surgery type"					
* group[=].element[=].target.code = #Procedure.extension:ProcedureCategoryR5/type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Surgery.surgeryHospital					
* group[=].element[=].display = "Surgery Hospital"					
* group[=].element[=].target.code = #Procedure.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "In case the actual Organization performing the procedure is captured.
It could be a perfomer of type Organization ; or a perfomer.organization if of type PractitionerRole"					
* group[=].element[+].code = #Surgery.surgeryHospital					
* group[=].element[=].display = "Surgery Hospital"					
* group[=].element[=].target.code = #Procedure.extension:surgeryHospital					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Temporary included in the guide for covering the request of tracking if this information has been captured and maintained by the same or other organizations.
It is envisioned that this kind of requirements could be covered by recording where specific act are taking place."					
* group[=].element[+].code = #Surgery.date					
* group[=].element[=].display = "Date of surgery"					
* group[=].element[=].target.code = #Procedure.performedDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
* group[=].element[+].code = #Surgery.intention					
* group[=].element[=].display = "Surgery intention"					
* group[=].element[=].target.code = #Procedure.extension:ProcedureCategoryR5/intent					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Surgery.typeOfApproach					
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
* group[=].element[=].target.comment = "TO BE checked"					
* group[=].element[+].code = #Surgery.tumorRupture					
* group[=].element[=].display = "Tumor rupture"					
* group[=].element[=].target.code = #Procedure.supportingInfo.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "The supportingInfo refers an Observation conforming to the XYZ profile, where observation.code is = XXX"					
* group[=].element[+].code = #Surgery.SpecimenMitoticCount					
* group[=].element[=].display = "Surgical specimen Mitotic count"					
* group[=].element[=].target.code = #Procedure.supportingInfo.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Check how this differs from the same info in Cancer Episode.
The supportingInfo refers an Observation conforming to the XYZ profile, where observation.code is = XXX"					
* group[=].element[+].code = #Surgery.SpecimenGradingOnlyInUntreatedTumours					
* group[=].element[=].display = "Surgical specimen grading only in untreated tumours"					
* group[=].element[=].target.code = #Procedure.bodySite.extension:laterality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Surgery.isolatedLimbPerfusion					
* group[=].element[=].display = "Isolated Limb perfusion"					
* group[=].element[=].target.code = #Procedure.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Surgery.reconstruction					
* group[=].element[=].display = "Reconstruction"					
* group[=].element[=].target.code = #Procedure.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Surgery.neckSurgery					
* group[=].element[=].display = "Neck surgery"					
* group[=].element[=].target.code = #Procedure.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TO BE ANALYZED:
a surgical procedue exists with body site neck"					
* group[=].element[+].code = #Surgery.dateOfNeckSurgey					
* group[=].element[=].display = "Date of Neck surgey"					
* group[=].element[=].target.code = #Procedure.performedDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "TO BE ANALYZED:
Procedue with body site = neck"					
* group[=].element[+].code = #Surgery.lateralityOfTheDissection					
* group[=].element[=].display = "Laterality of the dissection"					
* group[=].element[=].target.code = #Procedure.bodySite.extension:laterality.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Laterality or Qualifier ?"					
* group[=].element[+].code = #Surgery.surgeryOnM					
* group[=].element[=].display = "Surgery on M"					
* group[=].element[=].target.code = #Procedure.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "TO BE ANALYZED:
a surgical proceudre exists with resonReference the metstatic condition
or a surgical proceudre exists with  reasonCode = metastatis"					
* group[=].element[+].code = #Surgery.dateOfSurgeryOnM					
* group[=].element[=].display = "Date of surgery on M"					
* group[=].element[=].target.code = #Procedure.performedDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.softTissue					
* group[=].element[=].display = "Site of surgery on metastasis_soft tissue"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.distantLymphNodes					
* group[=].element[=].display = "Site of surgery on metastasis_distant lymph nodes"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.lung					
* group[=].element[=].display = "Site of surgery on metastasis_lung"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.bone					
* group[=].element[=].display = "Site of surgery on metastasis_bone"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.liver					
* group[=].element[=].display = "Site of surgery on metastasis_liver"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.pleura					
* group[=].element[=].display = "Site of surgery on metastasis_pleura"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.peritoneum					
* group[=].element[=].display = "Site of surgery on metastasis_peritoneum"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above"					
//---END					
//---END					
//---END					
//---END					
