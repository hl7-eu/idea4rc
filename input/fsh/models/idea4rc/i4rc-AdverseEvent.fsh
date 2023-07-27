//===================================================
//  Logical Modeli4rc-AdverseEvent.fsh
//===================================================
Logical: AdverseEventI4rc
Id: AdverseEvent
Title: "Adverse Event"
Description:  """Adverse Event"""
* episodeEventReference 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/EpisodeEvent "Episode Event reference" """EpisodeEvent element containing the data regarding the patient's cancer"""
* type 1..1 CodeableConcept "Adverse event type (CTCAE Term)" """the Common Terminology Criteria for Adverse Events (CTCAE) is used to identify the adverse events. It includes details of the adverse event type and grade"""
* occurredAt 1..1 CodeableConcept "Occurred at" """specifies which phase (baseline, progression) of the disease the adverse event is related to"""
* relatedTo 1..1 Reference "Adverse event related to" """specifies which treatment the adverse event is related to"""
* eventStartingDate 1..1 date "Adverse event starting date �" """specifies when adverse events begins"""
* eventDuration 1..1 CodeableConcept "Adverse event duration" """specifies the duration of the adverse event"""
* referstothepatientsfirstadverseevent 1..1 BackboneElement "M" """M"""
//--- END
//--- END
//--- END
//--- END
//--- END
//--- END
//--- END
//--- END
//--- END
//--- END






//--------------------------------------------------------------------------------
//  Logical Model - Comments
//--------------------------------------------------------------------------------





* eventDuration ^comment = """Less than one week; More than one week but  less than a month; More than a month but less than 3 months; More than 3 months; Unknown.
Custom"""

//--- END
//--- END
//--- END
