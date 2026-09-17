/* Adapted from mcode */

//---------- Extensions -------------------------

Extension: RadiotherapyModalityAndTechnique
Id:        mcode-radiotherapy-modality-and-technique
Title:     "Radiotherapy Modality And Technique Extension"
Description: "Extension capturing modality and technique of a given radiotherapy procedure."
// // * ^extension[FMM].valueInteger = 3
* insert ExtensionContext(Procedure)
* extension contains
    RadiotherapyModality named modality 1..1 and
    RadiotherapyTechnique named technique 0..* 
* extension[modality].value[x] from RadiotherapyModalityVS (preferred) // (required)
* extension[technique].value[x] from RadiotherapyTechniqueVS (preferred) // (required)


Extension: RadiotherapyModality
Id:        mcode-radiotherapy-modality
Title:    "Radiotherapy Modality Extension"
Description: "Extension capturing a modality of external beam or brachytherapy radiation procedures."
//* insert ExtensionContext(Procedure) - removed as per FHIR-32243
// * ^extension[FMM].valueInteger = 3
* insert ExtensionContext(Extension)
* value[x] only CodeableConcept
* value[x] 1..1

Extension: RadiotherapyTechnique
Id:        mcode-radiotherapy-technique
Title:     "Radiotherapy Technique Extension"
Description: "Extension capturing a technique of external beam or brachytherapy radiation procedures."
//* insert ExtensionContext(Procedure)  - removed as per FHIR-32243
// * ^extension[FMM].valueInteger = 3
* insert ExtensionContext(Extension)
* value[x] only CodeableConcept
* value[x] 1..1

Extension: RadiotherapySessions
Id:        mcode-radiotherapy-sessions
Title:     "Radiotherapy Number of Sessions Extension"
Description: "The number of sessions in a course of radiotherapy."
// * insert ExtensionContext(Procedure) - removed as per FHIR-32243
// * ^extension[FMM].valueInteger = 3
* insert ExtensionContext(Procedure)
* value[x] only unsignedInt
* value[x] 1..1

Extension: RadiotherapyDoseDeliveredToVolume
Id: mcode-radiotherapy-dose-delivered-to-volume
Title: "Radiotherapy Dose Delivered To Volume Extension"
Description: "Dose delivered to a given radiotherapy volume."
// * insert ExtensionContext(Procedure) - removed as per FHIR-32243
// * ^extension[FMM].valueInteger = 3
* insert ExtensionContext(Procedure)
* extension contains
    volume 1..1 MS and
    totalDoseDelivered 0..1 MS and
    fractionsDelivered 0..1 MS
* extension[volume].value[x] only Reference(RadiotherapyVolume)
* extension[totalDoseDelivered].value[x] only Quantity
* extension[totalDoseDelivered].valueQuantity = $ucum#cGy
* extension[fractionsDelivered].value[x] only unsignedInt
// Definitions of in-line extensions
* extension[volume] ^short = "Volume in the body where radiation was delivered"
* extension[volume] ^definition = "A BodyStructure resource representing volume in the body where radiation was delivered, for example, Chest Wall Lymph Nodes."
* extension[totalDoseDelivered] ^short = "Total Radiation Dose Delivered"
* extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this dose delivery, i.e., dose delivered from the Procedure in which this extension is used."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered to this volume."

