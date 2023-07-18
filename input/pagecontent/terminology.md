### Code Systems

These code systems have been defined for this implementation guide:
<ul>{% include list-simple-codesystems.xhtml %}</ul>

### Value Sets

These value sets have been defined for this implementation guide:
<ul>{% include list-simple-valuesets.xhtml %}</ul>

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TestResult
Id: Test-Result-I4rc
Title: "Test Result (IDEA4RC)"
Description: "Test result used in the IDEA4RC project to determine a positive, negative or not tested patient"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#416237000 // patient not tested (situation)
* $snomed#10828004 // positive patient (qualifier value)
* $snomed#260385009 // negative patient (qualifier value)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Site rare
Id: Site-rare-I4rc
Title: "Site rare (IDEA4RC)"
Description: "Describe the primary tumor site"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#126670003 // Neoplasm of nasal cavity (disorder)
* $snomed#126680004 // Neoplasm of nasopharynx (disorder)
* $snomed#126788000 // Neoplasm of parotid gland (disorder)
* $snomed#126789008 // Neoplasm of submaxillary gland (disorder)
* $snomed#126790004 // Neoplasm of sublingual gland (disorder)
* $snomed#127006003 // Neoplasm of middle ear (disorder)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Nasal cavity and paranasal sinuses subsite
Id: Nasalcavity-and-paranasal-sinuses-subsite-I4rc
Title: "Nasal cavity and paranasal sinuses subsite (IDEA4RC)"
Description: "Specifies the subsite for cancers occured in nasopharynx"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#126670003 // Neoplasm of nasal cavity (disorder)
* $snomed#126676009 // Neoplasm of maxillary sinus (disorder)
* $snomed#126677000 // Neoplasm of ethmoidal sinus (disorder)
* $snomed#126678005 // Neoplasm of frontal sinus (disorder)
* $snomed#126679002 // Neoplasm of sphenoidal sinus (disorder)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Nasopharynx subsite
Id: Nasopharynx-subsite-I4rc
Title: "Nasopharynx subsite (IDEA4RC)"
Description: "Specifies the subsite for cancers occured in nasopharynx"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#126684008 // Neoplasm of anterior wall of nasopharynx (disorder)
* $snomed#126683002 // Neoplasm of lateral wall of nasopharynx (disorder)
* $snomed#126682007 // Neoplasm of posterior wall of nasopharynx (disorder)
* $snomed#126681000 // Neoplasm of superior wall of nasopharynx (disorder)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Hypopharynx subsite
Id: Hypopharynx-subsite-I4rc
Title: "Hypopharynx subsite (IDEA4RC)"
Description: "Specifies the subsite for cancers occured in hypopharynx"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#254505000 // Tumor of aryepiglottic fold - hypopharyngeal aspect (disorder)
* $snomed#126687001 // Neoplasm of postcricoid region (disorder)
* $snomed#126691006 // Neoplasm of posterior hypopharyngeal wall (disorder)
* $snomed#126688006 // Neoplasm of pyriform sinus (disorder)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Oropharynx subsite
Id: Oropharynx-subsite-I4rc
Title: "Oropharynx subsite (IDEA4RC)"
Description: "Specifies the subsite for cancers occured in Oropharynx"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#126813005 // Neoplasm of anterior aspect of epiglottis (disorder)
* $snomed#126779009 // Neoplasm of base of tongue (disorder)
* $snomed#126815003 // Neoplasm of lateral wall of oropharynx (disorder)
* $snomed#126816002 // Neoplasm of posterior wall of oropharynx (disorder)
* $snomed#126811007 // Neoplasm of tonsillar pillar (disorder)
* $snomed#126807001 // Neoplasm of soft palate (disorder)
* $snomed#126808006 // Neoplasm of uvula (disorder)
* $snomed#126810008 // Neoplasm of tonsillar fossa (disorder)
* $snomed#126811007 // Neoplasm of tonsillar pillar (disorder)
* $snomed#126812000 // Neoplasm of vallecula (disorder)
* $snomed#448868009 // Malignant neoplasm of lateral wall of oropharynx (disorder)
* $snomed#126816002 // Neoplasm of posterior wall of oropharynx (disorder)
* $snomed#363396004 // Malignant tumor of branchial cleft (disorder)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Larynx subsite
Id: Larynx-subsite-I4rc
Title: "Larynx subsite (IDEA4RC)"
Description: "Specifies the subsite for cancers occured in Larynx"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#126693009 // Neoplasm of glottis (disorder)
* $snomed#126696001 // Neoplasm of subglottis (disorder)
* $snomed#126697005 // Neoplasm of supraglottis (disorder)
* $snomed#254528004 // Tumor of laryngeal cartilage (disorder)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Oral cavity subsite
Id: Oralcavity-subsite-I4rc
Title: "Oral cavity subsite (IDEA4RC)"
Description: "Specifies the subsite for cancers occured in oral cavity"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#275490009 // Carcinoma of tongue base - dorsal surface (disorder)
* $snomed#92768006 // Carcinoma in situ of border of tongue (disorder)
* $snomed#275394001 // Carcinoma ventral surface of tongue (disorder)
* $snomed#126804008 // Neoplasm of retromolar area (disorder)
* $snomed#254424004 // Carcinoma of upper gum (disorder)
* $snomed#254425003 // Carcinoma of lower gum (disorder)
* $snomed#254426002 // Tumor of anterior floor of mouth (disorder) 
* $snomed#254430004 // Tumor of lateral floor of mouth (disorder)



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Lip subsite
Id: Lip-subsite-I4rc
Title: "Lip subsite (IDEA4RC)"
Description: "Specifies the subsite for cancers occured in lip"

//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from SNOMED (https://browser.ihtsdotools.org/?)."
* $snomed#254389005 // Carcinoma of vermilion border of upper lip (disorder)
* $snomed#92795001 // Carcinoma in situ of vermilion border of lip (disorder)
* $snomed#254390001 // Carcinoma of vermilion border of lower lip (disorder)
* $snomed#187606005 // Malignant tumor of upper labial mucosa (disorder)
* $snomed#271568003 // Malignant tumor of lower labial mucosa (disorder)
* $snomed#187622006 // Malignant tumor of labial mucosa (disorder)









### Concept Maps

These concept maps have been defined for this implementation guide:
<ul>{% include list-simple-conceptmaps.xhtml %}</ul>