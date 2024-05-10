Profile: NordicPractitioner
Parent: Practitioner
Id: combined-nordic-practitioner-profile
Title: "Combined Nordic Practitioner Profile."
Description: "A profile enforcing all known Nordic profiles for the Practitioner resource."
// IPA
// * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
// * ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-practitioner"
// IPS
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
// * ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
// DK
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-practitioner"
// FI
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://hl7.fi/fhir/finnish-base-profiles/StructureDefinition/fi-base-practitioner"
// NO
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner"
// SE
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitioner"
