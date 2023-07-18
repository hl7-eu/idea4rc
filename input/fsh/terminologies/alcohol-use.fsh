//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsAlcoholUsageStatusI4rc
Id: alcohol-usage-status-eu-i4rc
Title: "Alcohol Usage Status"
Description: "Alcohol Usage Status"
//-------------------------------------------------------------------------------------------

* ^status = #active
* ^experimental = false

* $sct#219006 "Current drinker of alcohol" // Current
* $sct#83261004 "Lifetime non-drinker of alcohol" // Never
* $sct#105542008 "Current non-drinker of alcohol" // Former (at least for 12 months) NOT THE SAME CONCEPT TO BE CHECKED
* $sct#66590003 "Alcohol dependence" // History of alcohol dependence NOT THE SAME CONCEPT TO BE CHECKED
* $sct#160580001 "Alcohol consumption unknown" // Unknown 
