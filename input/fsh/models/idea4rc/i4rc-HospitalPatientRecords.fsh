//===================================================	
//  Logical Model	i4rc-HospitalPatientRecords.fsh
//===================================================	
Logical: HospitalPatientRecordsI4rc	
Id: HospitalPatientRecords	
Title: "Hospital Patient Records"	
Description:  """Hospital Patient Records"""	
* patient 1..1 http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject "Patient" """Patient element containing the data regarding the patient followed by the hospital"""	
* hospital 1..1 BackboneElement "Hospital" """Hospital element containing the data regarding the patient followed by the hospital"""	
* hospital.name 1..1 string "Hospital Name" """Hospital where the patients is included in the registry"""	
* firstContactDate 1..1 date "Date of first contact with the hospital" """Date of the first contact of the patient with the hospital registering the data. The hospital will record information on the patient's entire disease trajectory, thus also on procedures and/or  treatments performed in another hospital. The ?date of first contact? will be crossed with other dates to better understand which parts of the disease path were managed by the hospital that registered the patient."""	
//--- END	
//--- END	
//--- END



//--------------------------------------------------------------------------------	
//  Logical Model - Comments	
//--------------------------------------------------------------------------------	
* patient ^comment = """A patient element data
-"""	
* hospital ^comment = """A hospital element data
-"""

* firstContactDate ^comment = """Date
-"""	
//--- END	
//--- END	
//--- END

	
// -------------------------------------------------------------------------------	
// Obligations H&N	
// -------------------------------------------------------------------------------	
* patient insert ObligationActorAndCode($actor-headneck, #SHALL:handle)	
* hospital insert ObligationActorAndCode($actor-headneck, #SHALL:handle)	
* hospital.name insert ObligationActorAndCode($actor-headneck, #SHALL:handle)	
* firstContactDate insert ObligationActorAndCode($actor-headneck, #SHALL:handle)	
//--- END	
//--- END	
//--- END

	
// -------------------------------------------------------------------------------	
// Obligations Sarcoma	
// -------------------------------------------------------------------------------



	
//--- END	
//--- END	
//--- END	
