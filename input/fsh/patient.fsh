Profile: NordicPatient
Parent: Patient
Id: combined-nordic-patient-profile
Title: "Combined Nordic Patient Profile."
Description: "A profile enforcing all known Nordic profiles for the Patient resource."
// IPA
// * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
// * ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient"
// IPS
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
// * ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
// DK
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient"
// FI
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://hl7.fi/fhir/finnish-base-profiles/StructureDefinition/fi-base-patient"
// NO
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"
// SE
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePatient"

Instance: JohnDoe
InstanceOf: NordicPatient
Description: "An example of a patient with DAR extensions for most fields."
* name
  * given[0].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
  * given[0].extension.valueCode = #unknown
  * family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
  * family.extension.valueCode = #unknown
  * use = #anonymous
/*
* identifier.system.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* identifier.system.extension.valueCode = #unknown
*/
* identifier.value.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* identifier.value.extension.valueCode = #unknown
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* birthDate.extension.valueCode = #unknown
* active.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* active.extension.valueCode = #unknown
* gender = #unknown

Instance: JaneDoe
InstanceOf: NordicPatient
Description: "An example of a patient almost no values."
* name
  * given[0] = "Jane"
  * family = "Doe"
