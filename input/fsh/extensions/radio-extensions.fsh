/* Adapted from mcode */

//---------- Extensions -------------------------

Extension: RadiotherapyModalityAndTechnique
Id:        mcode-radiotherapy-modality-and-technique
Title:     "Radiotherapy Modality And Technique Extension"
Description: "Extension capturing modality and technique of a given radiotherapy procedure.  The allowed combinations of modality and technique are constrained by invariants, one per modality."
// // * ^extension[FMM].valueInteger = 3
* extension contains
    RadiotherapyModality named modality 1..1 and
    RadiotherapyTechnique named technique 0..* 
* extension[modality].value[x] from RadiotherapyModalityVS (preferred) // (required)
* extension[technique].value[x] from RadiotherapyTechniqueVS (preferred) // (required)
* obeys TechniquesForNeutronBeamModality
* obeys TechniquesForPhotonBeamModality
* obeys TechniquesForElectronBeamModality
* obeys TechniquesForCarbonIonBeamModality
* obeys TechniquesForProtonBeamModality
* obeys TechniquesForInternalRadiotherapyPermanentSeeds
* obeys TechniquesForLowDoseRateUsingTempRadSource
* obeys TechniquesForPulsedDoseRate
* obeys TechniquesForHighDoseRate
* obeys TechniquesForHighDoseRateElectronic
* obeys TechniquesForRadioPharmaceutical


Invariant: TechniquesForPhotonBeamModality
Description:  "Allowed Techniques for Photon Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156506007')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(
          coding.system = 'http://snomed.info/sct' and (coding.code = '441799006' or coding.code = '1156530009' or coding.code = '1162782007' or coding.code = '1156526006' or coding.code = '168524008' or coding.code = '1156530009' or coding.code = '1163157007'))"

Severity: #error
Invariant: TechniquesForElectronBeamModality
Description:  "Allowed Techniques for Electron Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '45643008')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and  (coding.code = '1162782007' or coding.code = '1156526006' or coding.code = '168524008' or coding.code = '1163157007'))"
Severity: #error

Invariant: TechniquesForNeutronBeamModality
Description:  "Allowed Techniques for Neutron Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '80347004')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and  (coding.code = '169317000' or coding.code = '1162782007'))"
Severity: #error

Invariant: TechniquesForCarbonIonBeamModality
Description:  "Allowed Techniques for Carbon Ion Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156505006')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(
          coding.system = 'http://snomed.info/sct' and (coding.code = '1156529004' or coding.code = '1156528007' or coding.code='1204242009'))"
Severity: #error

Invariant: TechniquesForProtonBeamModality
Description:  "Allowed Techniques for Proton Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '10611004')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (coding.code = '1156529004' or coding.code = '1156528007' or coding.code = '1204242009' or coding.code = '1163157007'))"
Severity: #error

Invariant: TechniquesForInternalRadiotherapyPermanentSeeds
Description:  "Allowed Techniques for Internal Radiotherapy - Permanent Seeds"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '169359004')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and  (coding.code = '113120007'))"
Severity: #error

Invariant: TechniquesForLowDoseRateUsingTempRadSource
Description:  "Allowed Techniques for Low Dose Rate Using Temp Radiation Source"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156708005')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (coding.code = '384692006' or coding.code = '113120007' or coding.code = '14473006'))"
Severity: #error

Invariant: TechniquesForPulsedDoseRate
Description:  "Allowed Techniques for Pulsed Dose Rate"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156384006')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (coding.code = '384692006' or coding.code = '113120007'))"
Severity: #error

Invariant: TechniquesForHighDoseRate
Description:  "Allowed Techniques for High Dose Rate"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '394902000')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (coding.code = '384692006' or coding.code = '1156382005' or coding.code = '113120007' or coding.code = '1156383000' or coding.code = '384691004' or coding.code = '168524008' or coding.code = '14473006'))"
Severity: #error

Invariant: TechniquesForHighDoseRateElectronic
Description:  "Allowed Techniques for High Dose Rate Electronic"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '438629002')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (coding.code = '384692006' or coding.code = '1156382005' or coding.code = '113120007' or coding.code = '384691004' or coding.code = '168524008' or coding.code = '14473006'))"
Severity: #error

Invariant: TechniquesForRadioPharmaceutical
Description:  "Allowed Techniques for Radiopharmaceutical"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists( coding.code = '440252007')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (coding.code = '16560241000119104' or coding.code = '1156383000' or coding.code = '384692006' or coding.code = '113120007'))"
Severity: #error

Extension: RadiotherapyModality
Id:        mcode-radiotherapy-modality
Title:    "Radiotherapy Modality Extension"
Description: "Extension capturing a modality of external beam or brachytherapy radiation procedures."
//* insert ExtensionContext(Procedure) - removed as per FHIR-32243
// * ^extension[FMM].valueInteger = 3
* value[x] only CodeableConcept
* value[x] 1..1

Extension: RadiotherapyTechnique
Id:        mcode-radiotherapy-technique
Title:     "Radiotherapy Technique Extension"
Description: "Extension capturing a technique of external beam or brachytherapy radiation procedures."
//* insert ExtensionContext(Procedure)  - removed as per FHIR-32243
// * ^extension[FMM].valueInteger = 3
* value[x] only CodeableConcept
* value[x] 1..1

Extension: RadiotherapySessions
Id:        mcode-radiotherapy-sessions
Title:     "Radiotherapy Number of Sessions Extension"
Description: "The number of sessions in a course of radiotherapy."
// * insert ExtensionContext(Procedure) - removed as per FHIR-32243
// * ^extension[FMM].valueInteger = 3
* value[x] only unsignedInt
* value[x] 1..1

Extension: RadiotherapyDoseDeliveredToVolume
Id: mcode-radiotherapy-dose-delivered-to-volume
Title: "Radiotherapy Dose Delivered To Volume Extension"
Description: "Dose delivered to a given radiotherapy volume."
// * insert ExtensionContext(Procedure) - removed as per FHIR-32243
// * ^extension[FMM].valueInteger = 3
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

