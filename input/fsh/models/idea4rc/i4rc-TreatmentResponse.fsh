//===================================================
//  Logical Modeli4rc-TreatmentResponse.fsh
//===================================================
Logical: TreatmentResponseI4rc
Id: TreatmentResponse
Title: "Treatment Response"
Description:  """Treatment Response"""
* cancerEpisodeReference 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/CancerEpisode "Cancer Episode reference" """CancerEpisode element containing the data regarding the patient's cancer"""
* treatmentResponse 1..1 CodeableConcept "Treatment response (based on imaging alone; no recist or other criteria)" """It refers to the response to the entire therapy administered to the patient. It measures how well a cancer patient responds to treatment. RECIST criteria should not be applied. The definition of Complete response; Partial response; Stable disease; Progression, should be based on the clinical judgement based on imaging."""
* whereDone 1..1 CodeableConcept "Treatment response defined/done" """refers to whether overall treatment reponse was assessed at the registering hospital or another."""
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
//--- END
//--- END
//--- END
//--- END






//--------------------------------------------------------------------------------
//  Logical Model - Comments
//--------------------------------------------------------------------------------

* treatmentResponse ^comment = """Complete response; partial response; stable disease; progression; unknown
Complete response - 4163135
Partial response -  4161302
Stable disease - 4241442
Progression - 4168352
Unknown - 4129922"""
* whereDone ^comment = """At the hospital; At a different hospital
Custom"""
//--- END
//--- END
//--- END
//--- END
//--- END
//--- END
//--- END
