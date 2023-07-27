
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: CalculatedEstimatedVs
Id: vs-calcest-eu-i4rc
Title: "Calculated|Estimated"
Description: "Calculated|Estimated Value Set"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#703858009 "Numeric estimation technique" 
* $sct#702873001 	"Calculation technique"
* $data-absent-reason#unknown "Unknown"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ChemoUnitsVs
Id: chemo-units-eu-i4rc
Title: "Chemotherapy cumulative dose units"
Description: "Chemotherapy cumulative dose units"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $ucum#mg/m2
// * $ucum#gr/m2
* $ucum#g/m2
// * $ucum#UI/m2
* $ucum#[iU]/m2

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: NotPerformedUnknownVs
Id: vs-npunk-eu-i4rc
Title: "Not Performed|Unknown"
Description: "Not Performed/Unknown Value Set"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $data-absent-reason#unknown "Unknown"
* $data-absent-reason#not-performed "Not Performed"