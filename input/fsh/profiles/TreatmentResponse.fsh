Alias: $cancerEpisodeReference = http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/ext-episode-event-reference
Alias: $eventLocation = http://hl7.org/fhir/StructureDefinition/event-location


Profile: ObservationTreatmentResponseI4rc
Parent: Observation
Id: observation-treatment-response-i4rc
Title: "Treatment Response : I4rc"
Description: "Treatment Response : I4rc"
* . ^short = "Treatment Response"
* extension contains 
  $eventLocation named eventLocation 1..1 MS and
  $cancerEpisodeReference named cancerEpisodeReference 1..1 MS //should use the goal resource ??
* partOf 1..1 
* partOf only Reference(SystemicTreatmentI4RC)  // treatment
* code from VsTreatmentResponseI4rc

  


Extension: ExtcancerEpisodeReference
Id: ext-cancer-Episode-Reference
Title: "Extension : cancerEpisodeReference"
Description: "Extension for the cancer Episode Reference"
* value[x] 1..1
* value[x] only Reference(ConditionSecondaryCancerI4rc or ConditionPrimaryCancerI4rc)
