//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsAlcoholUsageStatusSctI4rc
Id: alcoholUsageStatus-snomed-eu-i4rc
Title: "Alcohol Usage Status: SNOMED CT"
Description: """Alcohol Usage Status: SNOMED CT"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $sct#219006 "Current drinker of alcohol" // Current
* $sct#82581004	"Ex-drinker"
* $sct#783261004 "Lifetime non-drinker of alcohol" // Never
* $sct#286857004 "Ex-problem drinker"
/* * $sct#105542008 "Current non-drinker of alcohol" // Former (at least for 12 months) NOT THE SAME CONCEPT TO BE CHECKED
* $sct#66590003 "Alcohol dependence" // History of alcohol dependence NOT THE SAME CONCEPT TO BE CHECKED */
* $sct#160580001 "Alcohol consumption unknown" // Unknown 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsAlcoholUsageStatusAthenaI4rc
Id: alcoholUsageStatus-athena-eu-i4rc
Title: "Alcohol Usage Status: Athena"
Description: """Alcohol Usage Status: Athena"""
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $athena#4074035 "Current drinker" // SCT	219006
* $athena#4220362 	"Ex-drinker" // 82581004
* $athena#37204556 	"Lifetime non-drinker of alcohol" // 783261004	Lifetime non-drinker of alcohol
* $athena#4117706 "Ex-problem drinker" // 286857004	Ex-problem drinker
// UNKNOWN ?