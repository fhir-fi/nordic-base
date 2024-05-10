Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $clinical-codes = http://acme.org/devices/clinical-codes
Alias: $v2-0276 = http://terminology.hl7.org/CodeSystem/v2-0276
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $kommunenummer-alle = https://register.geonorge.no/subregister/sosi-kodelister/kartverket/kommunenummer-alle
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $no-basis-family-relation = http://hl7.no/fhir/CodeSystem/no-basis-family-relation
Alias: $no-basis-parental-responsibility = http://hl7.no/fhir/CodeSystem/no-basis-parental-responsibility
Alias: $no-basis-marital-status = http://hl7.no/fhir/CodeSystem/no-basis-marital-status

/*
Instance: 592411
InstanceOf: Observation
Usage: #example
* status = #registered
* code.coding[0] = $loinc#29463-7 "Body Weight"
* code.coding[+] = $loinc#3141-9 "Body weight Measured"
* code.coding[+] = $sct#27113001 "Body weight"
* code.coding[+] = $clinical-codes#body-weight "Body Weight"
* subject = Reference(Patient/592410)
* effectiveDateTime = "2020-01-27"
* valueQuantity = 99042 'g' "gram"

Instance: d6c523ec-b520-4221-a8d6-c1c58911ce7a
InstanceOf: Appointment
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-Appointment"
* status = #booked
* appointmentType.coding[0] = $v2-0276#CHECKUP
* appointmentType.coding[+] = urn:oid:2.16.578.1.12.4.1.1.7617#Ordinær
* description = "Discussion on the results of your recent MRI"
* start = "2023-08-10T09:00:00Z"
* end = "2023-08-10T11:00:00Z"
* comment = "Further expand on the results of the MRI and determine the next actions that may be appropriate."
* participant.actor = Reference(e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473) "Peter James Chalmers"
* participant.required = #required
* participant.status = #accepted
*/

Instance: e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473
InstanceOf: NordicPatient
Usage: #example
* name.use = #official
* name.family = "Chalmers"
* name.given = "Peter James"

/*
Instance: GOFSH-GENERATED-ID-0
InstanceOf: Observation
Usage: #example
* status = #registered
* code.coding[0] = $loinc#29463-7 "Body Weight"
* code.coding[+] = $loinc#3141-9 "Body weight Measured"
* code.coding[+] = $sct#27113001 "Body weight"
* code.coding[+] = $clinical-codes#body-weight "Body Weight"
* subject = Reference(Patient/592410)
* effectiveDateTime = "2020-01-22"
* valueQuantity = 99000 'g' "gram"
*/

Instance: GOFSH-GENERATED-ID-1
InstanceOf: Organization
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.101"
* identifier.value = "915933149"
* name = "Direktoratet for e-Helse"
* address[0].extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-address-official"
* address[=].extension.valueBoolean = true
* address[=].type = #postal
* address[=].line = "Postboks 221 Skøyen"
* address[=].city = "OSLO"
* address[=].postalCode = "0213"
* address[+].extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-address-official"
* address[=].extension.valueBoolean = true
* address[=].type = #physical
* address[=].line = "Verkstedveien 1"
* address[=].city = "OSLO"
* address[=].postalCode = "0277"

Instance: GOFSH-GENERATED-ID-2
InstanceOf: NordicPatient
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "210377xxxxx"
* name.family = "Eksempel"
* name.given = "Espen"
* telecom.system = #phone
* telecom.value = "+4798216832"
* telecom.use = #home
* gender = #male
* address.extension[0].url = "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
* address.extension[=].extension.url = "municipality"
* address.extension[=].extension.valueCoding = urn:oid:2.16.578.1.12.4.1.1.3402#0301 "Oslo"
* address.extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-basis-address-official"
* address.extension[=].valueBoolean = true
* address.use = #home
* address.line = "Stålverkskroken 14"
* address.city = "Oslo"
* address.district = "Oslo"
* address.postalCode = "0661"
* address.country = "NO"
* maritalStatus = $v3-MaritalStatus#U "unmarried"
* communication.language.text = "Norsk"
* generalPractitioner.identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* generalPractitioner.identifier.value = "720"
* generalPractitioner.display = "SIDSEL AASE JAVERY"

Instance: GOFSH-GENERATED-ID-3
InstanceOf: NordicPatient
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO
* identifier[0].system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier[=].value = "21030550231"
* identifier[+].system = "http://profil.visma.no/lopenummer"
* identifier[=].value = "123"
* name.family = "Søreng"
* name.given = "Jannice"
* telecom.system = #phone
* telecom.value = "+4733445566"
* telecom.use = #home
* gender = #female
* address.extension[0].url = "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
* address.extension[=].extension.url = "municipality"
* address.extension[=].extension.valueCoding = urn:oid:2.16.578.1.12.4.1.1.3402#0301 "Oslo"
* address.extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-basis-address-official"
* address.extension[=].valueBoolean = true
* address.use = #home
* address.line = "Karisvingen 44"
* address.city = "Oslo"
* address.district = "Oslo"
* address.district.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-municipalitycode"
* address.district.extension.valueCoding = $kommunenummer-alle#0301
* address.postalCode = "0603"
* address.country = "NO"
* maritalStatus = $v3-MaritalStatus#U "unmarried"
* contact.relationship[0] = $v2-0131#C "Emergency Contact"
* contact.relationship[+].text = "Bror"
* contact.name.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
* contact.name.extension.valueString = "Pårørende"
* contact.name.text = "Pål Pårørende Olsen"
* contact.name.family = "Olsen"
* contact.name.given = "Pål"
* communication.language.text = "Norsk"
* generalPractitioner.identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* generalPractitioner.identifier.value = "720"
* generalPractitioner.display = "SIDSEL AASE JAVERY"

Instance: GOFSH-GENERATED-ID-4
InstanceOf: NordicPractitioner
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner"
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.4"
* identifier.value = "9144889"
* name.family = "Koman"
* name.given = "Magnar"
* telecom[0].system = #phone
* telecom[=].value = "75589889"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "75589899"
* telecom[+].system = #phone
* telecom[=].value = "98128921"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "mako@bottomline.no"
* telecom[=].use = #work
* address.use = #work
* address.line = "Dreyfushammarn 23"
* address.city = "BODØ"
* address.postalCode = "8012"
* qualification[0].code = urn:oid:2.16.578.1.12.4.1.1.9060#LE "Lege"
* qualification[+].code = urn:oid:2.16.578.1.12.4.1.1.7426#1 "Allmennmedisin"
* qualification[+].code = urn:oid:2.16.578.1.12.4.1.1.7704#1 "Autorisasjon"
* qualification[=].period.start = "2018-10-10"
* qualification[+].code = urn:oid:2.16.578.1.12.4.1.1.7426#152 "Ortopedisk kirurgi"

/*
Instance: GOFSH-GENERATED-ID-5
InstanceOf: RelatedPerson
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "15080050515"
* patient.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* patient.identifier.value = "04021950128"
* relationship[0] = $no-basis-family-relation#far
* relationship[+] = $no-basis-parental-responsibility#far
* name.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
* name.extension.valueString = "SKIKKELIG"
* name.family = "ÆRESDOKTOR"
* name.given = "SOLID"
* address.extension[0].url = "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
* address.extension[=].extension[0].url = "cadastralUnitNumber"
* address.extension[=].extension[=].valueInteger = 15
* address.extension[=].extension[+].url = "propertyUnitNumber"
* address.extension[=].extension[=].valueInteger = 557
* address.extension[=].extension[+].url = "municipality"
* address.extension[=].extension[=].valueCoding = urn:oid:2.16.578.1.12.4.1.1.3402#1201 "Bergen"
* address.extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-basis-address-official"
* address.extension[=].valueBoolean = true
* address.use = #home
* address.line = "Nyhaugveien 3"
* address.city = "BERGEN"
* address.district = "BERGEN"
* address.postalCode = "5067"
* address.country = "NO"

Instance: GOFSH-GENERATED-ID-6
InstanceOf: RelatedPerson
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"
* extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-person-citizenship"
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "05073500186"
* patient.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-relatedperson-person-reference"
* patient.extension.valueReference.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* patient.extension.valueReference.identifier.value = "04021950128"
* patient.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* patient.identifier.value = "04021950128"
* relationship = $no-basis-marital-status#gift
* name.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
* name.extension.valueString = "Pårørende"
* name.family = "Sørgård"
* name.given = "Ærlend"

Instance: GOFSH-GENERATED-ID-7
InstanceOf: RelatedPerson
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"
* extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-person-citizenship"
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "05073500186"
* patient.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* patient.identifier.value = "04021950128"
* relationship = $no-basis-marital-status#gift
* name.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
* name.extension.valueString = "Pårørende"
* name.family = "Sørgård"
* name.given = "Ærlend"

Instance: no-basis-HealthcareService-example
InstanceOf: HealthcareService
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-HealthcareService"
* identifier.system = "http://hl7.no/shared-ids"
* identifier.value = "HS-12"
* active = true
* providedBy = Reference(Organization/f001) "Burgers University Medical Center"
* providedBy.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.101"
* providedBy.identifier.value = "test"
* category = urn:oid:2.16.578.1.12.4.1.1.9040#101 "Helseforetak/private sykehus"
* specialty = urn:oid:2.16.578.1.12.4.1.1.8655#S0208 "Ortopedisk kirurgi"

Instance: no-basis-Procedure-example
InstanceOf: Procedure
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-Procedure"
* status = #completed
* code = $sct#73761001 "Colonoscopy (procedure)"
* subject = Reference(Patient/example)
* performer.function = $sct#8921000202108 "Primary performing endoscopist (person)"
* performer.actor = Reference(Practitioner/example)
* bodySite = $sct#485005 "TC - Transverse colon"

Instance: PatientAppointmentResponseExample
InstanceOf: AppointmentResponse
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-AppointmentResponse"
* extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-shortnotice"
* extension.valueBoolean = true
* appointment = Reference(d6c523ec-b520-4221-a8d6-c1c58911ce7a) "MRI results discussion"
* actor = Reference(e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473) "Peter James Chalmers"
* actor.type = "Patient"
* participantStatus = #accepted
*/
