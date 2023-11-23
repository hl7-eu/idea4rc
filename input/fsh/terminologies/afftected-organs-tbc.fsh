//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: AffectedOrganVs
Id: vs-affectedOrgan-eu-i4rc
Title: "Affected Organs (surgery)"
Description: "Affected Organs (surgery)"
//-------------------------------------------------------------------------------------------
// THIS IS THE PCSP VALUE SET TO BE UPDATED WITH THE ACTUAL VALUE SET TO BE USED
// Oesophagus; Abdomen; Brain; Face; Liver; Spine; Spinal Cord; Sympathetic nerves; Chest/thorax; Pelvis
* ^experimental = false
* ^status = #active

* $sct#32849002 "Oesophagus"
* $sct#818983003 "Abdomen"
* $sct#12738006  "Brain"
* $sct#89545001 "Face"
* $sct#10200004 "Liver"
* $sct#421060004 "Spine"
* $sct#2748008  "Spinal Cord"
* $sct#90456006 "Sympathetic nerve"
* $sct#51185008 "Thoracic structure"
* $sct#12921003 "Pelvis"
* $data-absent-reason#unknown "Unknown"
* $v3-NullFlavor#OTH "Other"
/* * codes from valueset UnknownOtherVs */
