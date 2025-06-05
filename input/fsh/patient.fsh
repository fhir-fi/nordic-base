// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: CombinedEuropeanPatient
Parent: Patient
Id: combined-european-patient-profile
Title: "Combined European Patient Profile."
Description: "A profile enforcing all known European profiles for the Patient resource."
// IPA
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient"
// IPS
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
// BE
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
// CH
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
// DK
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient"
// EE
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://fhir.ee/StructureDefinition/ee-patient"
// FI
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://hl7.fi/fhir/finnish-base-profiles/StructureDefinition/fi-base-patient"
// FR
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
// NL
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
// NO
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"
// SE
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePatient"
// UK
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient"
// AT
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"

Instance: JohnDoe
InstanceOf: CombinedEuropeanPatient
Description: "An example of a patient DAR extensions for most fields."
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
InstanceOf: CombinedEuropeanPatient
Description: "An example of a patient almost no values."
* name
  * given[0] = "Jane"
  * family = "Doe"
