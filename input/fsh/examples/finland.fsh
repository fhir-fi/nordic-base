/*
Instance: A121801
InstanceOf: FiBaseAppointment
Usage: #example
Title: "GP appointment"
Description: "Example of an appointment with general practitioner."
* id = "appointment-general-practitioner"
* appointmentType = urn:oid:1.2.246.537.6.884|2015#101
* created = "2023-01-20T08:45:15+02:00"
* description = "Kuume"
* end = "2023-01-20T10:20:00+02:00"
* extension[0].url = "http://hl7.fi/fhir/StructureDefinition/ServiceEventExt"
* extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].valueIdentifier.value = "urn:oid:1.2.246.10.3575029.10.50.14131.2023.159325"
* extension[+].extension[0].url = "Cancellable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "Reschedulable"
* extension[=].extension[=].valueBoolean = false
* extension[=].url = "http://hl7.fi/fhir/StructureDefinition/AppointmentMutabilityExtension"
* participant[0].actor = Reference(PatientOfMunicipality)
* participant[=].required = #required
* participant[=].status = #accepted
* participant[+].actor = Reference(PractitionerLicensedPhysician)
* participant[=].required = #required
* participant[=].status = #accepted
* participant[=].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant[+].actor = Reference(LocationExample)
* participant[=].status = #accepted
* participant[+].actor = Reference(AT-340)
* participant[=].status = #accepted
* serviceCategory = urn:oid:1.2.246.537.6.50|201801#SOTE9.2
* serviceType = urn:oid:1.2.246.537.6.49|201501#EEA
* start = "2023-01-20T10:00:00+02:00"
* status = #fulfilled
* slot = Reference(FreeSlot)

Instance: DiagnosisAdverseEffect
InstanceOf: FiBaseReasonForCare
Title: "Condition - an example diagnosis with an adverse effect."
Description: "An example of a diagnosis using the FiBaseReasonForCare profile. This diagnosis demonstrates a case that has an adverse effect."
Usage: #example
* id = "id-for-diagnosis-3"
* category.coding = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* subject = Reference(PatientOfMunicipality)
* code.coding = urn:oid:1.2.246.537.6.1|1999#T81.9 "Määrittämätön toimenpidekomplikaatio"
* code.text = "Määrittämätön toimenpidekomplikaatio"
* onsetDateTime = "2023-01-05T02:06:24+03:00"
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* extension[PrimaryCondition].valueCoding = urn:oid:1.2.246.537.5.40005|2003#SIVU "Sivudiagnoosi tai toissijainen toimenpide"
* extension[Permanence].valueCoding = urn:oid:1.2.246.537.5.40003|2003#KER "Kertaluonteinen"
* extension[ConditionExternalCause].valueCoding = urn:oid:1.2.246.537.6.1|1999#Y60.0 "Leikkauksen yhteydessä vahingossa syntynyt haava, punktio, perforaatio tai verenvuoto"
* extension[CauseOfAdverseEffect].valueCoding = urn:oid:1.2.246.537.6.2|2007#JAB10 "Nivustyrän korjaus"

Instance: DiagnosisMedicationAccident
InstanceOf: FiBaseReasonForCare
Title: "Condition - an example diagnosis with external cause, accident and medication information."
Description: "An example of a diagnosis using the FiBaseReasonForCare profile. This diagnosis demonstrates a case that has external cause, accident and medication information."
Usage: #example
* id = "id-for-diagnosis-2"
* category.coding = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* subject = Reference(PatientOfMunicipality)
* code.coding = urn:oid:1.2.246.537.6.1|1999#T88.7 "Määrittämätön lääkeaineen epäedullinen vaikutus"
* code.text = "Määrittämätön lääkeaineen epäedullinen vaikutus"
* onsetDateTime = "2023-01-05T02:06:24+03:00"
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* extension[PrimaryCondition].valueCoding = urn:oid:1.2.246.537.5.40005|2003#PAA "Päädiagnoosi tai päätoimenpide"
* extension[Permanence].valueCoding = urn:oid:1.2.246.537.5.40003|2003#KER "Kertaluonteinen"
* extension[ConditionExternalCause].valueCoding = urn:oid:1.2.246.537.6.1|1999#X44 "Lääkkeiden tai lääkkeenomaisten aineiden aiheuttama myrkytystapaturma tai muu altistuminen"
* extension[ConditionCategorizationOfAccident].valueCoding = urn:oid:1.2.246.537.6.1|1999#Y95.0 "Tapaturma sairaalassa tai sairaalaoloihin liittyvä ulkoinen tekijä"
* extension[ConditionCausedByMedication].valueCoding = urn:oid:1.2.246.537.6.32|2007#M01AE01 "BURANA 200 mg tabletti, kalvopäällysteinen"

Instance: DiagnosisSimple
InstanceOf: FiBaseReasonForCare
Title: "Condition - an example diagnosis"
Description: "An example of a diagnosis using the FiBaseReasonForCare profile. This diagnosis is asserted by a clinician."
Usage: #example
* id = "id-for-diagnosis-1"
* category.coding = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* subject = Reference(PatientOfMunicipality)
* code.coding = urn:oid:1.2.246.537.6.1|1999#H36.03 "Proliferatiivinen diabeettinen retinopatia"
* code.text = "Proliferatiivinen diabeettinen retinopatia, vasen, laserhoidettu"
* evidence.code.coding = urn:oid:1.2.246.537.6.1|1999#E11.3 "Aikuistyypin diabetes diabeteksen silmäkomplikaatiot"
* onsetDateTime = "2023-01-05T02:06:24+03:00"
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* extension[PrimaryCondition].valueCoding = urn:oid:1.2.246.537.5.40005|2003#PAA "Päädiagnoosi tai päätoimenpide"
* extension[Permanence].valueCoding = urn:oid:1.2.246.537.5.40003|2003#PYS "Pysyväisluonteinen"

Instance: EncounterAmbulatory
InstanceOf: FiBaseEncounter
Title: "Encounter - patient primary care visit"
Description: "An example of a FI Base encounter where a patient has completed a visit in primary care."
Usage: #example
* id = "id-for-visit"
* identifier.use = #usual
* identifier.value = "id-for-visit"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject.reference = "Patient/patient-of-municipality"
* period.start = "2022-02-28T15:03:00+02:00"
* period.end = "2022-02-28T15:33:00+02:00"
* serviceProvider.reference = "Organization/1.2.246.10.2085212.10.1314"

Instance: EncounterAtWardInProgress
InstanceOf: FiBaseEncounter
Title: "Encounter - patient is currently receiving care at a ward treating surgical patients"
Description: "An example of a FI Base encounter where a patient is currently receiving care at a ward."
Usage: #example
* id = "id-for-ward-encounter"
* identifier.use = #usual
* identifier.value = "id-for-ward-encounter"
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject.reference = "Patient/patient-of-municipality"
* period.start = "2022-02-27T01:03:00+02:00"
* serviceProvider.reference = "Organization/1.2.246.10.8286189.10.100012"
* location[0].status = #active
* location[0].period.start = "2022-02-27T01:03:00+02:00"
* location[0].location.reference = "Location/id-for-bed-3"

Instance: EncounterPalvelutapahtuma
InstanceOf: FiBaseEncounter
Title: "Encounter that is a palvelutapahtuma in Kanta registry"
Description: "An example of a FI Base encounter which corresponds 1-1 to palvelutapahtuma in Kanta. Identifier with use=official marks the OID of palvelutapahtuma. Has sub-encounters."
Usage: #example
* id = "id-for-palvelutapahtuma"
* identifier.use = #official
* identifier.value = "urn:oid:1.2.246.10.6794809.14011.2023.200035"
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject.reference = "Patient/patient-of-municipality"
* period.start = "2022-02-27T01:03:00+02:00"
* serviceProvider.reference = "Organization/1.2.246.10.8286189.10.100012"

Instance: EncounterPartOfPalvelutapahtuma
InstanceOf: FiBaseEncounter
Title: "Encounter that is part of palvelutapahtuma"
Description: "An example of a FI Base encounter which is part of another encounter that corresponds palvelutapahtuma in Kanta."
Usage: #example
* id = "id-for-child-encounter"
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* partOf = Reference(EncounterPalvelutapahtuma) 
* subject.reference = "Patient/patient-of-municipality"
* period.start = "2022-02-27T01:03:00+02:00"
* serviceProvider.type = #ServiceProvider
* serviceProvider.identifier.value = "1.2.246.10.8286189.10.100013"
* location[0].status = #active
* location[0].period.start = "2022-02-27T01:03:00+02:00"
* location[0].location.reference = "Location/id-for-bed-3"

Instance: EncounterPartOfPalvelutapahtuma2
InstanceOf: FiBaseEncounter
Title: "Another Encounter that is part of palvelutapahtuma"
Description: "An example of a FI Base encounter which is part of another encounter that corresponds to palvelutapahtuma in Kanta."
Usage: #example
* id = "id-for-child-encounter-2"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#OBSENC "observation encounter"
* partOf = Reference(EncounterPalvelutapahtuma) 
* subject.reference = "Patient/patient-of-municipality"
* period.start = "2022-02-28T12:03:00+02:00"
* period.end = "2022-02-28T12:18:00+02:00"
* serviceProvider.type = #ServiceProvider
* serviceProvider.identifier.value = "1.2.246.10.8286189.10.100014"

Instance: EpisodeOfCareExample
InstanceOf: FiBaseEpisodeOfCare
Title: "Episode of care - with provenance"
Description: "Example of episode of care. A provenance example links to this."
Usage: #example
* id = "id-for-episode-1"
* status = #active
* patient = Reference(Patient/patient-of-municipality)

Instance: AT-340
InstanceOf: FiBaseHealthcareService
Title: "Codified healthcare service"
Description: "HealthcareService example which describes general practitioner services by using THL code systems."
Usage: #example
* id = "healthcareService-example"
* active = true
* appointmentRequired = true
* category[0] = urn:oid:1.2.246.537.6.50|201801#SOTE9.2
* category[+] = urn:oid:1.2.246.537.6.121|201801#E
* comment = "Normaali vo-aika sh:lle ja lääkäreille"
* name = "Vastaanottoaika*"
* type[0] = urn:oid:1.2.246.537.6.49|201501#EEA
* type[+] = urn:oid:1.2.246.537.6.49|201501#ADA001
* type[+] = urn:oid:1.2.246.537.6.125|2008#T11
* type[+] = urn:oid:1.2.246.537.6.124|2008#SH

Instance: ImmunizationVaccinationExample
InstanceOf: FiBaseImmunization
Title: "Vaccination for TBE"
Description: "An example vaccination against TBE."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
* status = #completed
* vaccineCode = urn:oid:1.2.246.537.6.32|2007#J07BA01
* vaccineCode.text = "Inaktivoitu puutiaisaivotulehdusrokote (koko virus)"
* patient = Reference(PatientOfMunicipality)
* encounter = Reference(EncounterPalvelutapahtuma)
* occurrenceDateTime = "2023-01-10"
* primarySource = false
* location = Reference(LocationExample)
* expirationDate = "2025-02-15"
* site.coding[Vaccination-site] = urn:oid:1.2.246.537.6.110|2007#OO
* route.coding[Vaccination-route] = urn:oid:1.2.246.537.6.111|2007#IM
* doseQuantity = 5 'mg'
* protocolApplied.targetDisease.coding = urn:oid:1.2.246.537.6.609|20150#TBE
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 3
* performer[0].function = http://terminology.hl7.org/CodeSystem/v2-0443#AP
* performer[=].actor = Reference(PractitionerLicensedPhysician)
* reasonCode = http://snomed.info/sct#429060002
* extension[vaccinationRecorder].valueReference = Reference(PractitionerLicensedPhysician)

Profile: KantaDocumentMetadata
Parent: FiBaseProvenance
Id: kanta-document-metadata-profile
Title: "An imaginary profile for Kanta system, utilizing the Finnish Base Information Custodian profile"
Description: "This is one way in which a system might use the Finnish Base Information Custodian profile. Kanta has expressed the wish to have only one big Provenance resource containing all document metadata. This can be accomplished by creating a profile based on the Finnish Base Provenance profile and [imposing](http://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-imposeProfile.html) the Finnish Base Information Custodian profile."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://hl7.fi/fhir/finnish-base-profiles/StructureDefinition/kanta-document-other-metadata-profile"

Profile: KantaDocumentOtherMetadata
Parent: FiBaseProvenance
Id: kanta-document-other-metadata-profile
Title: "An imaginary profile for Kanta system, specifying things apart from the information custodian"
Description: "This is one way in which a system might use the Finnish Base Information Custodian profile. This profile defines other constraints. The profile KantaDocumentMetadata combines the requirements."
* agent.role ^slicing.discriminator.type = #value
* agent.role ^slicing.discriminator.path = "coding.system"
* agent.role ^slicing.rules = #open
* agent.role ^slicing.description = "Kanta specific profiling"
* agent.role[kantaCoding].coding.system
* agent.role contains kantaCoding 1..*
* agent.role[kantaCoding].coding.system from http://gen.kanta.fi/kanta-provenance-agent-role

Instance: KantaProvenanceAgentRole
InstanceOf: ValueSet
Title: "Example value set for provenance roles"
Description: "This example value set contains the systems that can be used for agent roles in Kanta profiles"
Usage: #definition
* experimental = false
* id = "kanta-provenance-agent-role"
* url = "http://gen.kanta.fi/kanta-provenance-agent-role"
* status = #draft
* compose
  * include[0]
    * system = "urn:ietf:rfc:3986"
    * concept
      * code = #http://gen.kanta.fi/fikanta-cs-rolecategory
      * display = "Kanta specified roles" 
  * include[+]
    * system = "urn:ietf:rfc:3986"
    * concept
      * code = #urn:oid:1.2.246.537.5.40172
      * display = "eArkisto - Rekisteripitäjän laji" 

Instance: KantaDocumentMetadataExample
InstanceOf: KantaDocumentMetadata
Title: "An imaginary example of a Provenance resource instance conforming to the imaginary metadata profile for Kanta system"
Description: "This example demonstrates one way in which a system might use the Finnish Base Information Custodian profile."
Usage: #example
* id = "kanta-document-metadata-profile-example"
* contained[0]
  * resourceType = "Organization"
  * id = "jarjestajaorg1"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* contained[+]
  * resourceType = "Organization"
  * id = "tuottajaorg1"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[0]
    * coding = urn:oid:1.2.246.537.5.40172#1 "Julkinen"
    * text = "Julkinen"
  * who[0]
    * type = "Organization"
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#8 "Palvelunjärjestäjä"
  * who.reference = "#jarjestajaorg1"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#11 "Palveluntuottaja"
  * who.reference = "#tuottajaorg1"
* target[0].reference = "EpisodeOfCare/id-for-episode-1"
* recorded = "2023-08-25T16:42:17.239+03:00"
 
Instance: KantaDocumentMetadataExample2
InstanceOf: KantaDocumentMetadata
Title: "An imaginary example of a Provenance resource instance conforming to the imaginary metadata profile for Kanta system, using the kanta code also for the custodian agent"
Description: "This example demonstrates one way in which a system might use the Finnish Base Information Custodian profile."
Usage: #example
* id = "kanta-document-metadata-profile-example-2"
* contained[0]
  * resourceType = "Organization"
  * id = "jarjestajaorg1"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* contained[+]
  * resourceType = "Organization"
  * id = "tuottajaorg1"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[0]
    * coding = urn:oid:1.2.246.537.5.40172#1 "Julkinen"
    * text = "Julkinen"
  * role[+]
    * coding = http://gen.kanta.fi/fikanta-cs-rolecategory#2 "Rekisterinpitäjä" // Don't know which is the right code, just selecting one...
    * text = "Rekisterinpitäjä"
  * who[0]
    * type = "Organization"
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#8 "Palvelunjärjestäjä"
  * who.reference = "#jarjestajaorg1"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#11 "Palveluntuottaja"
  * who.reference = "#tuottajaorg1"
* target[0].reference = "EpisodeOfCare/id-for-episode-1"
* recorded = "2023-08-25T16:42:17.239+03:00"

Instance: KantaDocumentMetadataFailingExample1
InstanceOf: KantaDocumentMetadata
Title: "A test example demonstrating that validation works"
Description: "This example does not have the role for the agent from system urn:oid:1.2.246.537.5.40172, as would be mandated by the Finnish Base Information Custodian profile. QA report is expected to show an error."
Usage: #example
* id = "kanta-document-metadata-profile-test-example-1"
* contained[0]
  * resourceType = "Organization"
  * id = "the-same-org"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
/*
  * role[0]
    * coding = urn:oid:1.2.246.537.5.40172#1 "Julkinen"
    * text = "Julkinen"
* /
  * who[0]
    * type = "Organization"
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#8 "Palvelunjärjestäjä"
  * who.reference = "#the-same-org"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#11 "Palveluntuottaja"
  * who.reference = "#the-same-org"
* target[0].reference = "EpisodeOfCare/id-for-episode-1"
* recorded = "2023-08-25T16:42:17.239+03:00"
 
Instance: KantaDocumentMetadataFailingExample2
InstanceOf: KantaDocumentMetadata
Title: "Another test example demonstrating that validation works"
Description: "This example does not have a role with the code system specified by Kanta. QA report is expected to show an error."
Usage: #example
* id = "kanta-document-metadata-profile-test-example-2"
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * who[0]
    * type = "Organization"
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
/*
* entity[0]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = "4"
    * display = "Työterveyshuolto"
* /
* target[0].reference = "EpisodeOfCare/id-for-episode-1"
* recorded = "2023-08-25T16:42:17.239+03:00"


Instance: LocationBedExample
InstanceOf: FiBaseLocation
Title: "A named bed"
Description: "Example of a bed recorded with the Location resource."
Usage: #example
* id = "id-for-bed-3"
* mode = #instance
* name = "Vuode 3"
* status = #active
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#bd


Instance: LocationExample
InstanceOf: FiBaseLocation
Title: "Outpatient clinic"
Description: "Example of surgery outpatient clinic with refenrence to an organization."
Usage: #example
* address.use = #work
* alias = "2KIRPKL"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.2.246.10.3575029.10.9990311346"
* managingOrganization = Reference(OrganizationPrimaryCare)
* mode = #instance
* name = "Kirurgian poliklinikka"
* status = #active

Instance: MedicationStatementInsulin
InstanceOf: FiBaseMedicationStatement
Title: "Simple medication statement example"
Description: "Patient states they are taking long acting insulin (Lantus), but not the amount."
Usage: #example
* id = "medication-statement-insulin"
* medicationCodeableConcept
  * coding[0] = http://snomed.info/sct#411529005 "Insulin glargine"
  * coding[+] = http://www.whocc.no/atc#A10AE04 "insulin glargine"
  * text = "Insulin glargine (Lantus)"
* status = #active
* subject = Reference(PatientOfMunicipality)
* effectiveDateTime = "2023-07-22"
* informationSource = Reference(PatientOfMunicipality)


Instance: OrganizationHospitalUnit
InstanceOf: NordicOrganization
Title: "Encounter - example primary care organization"
// using partOf would cause warnings unless we add the full hierarchy in this repo. 
Description: "An example of a FI Base organization, a surgical ward. The partOf reference removed for brevity."
Usage: #example
* id = "1.2.246.10.8286189.10.100012"
* identifier.use = #official
* identifier.system = #urn:oid:1.2.246.537.6.202.2008
* identifier.value = "urn:oid:1.2.246.10.8286189.10.100012"
* name = "Kirurgian vuodeosasto 4B, Länsi-Pohjan keskussairaala, LPSHP"
* alias = "Kirurgian vuodeosasto 4B, LPKS, LPSHP"
* address[0].type = #postal
* address[0].line[0] = "Kauppakatu 25, 94100 KEMI"
* address[0].postalCode = "94100"
* address[0].city = "KEMI"
* address[1].type = #physical
* address[1].line[0] = "Kauppakatu 25, 94100 KEMI"
* address[1].postalCode = "94100"
* address[1].city = "KEMI"
* active = true
*/

Instance: OrganizationPrimaryCare
InstanceOf: NordicOrganization
Title: "Organization - example primary care organization"
Description: "An example of a FI Base organization, a doctor's reception office. Data is from national SOTE-Rekisteri."
Usage: #example
* id = "1.2.246.10.2085212.10.1314"
* identifier.use = #official
* identifier.system = #urn:oid:1.2.246.537.6.202.2008
* identifier.value = "urn:oid:1.2.246.10.2085212.10.1314"
* name = "Kyyjärven lääkärin vastaanotto, Kyyjärven terveysasema, SoTe kuntayhtymä Saarikka"
* partOf.reference = "Organization/1.2.246.10.2085212.10.1306"
* address[0].type = #postal
* address[0].line[0] = "Honkalehdontie 9"
* address[0].postalCode = "43700"
* address[0].city = "Kyyjärvi"
* address[1].type = #physical
* address[1].line[0] = "Honkalehdontie 9"
* address[1].postalCode = "43700"
* address[1].city = "Kyyjärvi"
* telecom[0].system = #phone
* telecom[0].value = "0401578947"
* active = true

// Providing minimal info of the parent organization for the example above,
// no need to express full hierarchy here.
Instance: OrganizationPrimaryCareParent
InstanceOf: NordicOrganization
Title: "Organization - example of a parent organization"
Description: "An example of a FI Base organization. Acts as a parent organization for another."
Usage: #example
* id = "1.2.246.10.2085212.10.1306"
* identifier.use = #official
* identifier.system = #urn:oid:1.2.246.537.6.202.2008
* identifier.value = "urn:oid:1.2.246.10.2085212.10.1306"
* name = "Vastaanotot, SoTe kuntayhtymä Saarikka"
* active = true


Instance: PatientOfMunicipality
InstanceOf: NordicPatient
Title: "Patient - with the MunicipalityCode extension."
Description: "An example of a FI Base patient with the MunicipalityCode extension."
Usage: #example
* id = "patient-of-municipality"
* identifier[0]
  * use = #official
  * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NNFIN
  * system = #urn:oid:1.2.246.21
  * value = "010190-999Y"
* gender = #male
* birthDate = "1990-01-01"
* name
  * given = "Testi"
  * family = "Henkilö"
  * text = "Testi Henkilö"
* telecom.system = #phone
* telecom.value = "+358401234657"
* address.use = #home
* address.line[0] = "Testikatu 1"
* address.line[+] = "37910 Akaa"
* communication.language.coding = urn:oid:2.16.840.1.113883.4.642.3.20#fi
* active = true
* extension[MunicipalityCode].valueCoding = urn:oid:1.2.246.537.6.21|2003#020 "Akaa"


Instance: PatientWithTurvakielto
InstanceOf: NordicPatient
Title: "Patient with a TURVAKIELTO security label."
Description: "An example of a FI Base patient that has the TURVAKIELTO security label indicating non-disclosure for personal safety reasons."
Usage: #example
* meta.security[0] = FiBaseSecurityLabelCS#TURVAKIELTO
* id = "patient-with-turvakielto"
* identifier[0]
  * use = #official
  * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NNFIN
  * system = #urn:oid:1.2.246.21
  * value = "010190-999X"
* birthDate = "1990-01-01"
* name
  * given = "Turva"
  * family = "Henkilö"
  * text = "Turva Henkilö"
* active = true
* extension[MunicipalityCode].valueCoding = urn:oid:1.2.246.537.6.21|2003#020 "Akaa"

Instance: PractitionerLicensedPhysician
InstanceOf: NordicPractitioner
Title: "Licenced physician"
Description: "Example of Licensed Physician from CGI Pegasos EHR."
Usage: #example
* active = true
* id = "practitioner-licensed-physician"
* gender = #male
* identifier[0].system = "urn:oid:1.2.246.537.26"
* identifier[=].use = #official
* identifier[=].value = "00198705840"
* identifier[+].system = "urn:oid:1.2.246.21"
* identifier[=].use = #official
* identifier[=].value = "311080-999X"
* identifier[+].system = "urn:oid:1.2.246.537.25"
* identifier[=].use = #official
* identifier[=].value = "032680"
* identifier[+].system = "urn:oid:1.2.246.537.10.3575029.12.2.10.2131.24001"
* identifier[=].type.coding[0].code = #MNEMONIC
* identifier[=].type.coding[+] = http://terminology.hl7.org/CodeSystem/v2-0203#XX
* identifier[=].use = #secondary
* identifier[=].value = "DOCTODAV"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "mailto:dave.doctor@cgi.com"
* identifier[+].type = https://fhir.cgi.fi/code/person-id-type#user-domain-authority
* identifier[=].value = "4ec06bf9-1df1-4336-bf5a-33ba1a2707b2"
* identifier[+].type = https://fhir.cgi.fi/code/person-id-type#user-domain-authority
* identifier[=].value = "dave.doctor@iurcgifisaas.onmicrosoft.com"
* name.family = "Doctor"
* name.given = "Dave"
* name.suffix = "dr."
* qualification[0].code = urn:oid:1.2.246.537.6.140|2008#001
* qualification[+].code = urn:oid:1.2.246.537.6.148|2008#86152-322
* qualification[+].code = urn:oid:1.2.246.537.6.74|2001#2131
* qualification[+].code = urn:oid:2.16.840.1.113883.18.220#MD
* telecom.system = #email
* telecom.use = #work
* telecom.value = "dave.doctor@cgi.com"

/*
Instance: PractitionerRoleGP
InstanceOf: FiBasePractitionerRole
Title: "Licenced physician in primary care"
Description: "This is an example of PractitionerRole profile. The example describes the service which practitioner is performing in a specific location."
Usage: #example
* identifier.system = "http://www.acme.org/practitioners"
* identifier.value = "23"
* active = true
* period.start = "2023-01-01"
* period.end = "2023-12-31"
* practitioner = Reference(PractitionerLicensedPhysician)
* organization = Reference(OrganizationPrimaryCare)
* code = http://terminology.hl7.org/CodeSystem/v2-0286#RP
* specialty = http://snomed.info/sct#408443003 "General medical practice"
* location = Reference(LocationExample)
* healthcareService = Reference(AT-340)
* availableTime[0].daysOfWeek[0] = #mon
* availableTime[=].daysOfWeek[+] = #tue
* availableTime[=].daysOfWeek[+] = #wed
* availableTime[=].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "16:30:00"
* availableTime[+].daysOfWeek[0] = #thu
* availableTime[=].daysOfWeek[+] = #fri
* availableTime[=].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "12:00:00"


Instance: ProcedureColotomy
InstanceOf: FiBaseProcedure
Title: "Procedure Colotomy example"
Description: "This example describes main procedure, colotomy, with reference to sub-procedure."
Usage: #example
* identifier.value = "3456"
* status = #completed
* category.coding[0] = urn:oid:1.2.246.537.6.601|2013#TOI
* code.coding[0] = urn:oid:1.2.246.537.6.2|2007#JFA16
* code.coding[+] = http://snomed.info/sct#9215005
* code.text = "Colotomy"
* performedDateTime = "2022-06-08T09:00:00.000Z"
* subject = Reference(PatientOfMunicipality)
* performer.actor = Reference(PractitionerLicensedPhysician)
* location = Reference(LocationExample)

Instance: ColonBiopsy
InstanceOf: FiBaseProcedure
Title: "Biopsy of Colon procedure example"
Description: "Sub-procedure for Colotomy procedure."
Usage: #example
* identifier.value = "12345"
* partOf = Reference(ProcedureColotomy)
* status = #completed
* category.coding = urn:oid:1.2.246.537.6.601|2013#PIENTOI
* code.coding = http://snomed.info/sct#76164006
* code.text = "Biopsy of colon"
* subject = Reference(PatientOfMunicipality)
* performer.actor = Reference(PractitionerLicensedPhysician)
* location = Reference(LocationExample)

Instance: ProvenanceCustodianIndividual
InstanceOf: FiBaseInformationCustodianIndividual
Title: "Custodian of information (rekisterinpitäjä), an individual provider"
Description: "Example of Provenance that communicates a private individual healthcare provider as the custodian of information for an episode of care."
Usage: #example
* id = "custodian-individual"
* target = Reference(EpisodeOfCare/id-for-episode-1)
* recorded = "2015-02-07T13:28:17.239+02:00"
* agent[custodian]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[custodianRole]
    * coding[custodianRoleCoding] = urn:oid:1.2.246.537.5.40172#2 "Yksityinen"
    * text = "Yksityinen"
  * who
    * type = #Practitioner
    * identifier
      * type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.203"
      * value = "urn:oid:1.2.246.537.28.10000222116"
    * display = "Kalmanlehto Erkki"
/*
* entity[registerType]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = #10
    * display = "Ammatinharjoittaja"
* /

Instance: ProvenanceCustodianOccupationalHealthcare
InstanceOf: FiBaseInformationCustodianPrivate
Title: "Custodian of information (rekisterinpitäjä), private occupational healthcare"
Description: "Example of Provenance that communicates a private occupational healthcare organization as the custodian of information for an episode of care."
Usage: #example
* id = "custodian-occupational-healthcare"
* target = Reference(EpisodeOfCare/id-for-episode-1)
* recorded = "2015-02-07T13:28:17.239+02:00"
* agent[custodian]
  * type
    * coding[0] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[custodianRole]
    * coding[custodianRoleCoding] = urn:oid:1.2.246.537.5.40172#2 "Yksityinen"
    * text = "Yksityinen"
  * who
    * type = #Organization
    * identifier
      * type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.202"
      * value = "urn:oid:1.2.246.10.32515682.10.0"
    * display = "Ratinan Terveys Oy"
/*
* entity[registerType]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = #4
    * display = "Työterveyshuolto"
* entity[registerSpecifierCompanyId]
  * role = #source
  * what
    * identifier
      * type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
      * system = "urn:oid:1.2.246.10"
      * value = "2606155-7"
    * display = "Sensotrend Oy"
* /

Instance: ProvenanceCustodianPublicHealthcare
InstanceOf: FiBaseInformationCustodianPublic
Title: "Custodian of information (rekisterinpitäjä), public healthcare"
Description: "Example of Provenance that communicates a public healthcare organization as the custodian of information for an episode of care."
Usage: #example
* id = "custodian-public-healthcare"
* target = Reference(EpisodeOfCare/id-for-episode-1)
* recorded = "2023-08-25T16:42:17.239+03:00"
* agent[custodian]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[custodianRole]
    * coding[custodianRoleCoding] = urn:oid:1.2.246.537.5.40172#1 "Julkinen"
    * text = "Julkinen"
  * who
    * type = #Organization
    * identifier
      * type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
/*
* entity[registerType]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = #2
    * display = "Julkinen terveydenhuolto"
* /

Alias: $SCT = http://snomed.info/sct
Instance: ScheduleExample
InstanceOf: FiBaseSchedule
Title: "SNOMED CT coded Schedule"
Description: "This is a Schedule example for appointment book. All of the used codes are from SNOMED code system."
Usage: #example
* identifier.use = #usual
* identifier.system = "http://example.org/scheduleid"
* identifier.value = "45"
* active = true
* serviceCategory.coding = $SCT#408443003
* serviceType = $SCT#788007007
* specialty = $SCT#394814009
* actor = Reference(LocationExample)
* planningHorizon.start = "2023-01-01T09:15:00Z"
* planningHorizon.end = "2033-12-25T09:30:00Z"

Instance: FreeSlot
InstanceOf: FiBaseSlot
Title: "Free slot (kertakäynti yleislääkärillä)"
Description: "Example of a free slot with reference to Schedule and information about service category, service type and appointment type presented in THL code system format."
Usage: #example
* identifier.value = "123456789"
* serviceCategory = urn:oid:1.2.246.537.6.50|201801#SOTE3 "Lääkäripalvelut"
* serviceType = urn:oid:1.2.246.537.6.49|201501#EE "Yleislääkärin palvelu"
* appointmentType = urn:oid:1.2.246.537.6.884|2015#10 "Kertakäynti toimipaikassa"
* schedule = Reference(ScheduleExample)
* status = #free
* start = "2023-01-01T12:00:00+02:00"
* end = "2023-01-01T12:30:00+02:00"
*/

