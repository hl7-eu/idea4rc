Logical: DiseaseExtentI4RC
Id: DiseaseExtent
Title: "Disease Extent"
Description: """Disease Extent
Maturity Level: 0 Draft"""
* episodeEvent 1..* EpisodeEvent "Episode Event Reference (M)" """EpisodeEvent element containing the data regarding the patient's cancer 
"""
* episodeEvent insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* episodeEvent insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* localised 1..* boolean "Localised (M)" """Describes if there disease is local 
Localised and Number of tumor modules are variables that work together"""
* localised insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* localised insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* localised ^comment = """Confined disease - 32942"""
* numberOfTumorNodules 0..* integer "Number of tumor nodules (R)" """Indicates the number of tumor nodules in the case the disease is localised 
Localised and Number of tumor modules are variables that work together"""
* numberOfTumorNodules insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* numberOfTumorNodules insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* numberOfTumorNodules ^comment = """Number of tumor nodules - 4228659"""
* locoRegional 1..* boolean "Loco-regional (M)" """Indicates if the disease is in a loco-regional extent 
"""
* locoRegional insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* locoRegional insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* locoRegional ^comment = """

Invasive Disease - 32943


"""
* isTransitMetastasisWithClinicalConfirmation 1..* boolean "Is Transit metastasis with clinical confirmation (M)" """Indicates spread of cancer cells through lymphatic vessels, where they lodge and grow in tissues located between the primary tumor and the nearest regional lymph nodes. 
"""
* isTransitMetastasisWithClinicalConfirmation insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* isTransitMetastasisWithClinicalConfirmation insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* isTransitMetastasisWithClinicalConfirmation ^comment = """Transit Metastasis with Clinical Confirmation - 36769249

"""
* isMultifocalTumor 1..* boolean "Is Multifocal tumor (M)" """Presence of multiple distinct tumor foci (or nodules) within the same organ or tissue, originating from the same primary tumor type. These foci may arise through independent tumorigenesis (multiple primary lesions) or local spread of the same cancer. 
"""
* isMultifocalTumor insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* isMultifocalTumor insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* isMultifocalTumor ^comment = """Multifocal Tumor - 36769933

"""
* regionalNodalMetastases 1..* boolean "Regional nodal metastases (M)" """Describes if regional nodal mestastases happened 
"""
* regionalNodalMetastases insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* regionalNodalMetastases insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* regionalNodalMetastases ^comment = """Regional spread to lymph node - 36769269
"""
* sites 0..* BackboneElement "sites (R)" """Describes if site of metastasic disease  is soft tissue"""
* sites insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.softTissue 0..* boolean "Soft tissue (R)" """Describes if site of metastasic disease  is soft tissue 
"""
* sites.softTissue insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.softTissue insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.softTissue ^comment = """Metastasis to soft tissues - 35225724"""
* sites.distantLymphNode 0..* boolean "distant lymph node (R)" """Describes if site of metastasic disease  is dystan lymph node 
"""
* sites.distantLymphNode insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.distantLymphNode insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.distantLymphNode ^comment = """Distant spread to lymph node - 36769243"""
* sites.lung 0..* boolean "lung (R)" """Describes if site of metastasic disease  is lung 
"""
* sites.lung insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.lung insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.lung ^comment = """        Metastasis to lung - 36770283"""
* sites.metastasisatbone 0..* boolean "metastasisAtBone (R)" """Describes if site of metastasic disease  is bone 
"""
* sites.metastasisatbone insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.metastasisatbone insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.metastasisatbone ^comment = """Metastasis to bone - 36769301"""
* sites.liver 0..* boolean "liver (R)" """Describes if site of metastasic disease  is liver 
"""
* sites.liver insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.liver insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.liver ^comment = """Metastasis to liver - 36770544"""
* sites.pleura 0..* boolean "pleura (R)" """Describes if site of metastasic disease  is pleura 
"""
* sites.pleura insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.pleura insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.pleura ^comment = """Metastasis to pleura - 35226258"""
* sites.peritoneum 0..* boolean "peritoneum (R)" """Describes if site of metastasic disease  is peritoneum 
"""
* sites.peritoneum insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.peritoneum insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.peritoneum ^comment = """        Metastasis to peritoneum - 35226253"""
* sites.brain 0..* boolean "brain (R)" """Describes if site of metastasic disease  is brain 
"""
* sites.brain insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.brain insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.brain ^comment = """Metastasis to brain - 36768862"""
* sites.otherViscera 0..* boolean "other viscera (R)" """Describes if site of metastasic disease  is other viscera 
Use the generic metastasis code or a metastasis subsumed in it, 36769180"""
* sites.otherViscera insert ObligationActorAndCode($actor-headneck, #SHALL:handle)
* sites.otherViscera insert ObligationActorAndCode($actor-sarcoma-i4rc, #SHALL:handle)
* sites.otherViscera ^comment = """Metastasis - 36769180"""
