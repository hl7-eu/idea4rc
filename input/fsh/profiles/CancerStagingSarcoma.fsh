    
Profile: SarcomaCancerStageGroup
Id: sarcoma-cancer-stage-group
Parent: Observation
Title: "Observation: Sarcoma Cancer and Disease Extent Stage Group"
Description: "The extent of the cancer in the body, according to a given cancer staging classification system, based on evidence such as physical examination, imaging, and/or biopsy or based on pathologic analysis of a specimen."

* value[x] only CodeableConcept
// * value[x] ^comment = ""    // suppress QA error on #notes link
* status ^short = "The status of the result"
* code ^short = "What was observed"
* effective[x] ^short = "Clinically relevant time for observation"
* value[x] ^short = "Actual result."
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* insert NotUsed(component)
* focus only Reference(ConditionPrimaryCancerI4rc or ConditionSecondaryCancerI4rc)
* insert SubjectRules
* method ^short = "ADD BINDING"


// CHECK CODES to be used
* code from CancerStageGroupVS (example)

// CHECK CODES to be used
* valueCodeableConcept from CancerStageGroupValuePathologicalVS (example) 
* hasMember only Reference(Observation)
* insert ObservationHasMemberSlicingRules
* hasMember contains
    localized 0..1  and
    locoRegional 0..1 
// Set metadata attributes that show up in the IG
* hasMember[localized] only Reference(DiseaseExtentCategory)
* hasMember[localized] ^short = "Localized"
* hasMember[localized] ^definition = "The stage at diagnosis (before any treatments) Localised (yes/no)"
* hasMember[localized] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[locoRegional] only Reference(LocoRegionalCategory)
* hasMember[locoRegional] ^short = "LocoRegional Category"
* hasMember[locoRegional] ^definition = "LocoRegional Category"
* hasMember[locoRegional] ^comment = "When using this element, the Observation must validate against the specified profile."


// =============================================================================

Profile:  DiseaseExtentCategory
Id: sarcoma-extent-category
Parent: Observation
Title: "Observation: Localized Category (Stage, Sarcoma)"
Description: "Category describing the stage at diagnosis (before any treatments) Localised (yes/no). No of lesions if Localised"
        

* insert CancerStageCommonRules
// * ^contained[0] = DiseaseExtentCategoryVS
* code = $athena#432537 // Disease Extent
* value[x] from DiseaseExtentCategoryVS // $athena#32942 or $athena#32944 // 	Confined Disease, Metastatic Disease
* hasMember only Reference(NumberTumorNodules or Observation)


// =============================================================================



// ---------------------

Profile:  LocoRegionalCategory
Id: locoRegional-category
Parent: Observation
Title: "Observation: LocoRegional Category (Stage)"
Description: "Category describing the LocoRegional"
        

* insert CancerStageCommonRules
* insert NotUsed(hasMember)
// * ^contained[0] = LocoRegionalCategoryVS
* code = $athena#432537 // Extension/Invasion
* value[x] from LocoRegionalCategoryVS

// $athena#36769249 or $athena#36769933 
  /* Invasive Disease - 32943
Transit Metastasis with Clinical Confirmation - 36769249 this is not an invasion / extension value....
Multifocal Tumor - 36769933
*/
