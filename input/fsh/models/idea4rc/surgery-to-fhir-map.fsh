// -------------------------------------------------------------------------------					
//  Concept Model. File: 					surgery-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: surgery2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Surgery2FHIR"					
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
* group[=].element[=].target.code = #Procedure.extension:ProcedureCategoryR5/type.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Surgery.hospital					
* group[=].element[=].display = "Surgery Hospital"					
* group[=].element[=].target.code = #Procedure.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "In case the actual Organization performing the procedure is captured.
It could be a perfomer of type Organization ; or a perfomer.organization if of type PractitionerRole"					
* group[=].element[+].code = #Surgery.hospital					
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
* group[=].element[=].target.code = #Procedure.extension:ProcedureCategoryR5/intent.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Surgery.typeOfApproach					
* group[=].element[=].display = "Type of surgical approach on Tumour"					
* group[=].element[=].target.code = #Procedure.extension:procedure-method.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Surgery.marginsAfterSurgery					
* group[=].element[=].display = "Margins after surgery"					
* group[=].element[=].target.code = #Procedure.outcome					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Surgery.tumorRupture					
* group[=].element[=].display = "Tumor rupture"					
* group[=].element[=].target.code = #Procedure.extension:supportingInfoR5					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Is the tumor rupture a supporting info or a complication ?
IN the secodn case the supportingInfo refers an Observation conforming to the XYZ profile, where observation.code is = XXX
add map group including the target profile"					
* group[=].element[+].code = #Surgery.specimenMitoticCount					
* group[=].element[=].display = "Surgical specimen Mitotic count"					
* group[=].element[=].target.code = #Procedure.extension:supportingInfoR5					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Check how this differs from the same info in Cancer Episode.
The supportingInfo refers an Observation conforming to the ObservationSimpleResult profile, where observation.code is = $athena#4227243 'Number of mitoses per 10 high power fields'
Add a map to the target profile"					
* group[=].element[+].code = #Surgery.specimenGradingOnlyInUntreatedTumours					
* group[=].element[=].display = "Surgical specimen grading only in untreated tumours"					
* group[=].element[=].target.code = #Procedure.bodySite.extension:laterality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #Surgery.isolatedLimbPerfusion					
* group[=].element[=].display = "Isolated Limb perfusion"					
* group[=].element[=].target.code = #Procedure.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked.
True if code = $athena#4019656 'Isolated limb perfusion'"					
* group[=].element[+].code = #Surgery.reconstruction					
* group[=].element[=].display = "Reconstruction"					
* group[=].element[=].target.code = #Procedure.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked.
True if code is a $athena#4045162 'Reconstruction procedure'"					
* group[=].element[+].code = #Surgery.neckSurgery					
* group[=].element[=].display = "Neck surgery"					
* group[=].element[=].target.code = #Procedure.code					
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
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.distantLymphNodes					
* group[=].element[=].display = "Site of surgery on metastasis_distant lymph nodes"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.lung					
* group[=].element[=].display = "Site of surgery on metastasis_lung"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.bone					
* group[=].element[=].display = "Site of surgery on metastasis_bone"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.liver					
* group[=].element[=].display = "Site of surgery on metastasis_liver"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.pleura					
* group[=].element[=].display = "Site of surgery on metastasis_pleura"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.peritoneum					
* group[=].element[=].display = "Site of surgery on metastasis_peritoneum"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.brain					
* group[=].element[=].display = "Site of surgery on metastasis_brain"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.otherViscera					
* group[=].element[=].display = "Site of surgery on metastasis_other viscera"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.siteOnMetastasis.unknown					
* group[=].element[=].display = "Site of surgery on metastasis_unknown"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see above

MAYBE BETTER
a qualifier for the bodysite"					
* group[=].element[+].code = #Surgery.surgicalComplications					
* group[=].element[=].display = "Surgical complications (Clavien-Dindo Classification)"					
* group[=].element[=].target.code = #Procedure.complication					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
