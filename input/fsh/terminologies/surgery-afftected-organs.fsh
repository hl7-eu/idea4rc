//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: AffectedOrganVs
Id: vs-affectedOrgan-eu-i4rc
Title: "Affected Organs (surgery)"
Description: "Affected Organs (surgery)"
//-------------------------------------------------------------------------------------------

* ^experimental = false
* ^status = #active

* $athena#4338971 "Soft tissue"
* $athena#44497988 "Lymph nodes" // missing distant qualifier
* $athena#4213162 "Lung"
* $athena#4009105 "Liver"
* $athena#4110377 "Entire pleura"
* $athena#12738006	"Brain"
// MISSING metastasis_peritoneum
// MISSING metastasis_other viscera

* $data-absent-reason#unknown "Unknown"
* $v3-NullFlavor#OTH "Other"
/* * codes from valueset UnknownOtherVs */
