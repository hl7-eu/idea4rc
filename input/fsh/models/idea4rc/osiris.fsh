// -------------------------------------------------------------------------------				
//  Logical Model				osiris.fsh
// -------------------------------------------------------------------------------				
Logical: Osiris				
Id: Osiris				
Title: "Osiris Model"				
Description:  """Osiris Data Element Concept"""				
* Patient 1..* BackboneElement "Patient" """Patient"""				
* Patient.Id 1..* string "Patient Id [C1]" """Patient ID in the center providing the information

mandatory"""				
* Patient.Gender 1..* string "Gender [C2]" """Gender of the patient

ConceptualRaceHIR:AdministraRacerRace

mandatory"""				
* Patient.Ethnicity 0..* string "Ethnicity [C3]" """Ethnicity of the patient

ConceptualDomain: FHIR:Race

optional"""				
* Patient.BirthDate 1..* date "Birth Date [C4]" """Date of birth of the patient

mandatory"""				
* Patient.DeathDate 0..* date "Death Date [C5]" """Date of death of the patient

optional"""				
* Patient.ProviderCenterId 1..* string "Provider  Center  Id [C6]" """Center ID of the center providing the information

mandatory"""				
* Patient.OriginCenterId 1..* string "Origin  Center  Id [C71]" """Center ID of the center of origin of the patient

mandatory"""				
* Patient.CauseOfDeath 0..* string "Cause of death [C7]" """Description of the cause of death of the patient 

ConceptualDomain: UMLS:C0007465

mandatory if DeathDate is set"""				
* Patient.LastNewsDate 1..* date "Last News Date [C8]" """Date of last news (= date of last patient visit if there is no other information available) (day is set to the 15th)

mandatory"""				
* Patient.LastNewsStatus 1..* string "Last News Status [C9]" """Indicator of the patient's last known vital status (alive or deceased)

ConceptualDomain: OSIRIS:LastNewsStatus

mandatory"""				
* Consent 1..* BackboneElement "Consent" """Consent"""				
* Consent.Date 1..* date "Date [C72]" """Date of consent signature

mandatory"""				
* Consent.GeneticAnalysisAuthorization 1..* string "Genetic Analysis Authorization [C79]" """Consent for genetic analysis

ConceptualDomain: OSIRIS:Boolean

mandatory"""				
* RelatedPathology 0..* BackboneElement "RelatedPathology" """RelatedPathology"""				
* RelatedPathology.PathologyCode 0..* string "Pathology Code [C13]" """International code for the related disease (other than cancer). 3 characters.

ConceptualDomain: ICD10

mandatory if ObjectClass is set"""				
* RelatedPathology.DiagnosisDate 0..* date "Diagnosis Date [C14]" """Date of diagnosis for the related disease.

mandatory if ObjectClass is set"""				
* RelatedPathology.PathologyEndDate 0..* date "Pathology End Date [C15]" """Date of the end of the related disease (if occuring and known)

optional"""				
* FamilyCancerHistory 0..* BackboneElement "FamilyCancerHistory" """FamilyCancerHistory"""				
* FamilyCancerHistory.TopographyCode 0..* string "Topography Code [C17]" """International code for the localization of the oncologic primary site

ConceptualDomain: ICDO3:Topography

mandatory if ObjectClass is set"""				
* FamilyCancerHistory.Parentage 0..* string "Parentage [C77]" """Family relationship

ConceptualDomain: OSIRIS:FamilyCancerHistoryParentage

mandatory if ObjectClass is set"""				
* TumorPathologyEvent 1..* BackboneElement "TumorPathologyEvent" """TumorPathologyEvent"""				
* TumorPathologyEvent.Type 1..* string "Type [C20]" """The field 'Type' allows to describe the 'Cancer' event as a global disease, as well as the various events constituting this disease (primary tumor, local relapse, metastatic relapse...)

ConceptualDomain: OSIRIS:EventType

mandatory"""				
* TumorPathologyEvent.StartDate 1..* date "Start Date [C21]" """Date of start of cancer event or disease

mandatory"""				
* TumorPathologyEvent.EndDate 0..* date "End Date [C82]" """Date of end of cancer event or disease

optional"""				
* TumorPathologyEvent.PerformanceStatus 0..* string "Performance Status [C22]" """Definition of the autonomy scale (Karnofsky scale or OMS)

ConceptualDomain: OMS:PerformanceStatus

optional"""				
* TumorPathologyEvent.G8 0..* integer "G8 score [C23]" """Tool for the evaluation of the general condition of the patient

optional"""				
* TumorPathologyEvent.HistologicalGradeType 0..* string "Histological Grade Type [C29]" """List of histological grading scales

ConceptualDomain: OSIRIS:HistologicalGradeType

optional, mandatory if HistologicalGradeValue is set"""				
* TumorPathologyEvent.HistologicalGradeValue 0..* string "Histological Grade Value [C30]" """Value of histological grade

ConceptualDomain: OSIRIS:HistologicalGradeValue

optional, mandatory if HistologicalGradeType is set"""				
* TumorPathologyEvent.StadeType 0..* string "Stade Type [C31]" """List of stage scales

ConceptualDomain: OSIRIS:StadeType

optional, mandatory if StadeValue is set"""				
* TumorPathologyEvent.StadeValue 0..* string "Stade Value [C32]" """Stage value

ConceptualDomain: OSIRIS:StadeValue

optional, mandatory if StadeType is set"""				
* TumorPathologyEvent.DiagnosisDate 1..* date "Diagnosis Date [C33]" """Date of diagnosis of the tumor event

mandatory"""				
* TumorPathologyEvent.TopographyCode 1..* string "Topography Code [C34]" """Localisation of the primary tumor

ConceptualDomain: ICDO3:Topography

mandatory"""				
* TumorPathologyEvent.MorphologyCode 1..* string "Morphology Code [C35]" """International code of lesion / histological type / tumor morphology of the tumoral event

ConceptualDomain: ICDO3:Morphology

mandatory"""				
* TumorPathologyEvent.Laterality 0..* string "Laterality [C36]" """Laterality of location (if it exists)

ConceptualDomain: OSIRIS:Laterality

optional"""				
* TNM 0..* BackboneElement "TNM" """TNM"""				
* TNM.T 0..* string "T [C83]" """Size of the tumor, propagation the site of the primary tumor

ConceptualDomain: OSIRIS:T_TNM

optional, mandatory if either N, M or TNMType is set"""				
* TNM.N 0..* string "N [C84]" """Propagation at the ganglion level

ConceptualDomain: OSIRIS:N_TNM

optional, mandatory if either T, M or TNMType is set"""				
* TNM.M 0..* string "M [C85]" """Remote propagation, presence of metastases

ConceptualDomain: OSIRIS:M_TNM

optional, mandatory if either T, N or TNMType is set"""				
* TNM.Version 0..* string "TNM Version [C86]" """TNM classification version

ConceptualDomain: OSIRIS:TNMVersion

optional"""				
* TNM.Type 0..* string "TNM Type [C87]" """c, p, r,...

ConceptualDomain: OSIRIS:TNMType

optional, mandatory if either T, N or M is set"""				
* Analysis 0..* BackboneElement "Analysis" """Analysis"""				
* Analysis.Code 0..* string "Code [C70]" """Code of analysis

optional"""				
* Analysis.Type 0..* string "Type [C37]" """Type of analysis

ConceptualDomain: OSIRIS:AnalysisType

mandatory if ObjectClass is set"""				
* Analysis.Date 0..* date "Date [C38]" """Date of analysis

mandatory if ObjectClass is set"""				
* ResponseEvaluation 0..* BackboneElement "ResponseEvaluation" """ResponseEvaluation"""				
* ResponseEvaluation.Date 0..* date "Date [C78]" """Date of assessment of treatment response

mandatory if ObjectClass is set"""				
* ResponseEvaluation.Status 0..* string "Status [C73]" """Assessment of treatment response

ConceptualDomain: OSIRIS:RECIST

mandatory if ObjectClass is set"""				
* Biomarker 0..* BackboneElement "Biomarker" """Biomarker"""				
* Biomarker.Code 0..* string "Code [C39]" """Biomarker name

ConceptualDomain: OSIRIS:BiomarkerCode

mandatory if ObjectClass is set"""				
* Biomarker.Value 0..* string "Value [C40]" """Biomarker value

mandatory if ObjectClass is set"""				
* Biomarker.Unit 0..* string "Unit [C81]" """Biomarker unit

optional"""				
* Treatment 0..* BackboneElement "Treatment" """Treatment"""				
* Treatment.Type 0..* string "Type [C41]" """Type of treatment

ConceptualDomain: OSIRIS:TreatmentType

mandatory if ObjectClass is set"""				
* Treatment.LineNumber 0..* string "Line Number [C74]" """Line of treatment

optional"""				
* Treatment.ActivityCode 0..* string "Activity Code [C42]" """CCAM code of the medical act

ConceptualDomain: CCAM

optional"""				
* Treatment.StartDate 0..* date "Start Date [C43]" """Date of treatment start

mandatory if ObjectClass is set"""				
* Treatment.EndDate 0..* date "End Date [C44]" """Date of treatment end

mandatory if ObjectClass is set"""				
* Treatment.ClinicalTrialContext 0..* string "Clinical Trial Context [C45]" """Treatment performed in a clinical study setting

ConceptualDomain: OSIRIS:Boolean

optional"""				
* Treatment.ClinicalTrialName 0..* string "Clinical Trial Name [C75]" """Name of the clinical study

optional, mandatory if ClinicalTrialContext is 'Yes'"""				
* Treatment.ClinicalTrialId 0..* string "Clinical Trial Id [C76]" """NCT identifier of the clinical study

optional, mandatory if ClinicalTrialContext is 'Yes'"""				
* Treatment.SurgeryResectionQuality 0..* string "Surgery Resection Quality [C46]" """Quality of resection (anapath)

ConceptualDomain: OSIRIS:SurgeryResectionQuality

optional"""				
* Treatment.SurgeryNature 0..* string "Surgery Nature [C47]" """Nature of the surgery

optional"""				
* AdverseEvent 0..* BackboneElement "AdverseEvent" """AdverseEvent"""				
* AdverseEvent.Code 0..* string "Code [C48]" """International code of the adverse event occurring during treatment (excluding other cancer), only the first 4 letters.

ConceptualDomain: MedDRA_CTCAE-v5.0

mandatory if ObjectClass is set"""				
* AdverseEvent.Date 0..* date "Date [C49]" """Date of the diagnosis of the adverse event

mandatory if ObjectClass is set"""				
* AdverseEvent.EndDate 0..* date "End Date [C50]" """End date of the adverse event (if known)

optional"""				
* AdverseEvent.Grade 0..* string "Grade [C80]" """Grade of the adverse event

mandatory if ObjectClass is set"""				
* Drug 0..* BackboneElement "Drug" """Drug"""				
* Drug.Code 0..* string "Code [C51]" """Therapeutic classification code (5th level if possible)

ConceptualDomain: ATC

mandatory if ObjectClass is set"""				
* Drug.Name 0..* string "Name [C52]" """Name of the molecule

mandatory if ObjectClass is set"""				
* BiologicalSample 0..* BackboneElement "BiologicalSample" """BiologicalSample"""				
* BiologicalSample.ExternalAccession 0..* string "Sample External Accession [C53]" """Unique identifier of the sample

mandatory if ObjectClass is set"""				
* BiologicalSample.ParentExternalAccession 0..* string "Parent sample External Accession [C54]" """Unique identifier of the parent sample (if there is one, example histo#)

optional"""				
* BiologicalSample.CollectDate 0..* date "Collect Date [C56]" """Date of sampling

mandatory if ObjectClass is set"""				
* BiologicalSample.TopographyCode 0..* string "Topography Code [C57]" """Code of tumor localization

ConceptualDomain: ICDO3:Topography

mandatory if ObjectClass is set"""				
* BiologicalSample.Nature 0..* string "Nature [C58]" """Nature of the sample

ConceptualDomain: OSIRIS:SampleNature

mandatory if ObjectClass is set"""				
* BiologicalSample.Origin 0..* string "Origin [C59]" """Nature of the original sample (Healthy or Tumoral)

ConceptualDomain: OSIRIS:SampleOrigin

mandatory if ObjectClass is set"""				
* BiologicalSample.StorageTemperature 0..* string "Storage Temperature [C60]" """Mode of preservation

ConceptualDomain: OSIRIS:StorageTemperature

optional"""				
* BiologicalSample.TumorCellularity 0..* integer "Tumor Cellularity [C61]" """Percentage of tumor cells quantified in the sample

optional"""				
* Technology 1..* BackboneElement "Technology" """Technology"""				
* Technology.TechnicalProtocol 1..* string "Technical Protocol [O6]" """Protocol used for the experiment

ConceptualDomain: OSIRIS:TechnicalProtocol

mandatory"""				
* Technology.PlatformName 1..* string "Platform Name [O7]" """Technological platform name (provider followed by the platform name)

ConceptualDomain: OSIRIS:PlatformName

mandatory"""				
* Technology.PlatformAccession 0..* string "Platform Accession [O8]" """GEO Identifier of the platform

optional"""				
* Technology.DateOfExperiment 0..* date "Date Of Experiment [O9]" """Date when the experiment was performed

optional"""				
* Panel 0..* BackboneElement "Panel" """Panel"""				
* Panel.Name 0..* string "Name [O10]" """Name of the panel targeted by the experimental analysis (provider followed by the panel name)

ConceptualDomain: OSIRIS:PanelName

optional"""				
* AnalysisProcess 1..* BackboneElement "AnalysisProcess" """AnalysisProcess"""				
* AnalysisProcess.AnalyticPipelineCode 1..* string "Analytic Pipeline Code [O11]" """Identifier of the pipeline used into the analysis (unique in the center)

mandatory"""				
* OmicAnalysis 0..* BackboneElement "OmicAnalysis" """OmicAnalysis"""				
* OmicAnalysis.AlgorithmicCellularity 0..* integer "Algorithmic Cellularity [O12]" """Calculated percentage of tumor cells in sample

optional"""				
* OmicAnalysis.AlgorithmicPloidy 0..* string "Algorithmic Ploidy [O13]" """Calculated number of sets of chromosomes in a cell of the sample

ConceptualDomain: OSIRIS:AlgorithmicPloidy

optional"""				
* OmicAnalysis.NumberOfBreakPoints 0..* integer "Number Of Break Points [O14]" """Calculated number of break points in genomic profile

optional"""				
* AlterationOnSample 1..* BackboneElement "AlterationOnSample" """AlterationOnSample"""				
* AlterationOnSample.AlterationType 1..* string "Alteration Type [O15]" """General type of the detected genetic alteration (high level type)

ConceptualDomain: OSIRIS:AlterationType

mandatory"""				
* AlterationOnSample.Pathogenicity 0..* string "Pathogenicity [O81]" """Conclusion of the biologist on the pathogenicity of the variant before the Molecular Tumor Board

ConceptualDomain: OSIRIS:AlterationOnSample_Pathogenicity

optional"""				
* AlterationOnSample.Actionability 0..* string "Actionability [O82]" """Conclusion of the clinicians wether the variant is actionable or not during the Molecular Tumor Board

ConceptualDomain: OSIRIS:AlterationOnSample_Actionability

optional"""				
* AlterationOnSample.ProposedForOrientation 0..* string "Proposed For Orientation [O83]" """Is the ClinicalTumorBoardConclusion used to orient the treatment decision ?

ConceptualDomain: OSIRIS:Boolean

optional"""				
* Validation 0..* BackboneElement "Validation" """Validation"""				
* Validation.Type 0..* string "Type [O16]" """Type of validation of the detected alteration

ConceptualDomain: OSIRIS:ValidationType

mandatory if ObjectClass is set"""				
* Validation.Method 0..* string "Method [O17]" """Validation method depending on the type of validation

mandatory if ObjectClass is set"""				
* Validation.Status 0..* string "Status [O18]" """Validation status of the detected alteration

ConceptualDomain: OSIRIS:ValidationStatus

mandatory if ObjectClass is set"""				
* Alteration 1..* BackboneElement "Alteration" """Alteration"""				
* Alteration.Chromosome 1..* string "Chromosome [O19]" """Chromosome containing the genetic finding

ConceptualDomain: OSIRIS:Chromosome

mandatory"""				
* Alteration.GenomicStart 1..* integer "Genomic Start [O20]" """Nucleotide location for start of genomic finding on the positive (+) genomics strand, 1-based

mandatory"""				
* Alteration.GenomicStop 1..* integer "Genomic Stop [O21]" """Nucleotide location for end of genomic finding on the positive (+) genomic strand, 1-based

mandatory"""				
* Alteration.GenomeBuild 1..* string "Genome Build [O22]" """Genome Build used for reference

ConceptualDomain: FHIR:Sequence

mandatory"""				
* Alteration.Cytoband 0..* string "Cytoband [O23]" """Cytogenetic location

optional"""				
* GenomeEntity 1..* BackboneElement "GenomeEntity" """GenomeEntity"""				
* GenomeEntity.Type 1..* string "Type [O24]" """Type of the genome entity. For eg: gene, mRNA, ncRNA...

ConceptualDomain: OSIRIS:GenomeEntityType

mandatory"""				
* GenomeEntity.Database 1..* string "Database [O25]" """Database of the genome entity

ConceptualDomain: OSIRIS:GenomeEntityDatabase

mandatory"""				
* GenomeEntity.Id 1..* string "Id [O26]" """Identifier of the genome entity in the genome entity database

mandatory"""				
* GenomeEntity.Symbol 0..* string "Symbol [O27]" """Hugo gene symbol

mandatory if Gene"""				
* Fusion 1..* BackboneElement "Fusion" """Fusion"""				
* Fusion.Type 0..* string "Type [O28]" """Type of the fusion event. For eg: translocation, readthrough

ConceptualDomain: OSIRIS:FusionType

optional"""				
* Fusion.Point5prime 1..* integer "Point 5 prime [O35]" """Position of the fusion point on the 5 prime partner

mandatory"""				
* Fusion.Chromosome5prime 1..* string "Chromosome 5 prime [O97]" """Chromosome 5 prime

ConceptualDomain: OSIRIS:Chromosome

mandatory"""				
* Fusion.Point3prime 1..* integer "Point 3 prime [O40]" """Position of the fusion point on the 3 prime partner

mandatory"""				
* Fusion.Chromosome3prime 1..* string "Chromosome 3 prime [O98]" """Chromosome 3 prime

ConceptualDomain: OSIRIS:Chromosome

mandatory"""				
* Fusion.InFrame 0..* string "In Frame [O41]" """Specify whether the fusion is in frame

ConceptualDomain: OSIRIS:Boolean

optional"""				
* Fusion.NbSpanningPair 1..* integer "Nb Spanning Pair [O44]" """Number of reads pairs spanning the fusion

mandatory"""				
* Fusion.NbSplitReads 0..* integer "Nb Split Reads [O46]" """Number of reads containing the fusion point

optional"""				
* CNV 1..* BackboneElement "CNV" """CNV"""				
* CNV.SegmentIntensity 1..* decimal "Segment Intensity [O47]" """Intensity of the measured signal

mandatory"""				
* CNV.SegmentGenomicStatus 1..* string "Segment Genomic Status [O49]" """Copy number status

ConceptualDomain: OSIRIS:SegmentGenomicStatus

mandatory"""				
* CNV.CopyNumber 0..* integer "Copy Number [O50]" """Estimated DNA copy number

optional"""				
* CNV.LOH 0..* string "LOH [O51]" """Is the segment located in a region of loss of heterozygosity ? (can be independant from copy number information

ConceptualDomain: OSIRIS:Boolean

optional"""				
* CNV.SegmentSize 0..* integer "SegmentSize []" """SegmentSize

optional"""				
* Variant 1..* BackboneElement "Variant" """Variant"""				
* Variant.ReferenceAllele 1..* string "Reference Allele [O53]" """Plus strand reference allele at this position. Include the sequence deleted for a deletion, or '-' for an insertion.

mandatory"""				
* Variant.AlternativeAllele 1..* string "Alternative Allele [O54]" """Plus strand observed alternative allele at this position. Include the sequence inserted for a insertion, or '-' for a deletion.

mandatory"""				
* Variant.DNASequenceVariationType 1..* string "DNA Sequence Variation Type [O55]" """Codified type of the DNA sequence variation

ConceptualDomain: LOINC:48019-4

mandatory"""				
* Annotation 0..* BackboneElement "Annotation" """Annotation"""				
* Annotation.ReferenceType 0..* string "Reference Type [O90]" """Reference Type

ConceptualDomain: OSIRIS:Annotation_ReferenceType

mandatory if DNASequenceVariation is set"""				
* Annotation.ReferenceDatabase 0..* string "Reference Database [O91]" """Reference Database

ConceptualDomain: OSIRIS:Annotation_ReferenceDatabase

mandatory if DNASequenceVariation is set"""				
* Annotation.ReferenceValue 0..* string "Reference Value [O92]" """Reference Value

optional"""				
* Annotation.MutationPredictionAlgorithm 0..* string "Mutation Prediction Algorithm [O63]" """Algorithm to predict the variation effect over the protein

ConceptualDomain: OSIRIS:MutationPredictionAlgorithm

optional"""				
* Annotation.MutationPredictionValue 0..* string "Mutation Prediction Value [O64]" """Prediction of the variation effect over the protein

optional"""				
* Annotation.MutationPredictionScore 0..* decimal "Mutation Prediction Score [O65]" """Level of confidence of the prediction of the variation effect over the protein

optional"""				
* Annotation.PfamDomain 0..* string "Pfam Domain [O58]" """Pfams domains related to alteration position

optional"""				
* Annotation.PfamId 0..* string "Pfam Id [O59]" """Identifier of Pfams domains related to alteration position

optional"""				
* Annotation.DNARegionName 0..* string "DNA Region Name [O66]" """Human readable name for the region of interest related to the transcript (eg: exon1, intron1, UTR3')

optional"""				
* Annotation.DNASequenceVariation 1..* string "DNA Sequence Variation [O71]" """HGVS nomenclature on the chosen transcript

mandatory"""				
* Annotation.AminoAcidChange 0..* string "Amino Acid Change [O72]" """HGVS nomenclature on the chosen protein transcript

optional"""				
* Annotation.GenomicSequenceVariation 0..* string "Genomic Sequence Variation [O73]" """HGVS nomenclature on the given GenomeReferenceSequenceId.

optional"""				
* Annotation.RNASequenceVariation 0..* string "RNA Sequence Variation [O74]" """HGVS nomenclature on the given TranscriptReferenceSequenceId and experimentely observed on RNA.

optional"""				
* Annotation.AminoAcidChangeType 0..* string "Amino Acid Change Type [O75]" """nomenclature of changes at protein-level

ConceptualDomain: OSIRIS:AminoAcidChangeType

optional"""				
* Annotation.FusionPrimeEnd 0..* string "Fusion Prime End [O93]" """Prime end of the fusion partner

ConceptualDomain: OSIRIS:Annotation_FusionPrimeEnd

optional"""				
* Annotation.Strand 0..* string "Strand [O94]" """Strand

ConceptualDomain: OSIRIS:Strand

optional"""				
* Annotation.OnSplicingSite 0..* string "OnSplicingSite [O95]" """Indicate wether the variant is on a splicing site

ConceptualDomain: OSIRIS:Boolean

optional"""				
* VariantInSample 1..* BackboneElement "VariantInSample" """VariantInSample"""				
* VariantInSample.PositionReadDepth 1..* integer "Position Read Depth [O76]" """Total sequencing depth at the variant position observed in the specimen

mandatory"""				
* VariantInSample.VariantReadDepth 1..* integer "Variant Read Depth [O77]" """Sequencing depth of the alternative allele at the variant position observed in the specimen

mandatory"""				
* VariantInSample.StrandBias 0..* string "Strand Bias [O78]" """Indication of the existence of strand bias at the variant position

ConceptualDomain: OSIRIS:Boolean

optional"""				
* VariantInSample.GenomicSourceClass 1..* string "Genomic Source Class [O79]" """Genomic class of the variant (eg: germline, somatic, and prenatal)

ConceptualDomain: LOINC:LL378-1

mandatory"""				
* VariantInSample.AllelicState 0..* BackboneElement "Allelic State [O80]" """Level of allelic occurrence of a DNA Sequence Variation

ConceptualDomain: LOINC:LL381-5

optional"""				
* GeneExpression 1..* BackboneElement "GeneExpression" """GeneExpression"""				
* GeneExpression.DataType 1..* BackboneElement "Data Type [O84]" """Type of the expression value corresponding to the level of data processing

ConceptualDomain: OSIRIS:ExpressionDataType

mandatory"""				
* GeneExpression.Value 1..* BackboneElement "Value [O85]" """Numerical value for expression

mandatory"""				
* Equipment 0..* BackboneElement "Equipment" """Equipment"""				
* Equipment.ModelName 0..* BackboneElement "Manufacturer's model name [I1]" """Manufacturer's model name

ConceptualDomain: DICOM

"""				
* Equipment.Manufacturer 0..* BackboneElement "Manufacturer's name [I2]" """Manufacturer's name

ConceptualDomain: DICOM

"""				
* Study 0..* BackboneElement "Study" """Study"""				
* Study.StudyInstanceUID 0..* BackboneElement "Study Instance UID [I3]" """Study Instance UID

ConceptualDomain: DICOM

"""				
* Study.StudyDescription 0..* BackboneElement "Study description [I4]" """Study description

ConceptualDomain: DICOM

"""				
* Study.AcquisitionDate 0..* BackboneElement "Acquisition date [I5]" """Acquisition date

ConceptualDomain: DICOM

"""				
* Study.Location 0..* BackboneElement "Location [I6]" """Location

"""				
* Study.InstitutionName 0..* BackboneElement "Institution's name [I7]" """Institution's name

ConceptualDomain: DICOM

"""				
* Study.ModalitiesInStudy 0..* BackboneElement "Modalities in study [I8]" """Modalities in study

ConceptualDomain: DICOM

"""				
* Study.NbStudyRelatedSeries 0..* BackboneElement "Number of Study Related Series [I9]" """Number of Study Related Series

ConceptualDomain: DICOM

"""				
* Series 0..* BackboneElement "Series" """Series"""				
* Series.SeriesNumber 0..* BackboneElement "Series Number [I10]" """Series Number

ConceptualDomain: DICOM

"""				
* Series.SeriesInstanceUID 0..* BackboneElement "Series Instance UID [I11]" """Series Instance UID

ConceptualDomain: DICOM

"""				
* Series.Modality 0..* BackboneElement "Modality [I12]" """Modality

ConceptualDomain: DICOM

"""				
* Series.Description 0..* BackboneElement "Description [I13]" """Description

ConceptualDomain: DICOM

"""				
* Series.BodyPartExamined 0..* BackboneElement "Body Part Examined [I14]" """Body Part Examined

ConceptualDomain: DICOM

"""				
* Series.NbSeriesRelatedInstances 0..* BackboneElement "Number of Series Related Instances [I15]" """Number of Series Related Instances

ConceptualDomain: DICOM

"""				
* Series.SoftwareVersion 0..* BackboneElement "Software's version [I16]" """Software's version

ConceptualDomain: DICOM

"""				
* Injection 0..* BackboneElement "Injection" """Injection"""				
* Injection.Radiopharmaceutical 0..* BackboneElement "Radiopharmaceutical [I17]" """Radiopharmaceutical

ConceptualDomain: DICOM

"""				
* Injection.ContrastBolusAgent 0..* BackboneElement "Contrast/bolus agent [I18]" """Contrast/bolus agent

ConceptualDomain: DICOM

"""				
* Injection.ContrastBolusStartTime 0..* BackboneElement "Contrast/bolus start time [I19]" """Contrast/bolus start time

ConceptualDomain: DICOM

"""				
* Injection.ContrastBolusStopTime 0..* BackboneElement "Contrast/bolus stop time [I20]" """Contrast/bolus stop time

ConceptualDomain: DICOM

"""				
* Injection.RadiopharmaceuticalStartTime 0..* BackboneElement "Radiopharmaceutical start time [I21]" """Radiopharmaceutical start time

ConceptualDomain: DICOM

"""				
* Injection.RadionuclideTotalDose 0..* BackboneElement "Radionuclide total dose [I22]" """Radionuclide total dose

ConceptualDomain: DICOM

"""				
* CommonImage 0..* BackboneElement "CommonImage" """CommonImage"""				
* CommonImage.SOPInstanceUID 0..* BackboneElement "SOP Instance UID [I23]" """SOP Instance UID

ConceptualDomain: DICOM

"""				
* CommonImage.SliceThickness 0..* BackboneElement "Slice thickness [I24]" """Slice thickness

ConceptualDomain: DICOM

"""				
* CommonImage.PixelSpacing 0..* BackboneElement "Pixel spacing [I25]" """Pixel spacing

ConceptualDomain: DICOM

"""				
* CommonImage.FieldOfView 0..* BackboneElement "Field of view [I26]" """Field of view

"""				
* CommonImage.Rows 0..* BackboneElement "rows [I27]" """rows

ConceptualDomain: DICOM

"""				
* CommonImage.Columns 0..* BackboneElement "columns [I28]" """columns

ConceptualDomain: DICOM

"""				
* MRImage 0..* BackboneElement "MRImage" """MRImage"""				
* MRImage.SequenceName 0..* BackboneElement "Sequence's name [I29]" """Sequence's name

ConceptualDomain: DICOM

"""				
* MRImage.MagneticFieldStrength 0..* BackboneElement "Magnetic field strength [I30]" """Magnetic field strength

ConceptualDomain: DICOM

"""				
* MRImage.MRAcquisitionType 0..* BackboneElement "MR acquisition type [I31]" """MR acquisition type

ConceptualDomain: DICOM

"""				
* MRImage.RepetitionTime 0..* BackboneElement "Repetition time [I32]" """Repetition time

ConceptualDomain: DICOM

"""				
* MRImage.EchoTime 0..* BackboneElement "EchoTime [I33]" """EchoTime

ConceptualDomain: DICOM

"""				
* MRImage.ImagingFrequency 0..* BackboneElement "ImagingFrequency [I34]" """ImagingFrequency

ConceptualDomain: DICOM

"""				
* MRImage.FlipAngle 0..* BackboneElement "FlipAngle [I35]" """FlipAngle

ConceptualDomain: DICOM

"""				
* MRImage.InversionTime 0..* BackboneElement "InversionTime [I36]" """InversionTime

ConceptualDomain: DICOM

"""				
* MRImage.ReceiveCoilName 0..* BackboneElement "ReceiveCoilName [I37]" """ReceiveCoilName

ConceptualDomain: DICOM

"""				
* CTImage 0..* BackboneElement "CTImage" """CTImage"""				
* CTImage.KVp 0..* BackboneElement "KVp [I38]" """KVp

ConceptualDomain: DICOM

"""				
* CTImage.XRayTubeCurrent 0..* BackboneElement "XRayTubeCurrent [I39]" """XRayTubeCurrent

ConceptualDomain: DICOM

"""				
* CTImage.ExposureTime 0..* BackboneElement "ExposureTime [I40]" """ExposureTime

ConceptualDomain: DICOM

"""				
* CTImage.SpiralPitchFactor 0..* BackboneElement "SpiralPitchFactor [I41]" """SpiralPitchFactor

ConceptualDomain: DICOM

"""				
* CTImage.FilterType 0..* BackboneElement "FilterType [I42]" """FilterType

ConceptualDomain: DICOM

"""				
* CTImage.ConvolutionKernel 0..* BackboneElement "ConvolutionKernel [I43]" """ConvolutionKernel

ConceptualDomain: DICOM

"""				
* PTImage 0..* BackboneElement "PTImage" """PTImage"""				
* PTImage.AttenuationCorrectionMethod 0..* BackboneElement "AttenuationCorrectionMethod [I44]" """AttenuationCorrectionMethod

ConceptualDomain: DICOM

"""				
* PTImage.ReconstructionMethod 0..* BackboneElement "ReconstructionMethod [I45]" """ReconstructionMethod

ConceptualDomain: DICOM

"""				
* PTImage.ScatterCorrectionMethod 0..* BackboneElement "ScatterCorrectionMethod [I46]" """ScatterCorrectionMethod

ConceptualDomain: DICOM

"""				
* NMImage 0..* BackboneElement "NMImage" """NMImage"""				
* NMImage.AttenuationCorrectionMethod 0..* BackboneElement "AttenuationCorrectionMethod [I47]" """AttenuationCorrectionMethod

ConceptualDomain: DICOM

"""				
* NMImage.ReconstructionMethod 0..* BackboneElement "ReconstructionMethod [I48]" """ReconstructionMethod

ConceptualDomain: DICOM

"""				
* NMImage.ScatterCorrectionMethod 0..* BackboneElement "ScatterCorrectionMethod [I49]" """ScatterCorrectionMethod

ConceptualDomain: DICOM

"""				
* DXImage 0..* BackboneElement "DXImage" """DXImage"""				
* DXImage.ImageLaterality 0..* BackboneElement "ImageLaterality [I50]" """ImageLaterality

ConceptualDomain: DICOM

"""				
* DXImage.PatientOrientation 0..* BackboneElement "PatientOrientation [I51]" """PatientOrientation

ConceptualDomain: DICOM

"""				
* DXImage.AnatomicRegionSequenceCodeMeaning 0..* BackboneElement "AnatomicRegionSequenceCodeMeaning [I52]" """AnatomicRegionSequenceCodeMeaning

ConceptualDomain: DICOM

"""				
* DXImage.AnatomicRegionSequenceCodeValue 0..* BackboneElement "Anatomic Region SequenceCodeValue [I53]" """Anatomic Region SequenceCodeValue

ConceptualDomain: DICOM

"""				
* DXImage.KVP 0..* BackboneElement "KVP [I54]" """KVP

ConceptualDomain: DICOM

"""				
* DXImage.Exposure 0..* BackboneElement "Exposure [I55]" """Exposure

ConceptualDomain: DICOM

"""				
* DXImage.ExposureTime 0..* BackboneElement "ExposureTime [I56]" """ExposureTime

ConceptualDomain: DICOM

"""				
* DXImage.ContrastBolusAgent 0..* BackboneElement "ContrastBolusAgent [I57]" """ContrastBolusAgent

ConceptualDomain: DICOM

"""				
* ROISegmentation 0..* BackboneElement "ROISegmentation" """ROISegmentation"""				
* ROISegmentation.ReferencedSOPInstanceUID 0..* BackboneElement "ReferencedSOPInstanceUID [I58]" """ReferencedSOPInstanceUID

ConceptualDomain: DICOM

"""				
* ROISegmentation.ROINumber 0..* BackboneElement "ROINumber [I59]" """ROINumber

ConceptualDomain: DICOM

"""				
* ROISegmentation.ROIName 0..* BackboneElement "ROIName [I60]" """ROIName

ConceptualDomain: DICOM

"""				
* ROISegmentation.ROIDescription 0..* BackboneElement "ROIDescription [I61]" """ROIDescription

ConceptualDomain: DICOM

"""				
* ROISegmentation.ROIType 0..* BackboneElement "ROIType [I62]" """ROIType

"""				
* ROISegmentation.ROIFilename 0..* BackboneElement "ROIFilename [I63]" """ROIFilename

"""				
* RadiomicsCriteria 0..* BackboneElement "RadiomicsCriteria" """RadiomicsCriteria"""				
* RadiomicsCriteria.SoftwareName 0..* BackboneElement "SoftwareName [I64]" """SoftwareName

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.SoftwareVersion 0..* BackboneElement "SoftwareVersion [I65]" """SoftwareVersion

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.Method 0..* BackboneElement "Method [I66]" """Method

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.UsedImageFilter 0..* BackboneElement "UsedImageFilter [I67]" """UsedImageFilter

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.DistanceWeighting 0..* BackboneElement "DistanceWeighting [I68]" """DistanceWeighting

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.NumberOfGreyLevels 0..* BackboneElement "NumberOfGreyLevels [I69]" """NumberOfGreyLevels

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.BinSize 0..* BackboneElement "BinSize [I70]" """BinSize

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.IntensityResampling 0..* BackboneElement "IntensityResampling [I71]" """IntensityResampling

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.LowestIntensity 0..* BackboneElement "LowestIntensity [I72]" """LowestIntensity

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.BoundsRangeOfValueAfterDiscretisation 0..* BackboneElement "BoundsRangeOfValueAfterDiscretisation [I73]" """BoundsRangeOfValueAfterDiscretisation

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.SpatialResamplingMethod 0..* BackboneElement "SpatialResamplingMethod [I74]" """SpatialResamplingMethod

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.SpatialResamplingValues 0..* BackboneElement "SpatialResamplingValues [I75]" """SpatialResamplingValues

ConceptualDomain: IBSI?

"""				
* RadiomicsCriteria.TextureMatrixAggregation 0..* BackboneElement "TextureMatrixAggregation [I76]" """TextureMatrixAggregation

ConceptualDomain: IBSI?

"""				
* RadiomicsImageFilter 0..* BackboneElement "RadiomicsImageFilter" """RadiomicsImageFilter"""				
* RadiomicsImageFilter.SoftwareName 0..* BackboneElement "SoftwareName [I77]" """SoftwareName

ConceptualDomain: IBSI?

"""				
* RadiomicsImageFilter.SoftwareVersion 0..* BackboneElement "SoftwareVersion [I78]" """SoftwareVersion

ConceptualDomain: IBSI?

"""				
* RadiomicsImageFilter.FilterName 0..* BackboneElement "FilterName [I79]" """FilterName

ConceptualDomain: IBSI?

"""				
* RadiomicsImageFilter.FilterType 0..* BackboneElement "FilterType [I80]" """FilterType

ConceptualDomain: IBSI?

"""				
* RadiomicsImageFilter.FilterInterpolation 0..* BackboneElement "FilterInterpolation [I81]" """FilterInterpolation

ConceptualDomain: IBSI?

"""				
* RadiomicsImageFilter.IntensityRounding 0..* BackboneElement "IntensityRounding [I82]" """IntensityRounding

ConceptualDomain: IBSI?

"""				
* RadiomicsImageFilter.BoundaryCondition 0..* BackboneElement "BoundaryCondition [I83]" """BoundaryCondition

ConceptualDomain: IBSI?

"""				
* RadiomicsFeature 0..* BackboneElement "RadiomicsFeature" """RadiomicsFeature"""				
* RadiomicsFeature.Id 0..* BackboneElement "Id [I84]" """Id

ConceptualDomain: IBSI?

"""				
* RadiomicsFeature.Name 0..* BackboneElement "Name [I85]" """Name

ConceptualDomain: IBSI?

"""				
* RadiomicsFeature.Value 0..* BackboneElement "Value [I86]" """Value

ConceptualDomain: IBSI?

"""				
//---- END				
//---- END				
//---- END				
//---- END				
