Alias: $occurenceAt = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/occurence-at
Alias: $episodeEventReference = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ext-episode-event-reference

/**CodeSystem: TimeInterval
Id: time-interval-i4rc
Title: "Time Interval for the Adverse Event"
Description:  "Coded concepts specified by this Project."
* #less-than-1-week "Less than one week"
* #more-than-1-week-less-than-1-month "More than one week but less than a month "
* #more-than-1-month-less-than-3-months "More than a month but less than 3 months "
* #more-than-3-months "More than 3 months"
* #unknown "Unknown"

ValueSet: TimeIntervalAdverseEvent
Id: time-interval-adverse-event
Title: "Time interval VS"
Description: "Value Set for Time Interval "
* TimeInterval#less-than-1-week "Less than one week"
* TimeInterval#more-than-1-week-less-than-1-month "More than one week but less than a month "
* TimeInterval#more-than-1-month-less-than-3-months "More than a month but less than 3 months "
* TimeInterval#more-than-3-months "More than 3 months"
* TimeInterval#unknown "Unknown"


Extension: EventDuration
Id: event-duration
Title: " Adverse event Duration : I4RC"
Description: "Specifies the duration of the adverse event"
* insert ExtensionContext(AdverseEvent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from TimeIntervalAdverseEvent **/

Extension: EpisodeEventReference
Id: episodeEvent-reference
Title: "Episode Event reference"
Description: "Episode Event reference"
* value[x] 1..1
* valueReference only Reference(ConditionSecondaryCancerI4rc or ConditionPrimaryCancerI4rc)


Profile: AdverseEventI4rc
Parent: AdverseEvent
Id: adverse-event-i4rc
Title: "AdverseEvent : I4RC"
Description: "This profile defines how to represent AdverseEvent in FHIR for the purpose of modeling negative consequences of a medication administration of the IDEA4RC project."
* extension contains
    $episodeEventReference named episodeEventReference 1..1 MS and // useful ? can be gotten with suspectEntity.reasonReference
    $adverseEventOccurrence-R5 named EventDuration 1..1 MS

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing to determine the adverse event categories"
* category contains categoryType 1..1 
* category[categoryType].coding = http://snomed.info/sct#446401000124104 // type
* category contains occurenceType 1..1 
* category[occurenceType].coding from VsEventTypeI4rc

* suspectEntity ^slicing.discriminator.type = #type
* suspectEntity ^slicing.discriminator.path = "instance"
* suspectEntity ^slicing.rules = #open
* suspectEntity ^slicing.description = "Slicing to determine the medication responsible"
* suspectEntity contains suspectMedication 1..1 
* suspectEntity[suspectMedication].instance only Reference(SystemicTreatmentI4RC)

* date 1..1 //Adverse event starting date