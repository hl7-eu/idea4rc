Instance: subject2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/idea4rc/ConceptMap/subject2FHIR"
* name = "Subject2FHIR"
* title = "Subject Model to this guide Map"
* status = #draft
* experimental = true
* description = """It shows how the Subject model is mapped into this guide"""
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-alcoholuse-eu-i4rc"
* group[=].element[+].code = #Subject.alcohol
* group[=].element[=].display = "Alcohol (M)"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "CodeableConcept"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-cci-eu-i4rc"
* group[=].element[+].code = #Subject.charlsonComorbidityIndex
* group[=].element[=].display = "Charlson Comorbidity index (R)"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "integer"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where obseravtion.code =  $sct#762713009 Charlson Comorbidity Index"
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-comorbidity-eu-i4rc"
* group[=].element[+].code = #Subject.comorbidity
* group[=].element[=].display = "Comorbidity (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The presence of a comorbidity condition is determined by the presence of an comorbidConditionPresent extension for that condition.
The absence by the presence of a comorbidConditionAbsent extension for that condition.
If none of them are specified, that comorbidity is unknown or undetermined.
For examplification purposes only the comorbidConditionPresent extension is shown for the included items"
* group[=].element[+].code = #Subject.comorbidity.myocardialInfarction
* group[=].element[=].display = "Myocardial infarction (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.congestiveHeartFailure
* group[=].element[=].display = "Congestive heart failure (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.peripheralVascularDisease
* group[=].element[=].display = "Peripheral vascular disease (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.cerebrovascularAccidentExceptHemiplegia
* group[=].element[=].display = "Cerebrovascular accident  (except hemiplegia) (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.dementia
* group[=].element[=].display = "Dementia (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.chronicPulmonaryDisease
* group[=].element[=].display = "Chronic pulmonary disease (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.connectiveTissueDisease
* group[=].element[=].display = "Connective tissue disease (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.ulcer
* group[=].element[=].display = "Ulcer (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.mildLiverDisease
* group[=].element[=].display = "Mild liver disease (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.moderateToSevereLiverDisease
* group[=].element[=].display = "Moderate to severe liver disease (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.diabetes
* group[=].element[=].display = "Diabetes (without complications) (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.diabetesWithEndOrganDamage
* group[=].element[=].display = "Diabetes with end organ damage (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.hemiplegia
* group[=].element[=].display = "Hemiplegia (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.moderateToSevereRenalDisease
* group[=].element[=].display = "Moderate to severe renal disease (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.solidTumor
* group[=].element[=].display = "Solid tumor (non metastatic) (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.metastaticSolidTumor
* group[=].element[=].display = "Metastatic solid tumor (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.leukemia
* group[=].element[=].display = "Leukemia (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.lymphoma
* group[=].element[=].display = "Lymphoma (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.multipleMyeloma
* group[=].element[=].display = "Multiple myeloma (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.comorbidity.aids
* group[=].element[=].display = "AIDS (O)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020
* group[=].element[=].display = "No Genetic syndrome (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The presence of a comorbidity condition is determined by the presence of an comorbidConditionPresent extension for that condition.
The absence by the presence of a comorbidConditionAbsent extension for that condition.
If none of them are specified, that comorbidity is unknown or undetermined.
For examplification purposes only the comorbidConditionPresent extension is shown for the included items"
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.olliersDisease
* group[=].element[=].display = "Olliers disease (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.maffuciSyndrome
* group[=].element[=].display = "Maffuci syndrome (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.liFraumeniSyndrome
* group[=].element[=].display = "Li-Fraumeni syndrome (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.mcCuneAlbrightSyndrome
* group[=].element[=].display = "McCune-Albright syndrome (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.multipleOsteochondromas
* group[=].element[=].display = "Multiple osteochondromas (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.neurofibromatosisType1
* group[=].element[=].display = "Neurofibromatosis type 1 (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.rothmundThomsonSyndrome
* group[=].element[=].display = "Rothmund-Thomson syndrome (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.wernerSyndrome
* group[=].element[=].display = "Werner syndrome (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.retinoblastoma
* group[=].element[=].display = "Retinoblastoma (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.pagetDisease
* group[=].element[=].display = "Paget disease (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.noGeneticSyndromeWho2020.otherSyndromes
* group[=].element[=].display = "Other Genetic syndrome (M)"
* group[=].element[=].target.code = #Observation.extension:comorbidConditionPresent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-ecog-performance-status-eu-i4rc"
* group[=].element[+].code = #Subject.ecogPsAtDiagnosis
* group[=].element[=].display = "Eastern Cooperative Oncology Group performance status (ECOG PS)  at diagnosis (R)"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "CodeableConcept"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where obseravtion.code =  $loinc#89247-1 ECOG Performance Status score"
* group[=].element[+].code = #Subject.ecogPsLabel
* group[=].element[=].display = "ECOG PS label (R)"
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-karnofsky-performance-status-eu-i4rc"
* group[=].element[+].code = #Subject.karnofsyIndexAtDiagnosis
* group[=].element[=].display = "Karnofsy index at diagnosis (R)"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "integer"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.karnofsyIndexLabel
* group[=].element[=].display = "Karnofsy index label (R)"
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-occurrencOtherCancer-eu-i4rc"
* group[=].element[+].code = #Subject.previousMalignantCancerSite
* group[=].element[=].display = "Previous malignant cancer site (R)"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "CodeableConcept"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-tobaccouse-eu-i4rc"
* group[=].element[+].code = #Subject.smoking
* group[=].element[=].display = "Smoking (M)"
* group[=].element[=].target.code = #Observation.component:smokingStatus.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "CodeableConcept"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.cigarettesPackYearsSmokedDuringLife
* group[=].element[=].display = "Cigarettes pack years smoked during life (R)"
* group[=].element[=].target.code = #Observation.component:packsPerYear.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "Quantity"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/observation-treatment-eu-i4rc"
* group[=].element[+].code = #Subject.previousCancerTreatment
* group[=].element[=].display = "Previous cancer treatment (R)"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "CodeableConcept"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/patient-eu-i4rc"
* group[=].element[+].code = #Subject.sex
* group[=].element[=].display = "Sex (M)"
* group[=].element[=].target.code = #Patient.gender
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "For the time being assumed to be the administrative gender"
* group[=].element[+].code = #Subject.race
* group[=].element[=].display = "Race (M)"
* group[=].element[=].target.code = #Patient.extension:race.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "CodeableConcept"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.birthYear
* group[=].element[=].display = "Birth year (M)"
* group[=].element[=].target.code = #Patient.birthDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "limited to the year"
* group[=].element[+].code = #Subject.countryOfResidence
* group[=].element[=].display = "Country of Residence (M)"
* group[=].element[=].target.code = #Patient.address.country.extension:countryCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Subject"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/bmi"
* group[=].element[+].code = #Subject.bmi

* group[=].element[=].display = "Height/weight (BMI)
 (R)"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.dependsOn.property = "datatype"
* group[=].element[=].target.dependsOn.value = "Quantity"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
