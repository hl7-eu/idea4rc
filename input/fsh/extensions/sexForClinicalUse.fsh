Extension: SexForClinicalUse
Id: patient-sexForClinicalUse
Title: "sexForClinicalUse"
Description: """ This duplicates the 'patient-sexForClinicalUse' extension currently defined for R5.

**Sex for Clinical Use (SFCU) Overview**
 
 Sex for Clinical Use is a categorization of sex derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc. This property is intended for use in clinical decision making and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population.
 
 While clinical decision-making processes could account for the specific physiological or anatomical attributes of the patient, there are several practical considerations, such as patient privacy and limited capabilities of existing systems which create the need for a categorization that is easy to exchange.  The Sex for Clinical Use categorization is intended to bridge the gap between the hypothetical ideal and the practical needs of operational systems.
 
 **Sex for Clinical Use (SFCU) Contexts**
 
 Sex for Clinical Use is a contextual concept. For example, a patient may generally be categorized as male, but for a specific lab test, the resulting lab should use the reference ranges associated with a female reference population.  In this case, systems may provide a patient-context [sexForClinicalUse](extension-patient-sexforclinicaluse.html) that acts as a 'default' for most care and annotate the lab order with a context-specific sexForClinicalUse.  Systems may determine what enclosing contexts are useful, but Patient, Encounter and EpisodeOfCare are three enclosing contexts that may often apply.
 
 The [sexForClinicalUse](extension-patient-sexforclinicaluse.html) extension can be used to communicate a clinical sex category on the on relevant clinical resources (e.g., DiagnosticReport, ServiceRequest) or enclosing contexts (e.g., Patient, Encounter, EpisodeOfCare).
 
 **Sex for Clinical Use (SFCU) Categorization**
 
 For ease of interoperability, a patient’s sex for clinical use is constrained to four possible categories.  Any patient for which special considerations apply should be categorized as 'Specified'.  The 'Specified' category is often represented as 'Other' in existing systems.
 
 **Female** - Available data indicates that diagnostics, analytics, and treatments should consider best practices associated with female reference populations.
 
 **Male** - Available data indicates that diagnostics, analytics, and treatments should consider best practices associated with male reference populations.
 
 **Specified** - Available data indicates that diagnostics, analytics, and treatment best practices may be undefined or not aligned with existing sex-derived reference populations.  Individuals or systems providing care should either use default behavior that is safe for both male and female populations, individually review treatment options with the patient, or carefully inspect relevant observations before proceeding with treatment.
 
 **Unknown** - The sex for clinical use cannot be determined because there are no relevant evidence or documentation, or the evidence or documentation are not sufficient to determine a value. **Sex for Clinical Use (SFCU) History and Practices**
 
 Prior to the definition of Sex for Clinical Use as a concept, systems may have used administrative gender as an approximation of patient-level sex for clinical use.  This practice required pre-coordination among exchange parters to explicitly overload the administrative sex concept for use as a clinical sex concept.  In cases where there was no pre-coordination, some systems may have incorrectly inferred information about a patient's clinical sex from administrative  gender.
 
 In the context of ordering workflows, systems may use Ask at Order Entry (AOE) questions to collect concepts similar to sex for clinical use.
 """
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1347"
// * ^version = "5.0.0"
* ^status = #draft
* ^date = "2022-01-24T16:55:11+11:00"
* ^publisher = "HL7"
* ^context.type = #element
* ^context.expression = "Resource"
* . ^short = "A context-specific sex for clinical use"
* . ^definition = "A context-specific categorization of a patient's sex for the purpose of clinical use"
* . ^min = 0
* extension contains
    value 1..1 and
    period 0..1 and
    comment 0..1 and
    supportingInfo 0..*
* extension[value] only Extension
* extension[value] ^short = "A context-specific sex for clinical use"
* extension[value] ^definition = "A context-specific categorization of a patient's sex for the purpose of clinical use"
* extension[value] ^comment = "Sex for clinical use may be contexual. For example, the sex for clinical use for mammogram health maintenance may by different than the sex for clinical use for the purpose of selecting a reference range for a lab test.  There may also be a patient-context sex for clinical use that is a general categorization that would apply across all contexts if more specific information is not available."
* extension[value].url only uri
* extension[value].value[x] 1..
* extension[value].value[x] only CodeableConcept
* extension[value].value[x] from $sex-for-clinical-use (required)
* extension[value].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[value].value[x] ^binding.extension.valueString = "sexForClinicalUse"
* extension[period] only Extension
* extension[period] ^short = "When the sex for clinical use applies"
* extension[period] ^definition = "The time period during which the sex for clinical use applies to the patient"
* extension[period].url only uri
* extension[period].value[x] 1..
* extension[period].value[x] only Period
* extension[comment] only Extension
* extension[comment] ^short = "Context about the sex for clinical use"
* extension[comment] ^definition = "Further explanation about the context for the sex for clinical use"
* extension[comment].url only uri
* extension[comment].value[x] 1..
* extension[comment].value[x] only string
* extension[supportingInfo] only Extension
* extension[supportingInfo] ^short = "Source of the sex for clincal use"
* extension[supportingInfo] ^definition = "Other clinical evidence or documentation that was used to determine the sex for clincal use"
* extension[supportingInfo] ^comment = "For example, a patient with an initial diagnosis of an intersex condition could have supporting clinical observations specific to the diagnosis. Additional information may be provided in the comment attribute."
* extension[supportingInfo] ^min = 0
* extension[supportingInfo].url only uri
* extension[supportingInfo].value[x] 1..
* extension[supportingInfo].value[x] only Reference(Resource)