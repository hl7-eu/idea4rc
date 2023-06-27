Extension: RaceExtension
Id: Race-eu-i4rc
Title: "Race Extension"
Description: "Concepts classifying the person into a named category of humans sharing common history, traits, geographical origin or nationality.  Derived by the US core Race extensions."
* ^context[0].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"
* ^context[+].type = #element
* ^context[=].expression = "Person"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* . 0..1
* . ^short = "Race Extension"
* . ^definition = "Concepts classifying the person into a named category of humans sharing common history, traits, geographical origin or nationality.  Inspired from the US core Race extensions."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension.value[x] 1..1
* extension.value[x] only CodeableConcept
* extension.value[x] from VsRaceI4RC (preferred)
