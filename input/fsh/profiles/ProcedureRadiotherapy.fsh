//====== RuleSet =====================================

RuleSet: ProcedureRadiotherapyI4rcRules
/* * extension contains 
	ResourceRelatedInfo named relatedDose 0..*
	and $procedure-method named procedureMethod 0..1
	and RadiotherapyEnergyOrIsotope named energyOrIsotope 0..*
	and PerformedTiming named performedTiming 0..1
	
* extension[relatedDose].valueReference only Reference(TotalDoseRadObsI4rc)
* extension[energyOrIsotope]
* extension[procedureMethod].valueCodeableConcept from BrachytherapyType
* extension[performedTiming].valueTiming.repeat.count ^short = "Number of repetitions" */

* extension contains SameHospital named sameHospital 0..1

* extension contains $procedure-category-r5 named procedureCategoryR5 0..*
* extension[procedureCategoryR5] // add bindings

* extension contains RadiotherapyModalityAndTechnique named modalityAndTechnique 0..*
* extension[modalityAndTechnique]
* extension[modalityAndTechnique].extension[modality] ^short = "Modality of external beam or brachytherapy radiation procedures"
* extension[modalityAndTechnique].extension[technique] ^short = "Technique of external beam or brachytherapy radiation procedures"

/* THIS EXTENSION SHALL BE REVIEWED SINCE VOLUME IS 1.. AND THIS IS NOT USED */

* extension contains $mcode-radiotherapy-dose-delivered-to-volume named doseToVolume 0..1
* extension[doseToVolume].extension[volume]
* extension[doseToVolume].extension[totalDoseDelivered]
* extension[doseToVolume].extension[fractionsDelivered] 


/* THIS EXTENSION SHALL BE REDEFINED IN ORDER TO ADD THE PROPER VALUE SET */

* extension contains $mcode-treatment-termination-reason named terminationReason 0..*
* extension[terminationReason] 

//===================================

* extension contains  $mcode-procedure-intent named procedureIntent 0..1
* extension[procedureIntent]

* extension contains RadiotherapySettings named settings 0..1

* extension contains TotalHighDoseDelivered named totalHighDoseDelivered 0..1

* identifier ^short = "External Identifiers for this radiotherapy / boost"
* status ^short = "Procedure status"
* category 1..1 
* code 1..1  // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
// * code from RadiotherapyTypeVs (extensible)
* code ^short = "ADD VOC BINDING"
// add slice on coding to allow more precise data
* insert SubjectRules	
* performedPeriod 1.. 
* reasonCode from VsReIrradiationReasonI4rc
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerI4rc)
* bodySite 0..
  * ^short = "required for Brachytherapy and External beam"
* bodySite from VsRadiotherapySiteI4rc
* insert RadiotherapyBodySiteExt
* note ^short = "Additional information about the Radiotherapy" 


RuleSet: RadiotherapyBodySiteExt


* bodySite.extension contains
     
	 BodyLocationQualifier named locationQualifier 0..*
     and LateralityQualifier named lateralityQualifier 0..1
	 
* bodySite.extension[locationQualifier].value[x] from VsSurgeryLocationQualifierI4rc
* bodySite.extension[lateralityQualifier].value[x] from VsRadioTherapySiteLateralityQualifierI4rc

	 // $mcode-body-location-qualifier named locationQualifier 0..* 
	// $mcode-laterality-qualifier named lateralityQualifier 0..1
    

// * extension and bodySite and bodySite.extension[lateralityQualifier] MS
// * bodySite.extension[locationQualifier].valueCodeableConcept from FromToPosteriorAnteriorVs


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyI4rc
Parent:   Procedure 
Id:       Procedure-radiotheraphy-eu-i4rc
Title:    "Procedure: Radiotherapy"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* insert ProcedureRadiotherapyI4rcRules
* category = $sct#108290001 "Radiotherapy" // part of GPS
* location only Reference(Location) // add profile if needed
* usedCode ^short = "Coded items used during the procedure"
// * usedCode from RadiotherapyDeviceType (extensible) // update the value set
* outcome from VsTreatmentResponseI4rc

Extension: RadiotherapySettings
Id: radiotherapy-settings
Title: "Radiotherapy Setting"
Description: "The setting in which the radiotherapy procedure was performed."
* value[x] only CodeableConcept
* valueCodeableConcept from VsSettingRadiotherapyI4RC (preferred)


Extension: TotalHighDoseDelivered
Id: total-high-dose-delivered
Title: "Total High Dose Delivered"
Description: "Total High Dose delivered to a given radiotherapy volume."

* extension contains volume 1..1 
* extension[volume].url = "volume" (exactly)
* extension[volume].value[x] only Reference
* extension[volume].valueReference only Reference(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume)

* extension contains totalHighDoseDelivered 0..1
* extension[totalHighDoseDelivered].url = "totalHighDoseDelivered" (exactly)
* extension[totalHighDoseDelivered].value[x] only Quantity
* extension[totalHighDoseDelivered].valueQuantity.system = "http://unitsofmeasure.org"
* extension[totalHighDoseDelivered].valueQuantity.code = #cGy

/* 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyShieldingI4rc
Parent:   Procedure 
Id:       Procedure-radiotheraphyShield-eu-i4rc	
Title:    "Procedure: Radiotherapy Shielding"
Description: "This profile defines how to represent Shielding Procedures in FHIR for describing a set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------


// * identifier ^short = "External Identifiers for this radiotherapy / boost"
// * status ^short = "Procedure status"
* category = $sct#108290001 "Radiotherapy" // part of GPS
// * code 1..1  // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
* code = $sct#228720004 "Making of shielding block for radiotherapy"
* partOf 1..1
* partOf only Reference (ProcedureRadiotherapyI4rc)
// add slice on coding to allow more precise data
* insert SubjectRules	
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerI4rc)
* bodySite 1..*
* insert RadiotherapyBodySiteExt
* note ^short = "Additional information about the Radiotherapy" 







//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyBoostI4rc
Parent:   Procedure 
Id:       Procedure-radiotheraphyBoost-eu-i4rc
Title:    "Procedure: Radiotherapy Boost"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of data required by PanCareSurPass for Radiotherapy Boosts" //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


* insert ProcedureRadiotherapyI4rcRules
* category 1..1 
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Slice based on the values set binding"
* category.coding contains 
	radiotheraphy 1..1 and
	boost 1..1
* category.coding[radiotheraphy] = $sct#108290001 "Radiotherapy" // part of GPS
* category.coding[boost] = $sct#445232009 "Boost radiation therapy"

* partOf 1..1
* partOf only Reference (ProcedureRadiotherapyI4rc)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  TotalDoseRadObsI4rc
Parent:   Observation
Id:       Observation-totalDoseRad-eu-i4rc
Title:    "Observation: Radiotherapy Total Dose PCSP"
Description: "This profile defines how to represent Radiotherapy Total Dose in FHIR for the purpose of the IDEA4RC project."
//-------------------------------------------------------------------------------------------

* insert CumulativeDoseObsRules
* category 1..
* category = $observation-category#procedure 
// * code = $dicomOntology#113725 "Dose (RP) Total" // evaluate 445565002 | Total boost radiation dose delivered (observable entity) AND 445461008 | Total radiation dose delivered (observable entity)
* code 1..
* code from RadiotherapyDoseTypeVs
* bodySite 0..
  * ^short = "required for Brachytherapy and External beam"
* insert RadiotherapyBodySiteExt

 */