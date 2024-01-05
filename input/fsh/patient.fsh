// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Instance: PatientExample
InstanceOf: Patient
Description: "An example of a patient with a license to krill."
* meta.profile[0] = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient"
* name
  * given[0] = "James"
  * family = "Pond"