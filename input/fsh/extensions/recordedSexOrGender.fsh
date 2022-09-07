Extension: RecordedSexOrGender
Id: individual-recordedSexOrGender
Title: "recordedSexOrGender"
Description: "The recorded sex and gender is to be used to differentiate existing sex or gender data. This element is used for existing 'sex' or 'gender' elements in a document or record when the intent and meaning is unclear. For example, the individual's birth certificate information, passport information, and national identity document information may all be present. This is necessary because an individual's documents may be updated at different rates or for different reasons. Sex assigned at birth (SAAB), while very common and considered essential in some jurisdictions, is considered a recorded sex and gender entry."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1342"
* ^version = "5.0.0"
* ^status = #draft
* ^date = "2022-01-28"
* ^publisher = "HL7"
* ^context[0].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"
* ^context[+].type = #element
* ^context[=].expression = "Person"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* . ^short = "A recorded sex or gender property for the individual"
* . ^definition = "A sex or gender property for the individual from a document or other record"
* . ^min = 0
* extension contains
    value 1..1 and
    internationalEquivalent 0..1 and
    type 0..1 and
    effectivePeriod 0..1 and
    acquisitionDate 0..1 and
    sourceDocument 0..1 and
    sourceField 0..1 and
    jurisdiction 0..1 and
    comment 0..1
* extension[value] only Extension
* extension[value] ^short = "The recorded sex or gender property for the individual"
* extension[value] ^definition = "A sex or gender property for the individual from a document or other record"
* extension[value].url only uri
* extension[value].value[x] 1..
* extension[value].value[x] only CodeableConcept
* extension[value].value[x] from AdministrativeGender (example)
* extension[value].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[value].value[x] ^binding.extension.valueString = "recordedSexOrGender"
* extension[internationalEquivalent] only Extension
* extension[internationalEquivalent] ^short = "An international representation of the value found on the document"
* extension[internationalEquivalent] ^definition = "An international representation of the value found on the document for interoperability and international legal purposes."
* extension[internationalEquivalent].url only uri
* extension[internationalEquivalent].value[x] 1..
* extension[internationalEquivalent].value[x] only CodeableConcept
* extension[internationalEquivalent].value[x] from $international-civil-aviation-organization-sex-or-gender (extensible)
* extension[internationalEquivalent].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[internationalEquivalent].value[x] ^binding.extension.valueString = "recordedSexOrGenderInternationalEquivilent"
* extension[type] only Extension
* extension[type] ^short = "Type of recorded sex or gender."
* extension[type] ^definition = "The type or category of sex or gender that is recorded."
* extension[type] ^comment = "Because the recorded sex and gender concept exists primarily as means to exchange sex and gender data concepts that are either use-case specific or that are historically not well defined, the type may either imply the indended use of the sex or gender value, or identify the sex or gender value as based on historical semanitcs."
* extension[type].url only uri
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] from $recorded-sex-or-gender-type (preferred)
* extension[type].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[type].value[x] ^binding.extension.valueString = "recordedSexOrGenderType"
* extension[effectivePeriod] only Extension
* extension[effectivePeriod] ^short = "When the recorded sex or gender value applies"
* extension[effectivePeriod] ^definition = "The time period during which the recorded sex or gender value applies to the individual"
* extension[effectivePeriod].url only uri
* extension[effectivePeriod].value[x] ..1
* extension[effectivePeriod].value[x] only Period
* extension[acquisitionDate] only Extension
* extension[acquisitionDate] ^short = "When the sex or gender value was recorded."
* extension[acquisitionDate] ^definition = "The date/time when the sex or gender value was first recorded in the system."
* extension[acquisitionDate].url only uri
* extension[acquisitionDate].value[x] 1..
* extension[acquisitionDate].value[x] only dateTime
* extension[sourceDocument] only Extension
* extension[sourceDocument] ^short = "The document the sex or gender property was acquired from."
* extension[sourceDocument] ^definition = "The reference to the source document or the code representing the type of document where this sex or gender property is initially recorded."
* extension[sourceDocument] ^comment = "For example, if a driver's license is scanned, this property may reference that scanned document."
* extension[sourceDocument].url only uri
* extension[sourceDocument].value[x] 1..
* extension[sourceDocument].value[x] only Reference(DocumentReference)
* extension[sourceField] only Extension
* extension[sourceField] ^short = "The name of the field within the source document where this sex or gender property is initially recorded."
* extension[sourceField] ^definition = "The name of the field within the source document where this sex or gender property is initially recorded."
* extension[sourceField] ^comment = "For example, if a sex value is acquired from a driver's license, and the name of the field on that driver's license is 'SEX', then a code describing that field can be provided.  If the semantics of the field are known, they may be described in the comment.  For example, if the 'SEX' field on a license in a particular state or province is populated based on an individual's indication of what gender they consider themselves to be, but the field label is 'SEX' for historical reasons, a comment describing that the semantics of the field align with gender identity, even though the field name is 'SEX' can be provided."
* extension[sourceField].url only uri
* extension[sourceField].value[x] 1..
* extension[sourceField].value[x] only string
* extension[jurisdiction] only Extension
* extension[jurisdiction] ^short = "Who issued the document where the sex or gender was aquired"
* extension[jurisdiction] ^definition = "The jurisdiction or organization that issued the document from which the sex or gender was aquired"
* extension[jurisdiction] ^comment = "For example, a individual's driver's license or passport would be issued by a specific state or country."
* extension[jurisdiction].url only uri
* extension[jurisdiction].value[x] 1..
* extension[jurisdiction].value[x] only CodeableConcept
* extension[jurisdiction].value[x] from $jurisdiction (extensible)
* extension[jurisdiction].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[jurisdiction].value[x] ^binding.extension.valueString = "Jurisdiction ValueSet"
* extension[comment] only Extension
* extension[comment] ^short = "Context or source information about the recorded sex or gender"
* extension[comment] ^definition = "Further explanation about the context or source of the recorded sex or gender value"
* extension[comment].url only uri
* extension[comment].value[x] 1..
* extension[comment].value[x] only string