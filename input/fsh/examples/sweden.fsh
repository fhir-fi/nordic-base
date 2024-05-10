Alias: $ACTCODE = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $SCT = http://snomed.info/sct

Instance: OrganizationExample1
InstanceOf: NordicOrganization
Description: "Organization example"
* id = "Organization1"
* identifier[0].value = "SE2321000131-P000000123457"

Instance: PatientExample1
InstanceOf: NordicPatient
Description: "Patient example"
* meta.security[0] = $ACTCODE#DEMO
* meta.security[1] = SecurityLabelCS#sekretessmarkering
* id = "PatientExample1"
* identifier[0].value = "195009072553"
* name[0].use = #official
* name[0].family = "Goode Johansson"
* name[0].given[0] = "John"
* name[0].given[1] = "Bob"
* name[0].given[0].extension[0]
  * url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
  * valueCode = #CL
* name[0].extension[0]
  * url = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseMiddleNameExtension"
  * valueString = "Johansson"
* name[0].extension[+]
  * url = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOwnFamilyExtension"
  * valueString = "Goode"
* name[0].text = "John Bob Goode Johansson"
* gender = #male
* maritalStatus = #RP "Registrerad partner"
* birthDate = "1950-09-07"
* address.line = "2120 S Michigan Ave"
* address.city = "Chicago"
* address.postalCode = "60616"
* address.country = "US"
* address.extension[0]
  * url = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseAddressPersonExtension"
  * valueCodeableConcept = $SCT#63401000052101 "utlandsadress"

Instance: PractitionerExample1
InstanceOf: NordicPractitioner
Description: "Practitioner example"
* id = "PractitionerExample1"
* name[0].use = #official
* name[0].family = "Goode Johansson"
* name[0].given[0] = "John"
* name[0].given[1] = "Bob"
* name[0].extension[0]
  * url = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseMiddleNameExtension"
  * valueString = "Johansson"
* name[0].extension[+]
  * url = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOwnFamilyExtension"
  * valueString = "Goode"
* name[0].text = "John Bob Goode Johansson"
* name[0].given[1].extension[0]
  * url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
  * valueCode = #CL
* identifier[0].value = "SE2321000131-P000000123456"
* qualification.identifier[0].value = "12345678"
* qualification.code = $SCT#309453006 "barnmorska"

