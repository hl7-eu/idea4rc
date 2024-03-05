//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SurgicalProcedureTypeVs
Id: vs-surgicalProcedureType-eu-i4rc
Title: "Surgical Procedure Type"
Description: "Types of surgical procedure this resource is referring to (to be updated)"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^status = #active
* $athena#4019656 "Isolated limb perfusion"
* include codes from system $athena where concept is-a #4045162 // 'Reconstruction procedure' 
* codes from valueset $absent-or-unknown-procedures-uv-ips

 
