Profile: SystemicTreatmentI4RC
Parent: MedicationAdministration
Id: systemic-treatment-i4rc
Title: "SystemicTreatment"
Description: "Profil of SystemicTreatment for the project IDEA4RC"
* . ^short = "Administration of a systemic treatment to a patient"
* . ^definition = "Describes the event of a patient consuming or otherwise being administered a medication. This may be as simple as swallowing a tablet or it may be a long running infusion. Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner."
* reasonReference 1..1 
* reasonReference only Reference(ConditionSecondaryCancerI4rc or ConditionPrimaryCancerI4rc)
  * ^short = "Episode Event reference"
* category 1..1 
* category from VsTypeofSystemicTreatmentI4rc (required) 
  * ^short = "Type of systemic treatment"
* medicationCodeableConcept from VsSurgeryIntentionI4rc (required) //intent
  * ^short = "Clarifies the reasons why systemic therapy is administered"
  * ^definition = "Curative chemotherapy is chemotherapy administered with the goal of achieving a complete remission and preventing the recurrence of cancer. 
   Palliative chemotherapy refers to any chemotherapy administration that is not curative but administered simply to decrease tumor load and increase life expectancy. It has been defined also as “…treatment in circumstances where the impact of intervention is insufficient to result in major survival advantage, but does affect improvement in terms of tumor‐related symptoms…"
* reasonCode 1..1  
* reasonCode from VsTreatmentSetting4RC
  * ^short = "settings"
* effectivePeriod.start ^short = "Start date systemic treatment"
* effectivePeriod.end ^short = "End date systemic treatment"
* dosage.dose.value 1..1 
  * ^short = "Number of cycles/ administrations"
  * ^definition = "Clarifies how many times the treatment was administered. A cycle of treatment is a period of treatment followed by a period of rest (no treatment). For example, treatment given for one week followed by three weeks of rest is one cycle of treatment. A cycle can be repeated multiple times."
* statusReason 1.. 
* statusReason from VsTreatmentCompletedAsPlannedI4RC (required)
  * ^short = "Reason for end of treatment"

