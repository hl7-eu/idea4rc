//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsRadiotherapySiteI4rc
Id: radiotherapy-site-eu-i4rc
Title: "Radiotherapy Sites"
Description: "This ValueSet contains codes describing Radiotherapy Sites from Athena"
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false
* ^compose.include[+].system = $athena
* ^compose.include[=].filter[+].property = #conceptClass
* ^compose.include[=].filter[=].op = #in
* ^compose.include[=].filter[=].value = "ICDO Topography,Topography"
* ^compose.include[=].filter[+].property = #standardConcept
* ^compose.include[=].filter[=].op = #=
* ^compose.include[=].filter[=].value = "Standard"

* ^compose.include[+].system = $athena
* ^compose.include[=].concept[+].code = #36770046
* ^compose.include[=].concept[=].display = "Neck"
* ^compose.include[=].concept[+].code = #36769180
* ^compose.include[=].concept[=].display = "Metastasis"
* ^compose.include[=].concept[+].code = #36770283
* ^compose.include[=].concept[=].display = "Metastasis to lung"
* ^compose.include[=].concept[+].code = #35225542
* ^compose.include[=].concept[=].display = "Metastasis to mediastinum"
* ^compose.include[=].concept[+].code = #36769301
* ^compose.include[=].concept[=].display = "Metastasis to bone"
* ^compose.include[=].concept[+].code = #35225724
* ^compose.include[=].concept[=].display = "Metastasis to soft tissues"
* ^compose.include[=].concept[+].code = #36770544
* ^compose.include[=].concept[=].display = "Metastasis to liver"

* codes from valueset sitesVs