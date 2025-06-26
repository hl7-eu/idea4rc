//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsNewCancerTopographyI4rc
Id: new-cancer-topography-i4rc
Title: "New Cancer Topography"
Description: """New Cancer Topography.
Codes can be visualized here : https://athena.ohdsi.org/search-terms/terms?conceptClass=ICDO+Condition&page=1&pageSize=15&query=&boosts"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* ^compose.include[+].system = $athena
* ^compose.include[=].filter[+].property = #conceptClass
* ^compose.include[=].filter[=].op = #=
* ^compose.include[=].filter[=].value = "ICDO Condition"