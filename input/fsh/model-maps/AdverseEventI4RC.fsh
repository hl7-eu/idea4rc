Logical: AdverseEventI4RC
Id: AdverseEvent
Title: "Adverse Event"
Description: """Adverse Event
Maturity Level: 0 Draft"""
* treatmentReference[x] 1..* SystemicTreatment or Radiotherapy or Surgery "Treatment reference (M)" """Treatment element containing the data regarding the specific treatment. It can be SystemicTreatment, Surgery, Radiotherapy, Isolated Limb Perfusion or Regional Deep Hyperthemia 
OBSERVATION or CONDITION"""
* treatmentReference[x] insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* adverseEventType 1..* CodeableConcept "Adverse event type (CTCAE Term) (M)" """the Common Terminology Criteria for Adverse Events (CTCAE) is used to identify the adverse events. It includes details of the adverse event type and grade 
OBSERVATION or CONDITION (check)"""
* adverseEventType insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* adverseEventStartingDate 1..* date "Adverse event starting date (M)" """specifies when adverse events begins 
OBSERVATION or CONDITION (check)"""
* adverseEventStartingDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* adverseEventDuration 1..* CodeableConcept "Adverse event duration (M)" """specifies the duration of the adverse event 
OBSERVATION or CONDITION (check)

Adverse Events in OMOP ar standard conditions or observations and duration must be derived from that data

https://forums.ohdsi.org/t/mapping-adverse-event-data-to-omop-and-to-fhir/15373"""
* adverseEventDuration insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* adverseEventDuration ^comment = """Less than one week - 2000100050
More than one week but less than a month - 2000100051
More than a month but less than 3 months - 2000100052
More than 3 months - 2000100053"""
