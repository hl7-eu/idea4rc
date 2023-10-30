ValueSet: VsSubsiteAthenaI4rc
Id: nasal-subsite-athena-i4rc
Title: "Subsites: Athena"
Description: "Specifies the subsites where cancers occured: Athena"
//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true

* codes from valueset VsNasalandParanasalSubsiteAthenaI4rc
* codes from valueset VsNasopharynxSubsiteAthenaI4rc
* codes from valueset VsHypopharynxSubsiteAthenaI4rc
* codes from valueset VsOropharynxSubsiteAthenaI4rc
* codes from valueset VsLarynxSubsiteAthenaI4rc
* codes from valueset VsOralCavitySubsiteAthenaI4rc
* codes from valueset VsLipSubsiteAthenaI4rc


ValueSet: VsSubsiteSnomedI4rc
Id: nasal-subsite-sct-i4rc
Title: "Subsites: SNOMED CT"
Description: "Specifies the subsites where cancers occured: SNOMED CT"
//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true

* codes from valueset VsNasalandParanasalSubsiteSnomedI4rc
* codes from valueset VsNasopharynxSubsiteSnomedI4rc
* codes from valueset VsHypopharynxSubsiteSnomedI4rc
* codes from valueset VsOropharynxSubsiteSnomedI4rc
* codes from valueset VsLarynxSubsiteSnomedI4rc
* codes from valueset VsOralCavitySubsiteSnomedI4rc
* codes from valueset VsLipSubsiteSnomedI4rc

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsNasalandParanasalSubsiteAthenaI4rc
Id: nasal-paranasal-subsite-athena-i4rc
Title: "Nasal cavity and paranasal sinuses subsite: Athena"
Description: "Specifies the subsite for cancers occured in nasal cavity and paranasal sinusess: Athena"
//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $athena#4088327    "nasal cavity"   
* $athena#4050631   "maxillary sinus"   
* $athena#4182234    "ethmoid sinus"   
* $athena#4204534    "frontal sinus"
* $athena#4097172    "sphenoid sinus"  

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsNasalandParanasalSubsiteSnomedI4rc
Id: nasal-paranasal-subsite-sct-i4rc
Title: "Nasal cavity and paranasal sinuses subsite: Snomed CT"
Description: "Specifies the subsite for cancers occured in nasal cavity and paranasal sinusess: Snomed CT"
//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $sct#126670003 // Neoplasm of nasal cavity (disorder)
* $sct#126676009 // Neoplasm of maxillary sinus (disorder)
* $sct#126677000 // Neoplasm of ethmoidal sinus (disorder)
* $sct#126678005 // Neoplasm of frontal sinus (disorder)
* $sct#126679002 // Neoplasm of sphenoidal sinus (disorder)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsNasopharynxSubsiteAthenaI4rc
Id: nasopharynx-subsite-athena-i4rc
Title: "Nasopharynx subsite: Athena"
Description: "Specifies the subsite for cancers occured in nasopharynx: Athena"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $athena#4068978   "superior wall of nasopharynx"   
* $athena#4146741   "posterior wall of nasopharynx"   
* $athena#4323979   "lateral wall of nasopharynx"   
* $athena#4220236   "anterior wall of nasopharynx"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsNasopharynxSubsiteSnomedI4rc
Id: nasopharynx-subsite-sct-i4rc
Title: "Nasopharynx subsite: Snomed CT"
Description: "Specifies the subsite for cancers occured in nasopharynx: Snomed CT"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $sct#126684008 // Neoplasm of anterior wall of nasopharynx (disorder)
* $sct#126683002 // Neoplasm of lateral wall of nasopharynx (disorder)
* $sct#126682007 // Neoplasm of posterior wall of nasopharynx (disorder)
* $sct#126681000 // Neoplasm of superior wall of nasopharynx (disorder)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsHypopharynxSubsiteAthenaI4rc
Id: hypopharynx-subsite-athena-i4rc
Title: "Hypopharynx subsite: Athena"
Description: "Specifies the subsite for cancers occured in hypopharynx: Athena"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $athena#4147741    "postcricoid region"   
* $athena#4262980   "hypopharyngeal aspect of aryepiglottic fold"   
* $athena#4102600    "posterior wall of hypopharynx"   
* $athena#4268741    "pyriform sinus"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsHypopharynxSubsiteSnomedI4rc
Id: hypopharynx-subsite-sct-i4rc
Title: "Hypopharynx subsite: Snomed CT"
Description: "Specifies the subsite for cancers occured in hypopharynx: Snomed CT"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $sct#254505000 // Tumor of aryepiglottic fold - hypopharyngeal aspect (disorder)
* $sct#126687001 // Neoplasm of postcricoid region (disorder)
* $sct#126691006 // Neoplasm of posterior hypopharyngeal wall (disorder)
* $sct#126688006 // Neoplasm of pyriform sinus (disorder)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsOropharynxSubsiteAthenaI4rc
Id: oropharynx-subsite-athena-i4rc
Title: "Oropharynx subsite: Athena"
Description: "Specifies the subsite for cancers occured in Oropharynx: Athena"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $athena#4169910    "base of tongue"   
* $athena#4177005   "soft palate NOS"   
* $athena#4095284    "Uvula"   
* $athena#4138234    "tonsilla fossa"
* $athena#4068841    "lingual tonsil"   
* $athena#4065073   "tonsillar pillar"   
* $athena#4173123    "Vallecula"   
* $athena#4283238    "anterior surface of epiglottis"
* $athena#4078066    "lateral wall oropharynx"   
* $athena#4045435   "posterior wall oropharynx"   
* $athena#4235649    "branchial cleft"   



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsOropharynxSubsiteSnomedI4rc
Id: oropharynx-subsite-sct-i4rc
Title: "Oropharynx subsite: Snomed CT"
Description: "Specifies the subsite for cancers occured in Oropharynx: Snomed CT"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $sct#126813005 // Neoplasm of anterior aspect of epiglottis (disorder)
* $sct#126779009 // Neoplasm of base of tongue (disorder)
* $sct#126815003 // Neoplasm of lateral wall of oropharynx (disorder)
* $sct#126816002 // Neoplasm of posterior wall of oropharynx (disorder)
* $sct#126811007 // Neoplasm of tonsillar pillar (disorder)
* $sct#126807001 // Neoplasm of soft palate (disorder)
* $sct#126808006 // Neoplasm of uvula (disorder)
* $sct#126810008 // Neoplasm of tonsillar fossa (disorder)
* $sct#126812000 // Neoplasm of vallecula (disorder)
* $sct#448868009 // Malignant neoplasm of lateral wall of oropharynx (disorder)
* $sct#363396004 // Malignant tumor of branchial cleft (disorder)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLarynxSubsiteAthenaI4rc
Id: larynx-subsite-athena-i4rc
Title: "Larynx subsite: Athena"
Description: "Specifies the subsite for cancers occured in Larynx: Athena"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $athena#4047227    "glottis"   
* $athena#4177005   "supraglottis"   
* $athena#4002724    "subglottis"   
* $athena#4279711    "laryngeal cartilage"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLarynxSubsiteSnomedI4rc
Id: larynx-subsite-sct-i4rc
Title: "Larynx subsite: Snomed CT"
Description: "Specifies the subsite for cancers occured in Larynx: Snomed CT"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $sct#126693009 // Neoplasm of glottis (disorder)
* $sct#126696001 // Neoplasm of subglottis (disorder)
* $sct#126697005 // Neoplasm of supraglottis (disorder)
* $sct#254528004 // Tumor of laryngeal cartilage (disorder)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsOralCavitySubsiteAthenaI4rc
Id: oralCavity-subsite-athena-i4rc
Title: "Oral cavity subsite: Athena"
Description: "Specifies the subsite for cancers occured in oral cavity: Athena"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $athena#36769609    "dorsal surface tongue"   
* $athena#4077986   "border of tongue"   
* $athena#4172794    "ventral surface of tongue"   
* $athena#4047029    "upper gum"
* $athena#4210919    "lower gum"   
* $athena#4181419    "anterior floor of mouth"
* $athena#4103066    "lateral floor of mouth"   
* $athena#44498949   "overlapping lesion of floor of mouth"   
* $athena#4234542    "hard palate"   
* $athena#4057160    "cheek mucosa"
* $athena#4144069    "vestibule of mouth"   
* $athena#36769865    "retromolar area"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsOralCavitySubsiteSnomedI4rc
Id: oralCavity-subsite-sct-i4rc
Title: "Oral cavity subsite: Snomed CT"
Description: "Specifies the subsite for cancers occured in oral cavity: Snomed CT"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $sct#275490009 // Carcinoma of tongue base - dorsal surface (disorder)
* $sct#92768006 // Carcinoma in situ of border of tongue (disorder)
* $sct#275394001 // Carcinoma ventral surface of tongue (disorder)
* $sct#126804008 // Neoplasm of retromolar area (disorder)
* $sct#254424004 // Carcinoma of upper gum (disorder)
* $sct#254425003 // Carcinoma of lower gum (disorder)
* $sct#254426002 // Tumor of anterior floor of mouth (disorder) 
* $sct#254430004 // Tumor of lateral floor of mouth (disorder)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLipSubsiteAthenaI4rc
Id: lip-subsite-athena-i4rc
Title: "Lip subsite: Athena"
Description: "Specifies the subsite for cancers occured in lip: Athena"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $athena#4027546    "external lower lip"   
* $athena#4134589   "external upper lip"   
* $athena#4027545    "external lip"   
* $athena#36769700    "mucosa of upper lip"
* $athena#36768548    "mucosa of lower lip"   
* $athena#4245168    "mucosa of lip"
* $athena#4307358    "commisure of lip"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLipSubsiteSnomedI4rc
Id: lip-subsite-sct-i4rc
Title: "Lip subsite: Snomed CT"
Description: "Specifies the subsite for cancers occured in lip: Snomed CT"

//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = true
* $sct#254389005 // Carcinoma of vermilion border of upper lip (disorder)
* $sct#92795001 // Carcinoma in situ of vermilion border of lip (disorder)
* $sct#254390001 // Carcinoma of vermilion border of lower lip (disorder)
* $sct#187606005 // Malignant tumor of upper labial mucosa (disorder)
* $sct#271568003 // Malignant tumor of lower labial mucosa (disorder)
* $sct#187622006 // Malignant tumor of labial mucosa (disorder)
