Profile: NordicOrganization
Parent: Organization
Id: combined-nordic-organization-profile
Title: "Combined Nordic Organization Profile."
Description: "A profile enforcing all known Nordic profiles for the Organization resource."
// IPS
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
// * ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
// DK
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-organization"
// FI
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://hl7.fi/fhir/finnish-base-profiles/StructureDefinition/fi-base-organization"
// NO
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"
// SE
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization"
