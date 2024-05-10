Alias: $sct = http://snomed.info/sct
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $dk-core-municipality-codes = http://hl7.dk/fhir/core/CodeSystem/dk-core-municipality-codes
Alias: $dk-core-regional-subdivision-codes = http://hl7.dk/fhir/core/CodeSystem/dk-core-regional-subdivision-codes
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $dk-marital-status = http://hl7.dk/fhir/core/CodeSystem/dk-marital-status
Alias: $DkCoreProfessionGroupCodes = http://hl7.dk/fhir/core/CodeSystem/DkCoreProfessionGroupCodes
Alias: $condition-dueTo = http://hl7.org/fhir/StructureDefinition/condition-dueTo
Alias: $condition-code = http://hl7.org/fhir/ValueSet/condition-code
Alias: $sor-organization-type = http://hl7.dk/fhir/core/ValueSet/sor-organization-type
Alias: $dk-marital-status_1 = http://hl7.dk/fhir/core/ValueSet/dk-marital-status
Alias: $ucum = http://unitsofmeasure.org
Alias: $NPU = urn:oid:1.2.208.176.2.1
Alias: $Medcom = http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-observation-codes
Alias: $SKS = urn:oid:1.2.208.176.2.4
Alias: $LOINC = http://loinc.org
Alias: $IEEEx73 = urn:iso:std:iso:11073:10101
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $observation-vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $observation-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight
Alias: $observation-heartrate = http://hl7.org/fhir/StructureDefinition/heartrate
Alias: $observation-bp = http://hl7.org/fhir/StructureDefinition/bp
Alias: $LOINC-vitalsigns = http://hl7.org/fhir/ValueSet/observation-vitalsignresult
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Instance: ObservationRespiratoryBasicObservation
InstanceOf: DkCoreBasicObservation
Title: "John's Respiratory rate measurement (Basic observation)"
Description: "A simple basic observation of a hyperventilating patient"
Usage: #example
* category = $observation-category#vital-signs
* status = #final
* code.coding[LOINC] = $LOINC#9279-1 "Respiratory rate"
* valueQuantity.value = 50
* valueQuantity.code = #/min
* valueQuantity.system = $ucum
* valueQuantity.unit = "/min"
* effectiveDateTime = 2023-11-20T18:00:00+01:00
* subject = Reference(john)
* performer = Reference(AbrahamLaege)

Instance: ObservationOxySatBasicObservationOrg
InstanceOf: DkCoreBasicObservation
Title: "John's oxygen saturation measurement (Basic observation)"
Usage: #example
* category = $observation-category#vital-signs
* status = #final
* code.coding[LOINC] = $LOINC#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE] = $IEEEx73#150456 "MDC_PULS_OXIM_SAT_O2"
* valueQuantity.value = 97.0
* valueQuantity.code = #%
* valueQuantity.system = $ucum
* valueQuantity.unit = "%"
* effectiveDateTime = 2023-11-01T12:00:00+01:00
* subject = Reference(john)
* performer = Reference(AbrahamLaege)

Instance: ObservationOxySatObservation
InstanceOf: DkCoreObservation
Title: "John's oxygen saturation measurement (Observation)"
Description: """
This example suggests a way to handle the oxygen saturation case, where the original measurement
was reported in '%' by a device or typed in manually, and then 'translated' to the NPU system,
which requires the value to be unitless.
"""
Usage: #example
* category = $observation-category#vital-signs
* status = #final
* code.coding[NPU] = $NPU#NPU27280 "Hb(Fe; O₂-bind.;aB)—Oxygen(O₂); sat.(Pulse oximetry) = ?"
* valueQuantity.value = 0.97
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* subject = Reference(john)
* performer = Reference(AbrahamLaege)
* effectiveDateTime = 2023-11-01T12:00:00+01:00
* contained[0] = ObservationOxySatBasicObservationOrg
* derivedFrom = Reference(ObservationOxySatBasicObservationOrg)


/* **************
 *
 * TOBS example
 *
 * ************** */

Instance: ElseConsciousness
InstanceOf: DkCoreObservation
Usage: #example
* status = #final
* code = $sct#6942003
* subject = Reference(else)
* valueCodeableConcept.coding[+] = $sct#450847001
* method = $sct#733985002 "Reported (qualifier value)"
* effectiveDateTime = "2023-09-12T17:45:00.000Z"
* performer = Reference(SidselSygeplejerske)

Instance: ElseBloodPressure
InstanceOf: DkCoreBasicObservation
Usage: #example
* status = #final
* category = $observation-category#vital-signs
* code.coding[SNOMEDCT] = $sct#75367002
* code.coding[LOINC] = $LOINC#85354-9
* subject = Reference(else)
* component[0].code.coding[LOINC] = $LOINC#8480-6
* component[=].code.coding[SNOMEDCT] = $sct#407554009
* component[=].valueQuantity = 147 'mm[Hg]' "mmHg"
* component[+].code.coding[LOINC] = $LOINC#8462-4
* component[=].code.coding[SNOMEDCT] = $sct#407555005
* component[=].valueQuantity = 95 'mm[Hg]' "mmHg"
* method = $sct#272391002 "Measurement technique (qualifier value)"
* effectiveDateTime = "2023-09-12T17:45:00.000Z"
* performer = Reference(SidselSygeplejerske)


Instance: ElseBodyTemperature
InstanceOf: DkCoreBasicObservation
Usage: #example
* status = #final
* category = $observation-category#vital-signs
* code.coding[SNOMEDCT] = $sct#276885007
* code.coding[LOINC] = $LOINC#8310-5
* subject = Reference(else)
* method = $sct#272391002 "Measurement technique (qualifier value)"
* effectiveDateTime = "2023-09-12T17:45:00.000Z"
* valueQuantity = 38.7 'Cel' "grader celcius"
* performer = Reference(SidselSygeplejerske)

Instance: ElseHeartRate
InstanceOf: DkCoreBasicObservation
Usage: #example
* status = #final
* category = $observation-category#vital-signs
* code.coding[SNOMEDCT] = $sct#364075005
* code.coding[LOINC] = $LOINC#8867-4
* subject = Reference(else)
* method = $sct#272391002 "Measurement technique (qualifier value)"
* effectiveDateTime = "2023-09-12T17:45:00.000Z"
* valueQuantity = 92 '/min' "slag/minut"
* performer = Reference(SidselSygeplejerske)

Instance: ElseRespirationRate
InstanceOf: DkCoreBasicObservation
Usage: #example
* status = #final
* category = $observation-category#vital-signs
* code.coding[SNOMEDCT] = $sct#86290005
* code.coding[LOINC] = $LOINC#9279-1
* subject = Reference(else)
* method = $sct#272391002 "Measurement technique (qualifier value)"
* effectiveDateTime = "2023-09-12T17:45:00.000Z"
* valueQuantity = 19 '/min' "/min"
* performer = Reference(SidselSygeplejerske)

Instance: ElsesTOBSscore
InstanceOf: DkCoreObservation
Usage: #example
* status = #final
* code.coding = $Medcom#MCS88125 "Pt—Tidlig Opsporing af Begyndende Sygdom (TOBS) score; antal (værdi 0-15) = ?"
* subject = Reference(else)
* effectiveDateTime = "2023-09-12T17:45:00.000Z"
* valueQuantity.value = 3
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* performer = Reference(SidselSygeplejerske)

Instance: ElsesTOBS
InstanceOf: Bundle
Title: "Else's TOBS measurements"
Description: "An example of TOBS (Danish: Tidlig opsporing af begyndende sygdom), which includes level of consciousness, heart rate, respiration rate, blood pressure and temperature."
Usage: #example
* type = #collection
* timestamp = "2023-09-12T17:45:00.000Z"
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Patient/else"
* entry[=].resource = else
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/ElseConsciousness"
* entry[=].resource = ElseConsciousness
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/ElseBloodPressure"
* entry[=].resource = ElseBloodPressure
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/ElseBodyTemperature"
* entry[=].resource = ElseBodyTemperature
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/ElseHeartRate"
* entry[=].resource = ElseHeartRate
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/ElseRespirationRate"
* entry[=].resource = ElseRespirationRate
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/ElsesTOBSscore"
* entry[=].resource = ElsesTOBSscore
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Practitioner/SidselSygeplejerske"
* entry[=].resource = SidselSygeplejerske

/* **************
*
* TOKS eksempel inkl. GCS
*
* ************** */

Instance: MaxConsciousness
InstanceOf: DkCoreObservation
Usage: #example
* status = #final
* category = $observation-category#vital-signs
* code.coding[0] = $sct#6942003
* code.coding[LOINC] = $LOINC#80288-4
* subject = Reference(Max)
* valueCodeableConcept.coding = $sct#450847001
* method = $sct#733985002 "Reported (qualifier value)"
* effectiveDateTime = "2023-08-08T13:30:00.000Z"

Instance: MaxRespirationRate
InstanceOf: DkCoreBasicObservation
Usage: #example
* status = #final
* code.coding[SNOMEDCT] = $sct#86290005
* code.coding[LOINC] = $LOINC#9279-1
* subject = Reference(Max)
* method = $sct#272391002 "Measurement technique (qualifier value)"
* effectiveDateTime = "2023-08-08T13:30:00.000Z"
* valueQuantity = 13 '/min' "/min"

Instance: MaxHeartRate
InstanceOf: DkCoreBasicObservation
Usage: #example
* status = #final
* category = $observation-category#vital-signs
* code.coding[SKS] = $SKS#ZZ3140
* code.coding[LOINC] = $LOINC#8867-4
* subject = Reference(Max)
* effectiveDateTime = "2023-08-08T13:30:00.000Z"
* method = $sct#272391002 "Measurement technique (qualifier value)"
* valueQuantity = 68 '/min' "slag/minut"

Instance: MaxBodyTemperature
InstanceOf: DkCoreBasicObservation
Usage: #example
* status = #final
* category = $observation-category#vital-signs
* code.coding[SKS] = $SKS#ZZ0253
* code.coding[LOINC] = $LOINC#8310-5
* subject = Reference(Max)
* effectiveDateTime = "2023-08-08T13:30:00.000Z"
* method = $sct#272391002 "Measurement technique (qualifier value)"
* valueQuantity = 37 'Cel' "grader celcius"

Instance: MaxBloodPressure
InstanceOf: DkCoreBasicObservation
Usage: #example
* status = #final
* category = $observation-category#vital-signs
* code.coding[SKS] = $SKS#ZZ3160
* code.coding[LOINC] = $LOINC#85354-9
* subject = Reference(Max)
* effectiveDateTime = "2023-08-08T13:30:00.000Z"
* method = $sct#272391002 "Measurement technique (qualifier value)"
* component[0].code.coding[0] = $LOINC#8480-6
* component[=].code.coding[+] = $sct#407554009
* component[=].valueQuantity = 156 'mm[Hg]' "mmHg"
* component[+].code.coding[0] = $LOINC#8462-4
* component[=].code.coding[+] = $sct#407555005
* component[=].valueQuantity = 78 'mm[Hg]' "mmHg"

Instance: MaxSaturation
InstanceOf: DkCoreBasicObservation
Usage: #example
* category = $observation-category#vital-signs
* status = #final
* code.coding[LOINC] = $LOINC#2708-6 "Oxygen saturation in Arterial blood"
* valueQuantity = 99.0 '%' "%"
* subject = Reference(Max)
* effectiveDateTime = "2023-08-08T13:30:00.000Z"
* method = $sct#272391002 "Measurement technique (qualifier value)"

Instance: MaxGlasgowComaScale
InstanceOf: DkCoreObservation
Usage: #example
* status = #final
* code.coding[LOINC] = $LOINC#9269-2
* code.coding[+] = $sct#248241002
* subject = Reference(Max)
* valueQuantity = 13 '{score}'
* referenceRange[0].high = 8 '{score}'
* referenceRange[=].type.text = "Severe TBI"
* referenceRange[+].low = 9 '{score}'
* referenceRange[=].high = 12 '{score}'
* referenceRange[=].type.text = "Moderate TBI"
* referenceRange[+].low = 13 '{score}'
* referenceRange[=].type.text = "Mild TBI"
* effectiveDateTime = "2023-08-08T13:30:00.000Z"
* component[0].code = $LOINC#9268-4 "Glasgow coma score motor"
* component[=].valueCodeableConcept.coding = $LOINC#LA6566-9 "Localizing pain"
* component[+].code = $LOINC#9270-0 "Glasgow coma score verbal"
* component[=].valueCodeableConcept.coding = $LOINC#LA6560-2 "Confused"
* component[+].code = $LOINC#9267-6 "Glasgow coma score eye opening"
* component[=].valueCodeableConcept.coding = $LOINC#LA6556-0 "Eyes open spontaneously"


Instance: MaxTOKS
InstanceOf: Bundle
Title: "Max TOKS measurements, including Glasgow Coma Scale assesment"
Description: "An example of TOBS (Danish: Tidlig opsporing af begyndende sygdom), which includes level of consciousness, heart rate, respiration rate, blood pressure and temperature."
Usage: #example
* type = #collection
* timestamp = "2023-08-08T13:30:00.000Z"
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Patient/Max"
* entry[=].resource = Max
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/MaxConsciousness"
* entry[=].resource = MaxConsciousness
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/MaxBloodPressure"
* entry[=].resource = MaxBloodPressure
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/MaxBodyTemperature"
* entry[=].resource = MaxBodyTemperature
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/MaxHeartRate"
* entry[=].resource = MaxHeartRate
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/MaxRespirationRate"
* entry[=].resource = MaxRespirationRate
* entry[+].fullUrl = "http://hl7.dk/fhir/core/Observation/MaxGlasgowComaScale"
* entry[=].resource = MaxGlasgowComaScale

/* **************
*
* Vital signs panel
*
* ************** */

Instance: MaxVitalSignsPanel
InstanceOf: DkCoreBasicObservation
Usage: #example
* category = $observation-category#vital-signs
* status = #final
* code.coding[LOINC] = $LOINC#85353-1 "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
* subject = Reference(Max)
* effectiveDateTime = "2023-08-08T13:30:00.000Z"
* hasMember[+] = Reference(MaxBloodPressure)
* hasMember[+] = Reference(MaxRespirationRate)
* hasMember[+] = Reference(MaxHeartRate)
* hasMember[+] = Reference(MaxBodyTemperature)


Instance: ConditionPressureUlcer
InstanceOf: DkCoreCondition
Title: "John tryksår"
Description: "John, tryksår, kommunal tilstand"
Usage: #example
* code.coding[0] = urn:oid:1.2.208.176.2.21#I4.4 "Problemer med tryksår"
* code.coding[+] = $sct#1163220007 "Pressure injury stage II"
* code.text = "Tryksår i stadium 2, siddende på venstre lår. 4cmx5cm, dybde 3mm, ingen infektion."
* extension.url = "http://hl7.dk/fhir/core/StructureDefinition/ConditionLastAssertedDate"
* extension.valueDateTime = "2020-12-12"
* clinicalStatus = $condition-clinical#active
* category = $condition-category#problem-list-item
* subject.reference = "Patient/john"
* recordedDate = "2020-06-05"

Instance: ElseGraviditet
InstanceOf: DkCoreCondition
Title: "Else Graviditet"
Description: "Else Graviditet, tilstandskode som indberettes ifm Elses ambulante forløb (fx jordemoder), og ved eventuel indlæggelse i graviditeten"
Usage: #example
* code = urn:oid:1.2.208.176.2.4.12#DZ340 "Graviditet, førstegangsfødende"
* subject.reference = "Patient/else"
* category = $condition-category#encounter-diagnosis
* recordedDate = "2021-07-03"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed

Instance: JohnDiabetes
InstanceOf: DkCoreCondition
Title: "John diabetes"
Description: "Johns diabetes-diagnose, udskrivningsdiagnose fra hospitalet fx til brug i indberetning og epikrise"
Usage: #example
* code = urn:oid:1.2.208.176.2.4.12#DE11 "Type 2-diabetes"
* subject.reference = "Patient/john"
* asserter.reference = "Practitioner/AbrahamLaege"
* recorder.reference = "Practitioner/AbrahamLaege"
* category = $condition-category#encounter-diagnosis
* onsetDateTime = "2020-02-20"
* recordedDate = "2020-03-15"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed

Instance: JohnFracture
InstanceOf: DkCoreCondition
Title: "John fraktur"
Description: "Johns fraktur-diagnose, udskrivningsdiagnose fra hospitalet med tillægskode"
Usage: #example
* code.coding[SKS-D] = urn:oid:1.2.208.176.2.4.12#DS721+TUL1 "Pertrokantær femurfraktur, højresidig"
* subject.reference = "Patient/john"
* asserter.reference = "Practitioner/AbrahamLaege"
* recorder.reference = "Practitioner/AbrahamLaege"
* category = $condition-category#encounter-diagnosis
* onsetDateTime = "2022-04-26"
* recordedDate = "2022-04-27"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed


Instance: JohnMelanoma
InstanceOf: DkCoreCondition
Title: "John mistanke om Modermærkekræft"
Description: "Johns mistanke om modermærkekræft i huden, kan fx bruges som henvisningsdiagnosese"
Usage: #example
* code = urn:oid:1.2.208.176.2.4.12#DC43 "Modermærkekræft i huden"
* subject.reference = "Patient/john"
* asserter.reference = "Practitioner/AbrahamLaege"
* recorder.reference = "Practitioner/AbrahamLaege"
* category = $condition-category#encounter-diagnosis
* recordedDate = "2021-05-01"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed

Instance: JohnPacemaker
InstanceOf: DkCoreCondition
Title: "John pacemaker"
Description: "Johns status efter pacemakeroperation, udtrykt semantisk korrekt med fund frem for operationskode"
Usage: #example
* code = $sct#441509002 "Cardiac pacemaker in situ"
* subject.reference = "Patient/john"
* recorder.reference = "Practitioner/AbrahamLaege"
* category = $condition-category#problem-list-item
* recordedDate = "2021-05-01"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed


Instance: ElseUrinStix
InstanceOf: DkCoreObservation
Usage: #example
* status = #final
* code.coding[0] = $NPU#NPU03987 "U—Leukocytter; arb.k.(proc.) = ?"
* code.coding[+] = $sct#252385000 "Urine dipstick for leukocyte esterase (procedure)"
* subject = Reference(else)
* effectiveDateTime = "2023-09-12T17:45:00.000Z"
* valueString = "Påviselige leukocytter"
* method = $sct#272391002 "Measurement technique (qualifier value)"

Instance: ElsePainVRS
InstanceOf: dk-core-observation
Usage: #example
Title: "ElsePainVRS"
Description: "Elses smerte målt med VRS"
* subject = Reference(else)
* code.coding = $sct#1144798005 "Verbal Rating Scale pain intensity score"
* valueCodeableConcept.coding[0].system = "http://localSystem.dk"
* valueCodeableConcept.coding[0].code = #d253770d-ce0b-4320-9806-b8fbe9e5af8a "Kraftige/svære smerter (3)"
* valueCodeableConcept.coding[0].userSelected = true
* valueCodeableConcept.coding[1] = $sct#76948002 "Severe pain (finding)"
* status = #final
* effectiveDateTime = 2020-06-01

Instance: ObservationOxySat
InstanceOf: DkCoreObservation
Title: "John's oxygen saturation measurement"
Usage: #inline
* status = #final
* code.coding = $NPU#NPU03011 "Iltmætning"
* valueQuantity.value = 0.97
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* effectiveDateTime = 2023-11-01T12:00:00+01:00
* subject = Reference(john)
* performer = Reference(AbrahamLaege)




/* **************
 *
 * Examples involving Continua compliant observations and exchanges
 *
 * ************** */


Alias: $PhdPatient = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdPatient
Alias: $PhgDevice = http://hl7.org/fhir/uv/phd/StructureDefinition/PhgDevice
Alias: $PhdDevice = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice
Alias: $PhdNumericObservation = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdNumericObservation
Alias: $PhdCompoundNumericObservation = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdCompoundNumericObservation
Alias: $PhdBitsEnumerationObservation = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdBitsEnumerationObservation
Alias: $PhdCoincidentTimeStampObservation = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdCoincidentTimeStampObservation
Alias: $EUI64 = urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680
Alias: $BD_ADDR = http://hl7.org/fhir/sid/eui-48/bluetooth
Alias: $ContinuaDeviceIdentifiers = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers
Alias: $ContinuaPHD = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaPHD
Alias: $ContinuaHFS = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaHFS
Alias: $observation-gatewayDevice = http://hl7.org/fhir/StructureDefinition/observation-gatewayDevice
Alias: $v2-0136 = http://terminology.hl7.org/CodeSystem/v2-0136
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $ASN1ToHL7 = http://hl7.org/fhir/uv/phd/CodeSystem/ASN1ToHL7


Instance: Poul
InstanceOf: NordicPatient
Usage: #example
* meta.profile = $PhdPatient
* identifier[0].value = "3001749995"
* identifier[0].type = $v2-0203#NI
* name
  * family = "Hansen"
  * given[+] = "Poul"


Instance: WeightScale.606405FFFECFC604
InstanceOf: Device
Title: "Poul's A&D weight scale"
Description: """
  This device is Poul's personal weighing scale, which he keeps in the bathroom
  of his home, and uses for daily monitoring due to his CHF condition.
"""
Usage: #example
* meta.profile = $PhdDevice
* identifier[+]
  * system = $EUI64
  * type.coding[0] = $ContinuaDeviceIdentifiers#SYSID "IEEE 11073 System Identifier"
  * value = "60-64-05-FF-FE-CF-C6-04"
* identifier[+]
  * system = $BD_ADDR
  * type.coding[0] = $ContinuaDeviceIdentifiers#BTMAC "Bluetooth MAC address"
  * value = "60-64-05-CF-C6-04"
* manufacturer = "A&D Medical "
* modelNumber = "UC-352BLE "
* serialNumber = "5180400664"
* type
  * coding = $IEEEx73#65573 "MDC_MOC_VMS_MDS_SIMP"
  * text = "MDC_MOC_VMS_MDS_SIMP: Personal health device"
* specialization
  * systemType
    * coding = $IEEEx73#528399 "MDC_DEV_SPEC_PROFILE_SCALE"
    * text = "MDC_DEV_SPEC_PROFILE_SCALE: Weighing scale"
  * version = "1"
* version[+]
  * type[+].coding = $IEEEx73#532352 "MDC_REG_CERT_DATA_CONTINUA_VERSION"
  * type[=].text = "MDC_REG_CERT_DATA_CONTINUA_VERSION: Continua version"
  * value = "4.1"
* version[+]
  * type[+].coding = $IEEEx73#531974 "MDC_ID_PROD_SPEC_HW"
  * type[=].text = "MDC_ID_PROD_SPEC_HW: Hardware version"
  * value = "0.00"
* version[+]
  * type[+].coding = $IEEEx73#531975 "MDC_ID_PROD_SPEC_SW"
  * type[=].text = "MDC_ID_PROD_SPEC_SW: Software version"
  * value = "0.00"
* version[+]
  * type[+].coding = $IEEEx73#531976 "MDC_ID_PROD_SPEC_FW"
  * type[=].text = "MDC_ID_PROD_SPEC_FW: Firmware version"
  * value = "WSP002_208"
* property[+]
  * type.coding = $IEEEx73#532353 "MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST"
  * type.text = "MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST: Continua certified device list"
  * valueCode[+]
    * coding = $ContinuaPHD#32783
    * text = "BluetoothLE: Weighing scale"
* property[+]
  * type.coding = $IEEEx73#68220 "MDC_TIME_SYNC_PROTOCOL"
  * type.text = "MDC_TIME_SYNC_PROTOCOL: Time synchronization protocol"
  * valueCode
    * coding = $IEEEx73#532224 "MDC_TIME_SYNC_NONE"
    * text = "MDC_TIME_SYNC_NONE: No time synchronization"
* property[+]
  * type.coding = $ASN1ToHL7#532354.0
  * type.text = "regulation-status"
  * valueCode
    * coding = $v2-0136#N
    * text = "Device is regulated"
* property[+]
  * type.coding = $ASN1ToHL7#68219.0
  * type.text = "mds-time-capab-real-time-clock"
  * valueCode
    * coding = $v2-0136#Y
    * text = "Real time clock is supported"
* property[+]
  * type.coding = $ASN1ToHL7#68219.1
  * type.text = "mds-time-capab-set-clock"
  * valueCode
    * coding = $v2-0136#Y
    * text = "Setting the real time clock is supported"


Instance: Weight.Poul.230221
InstanceOf: DkCoreObservation
Title: "Poul's daily weighing on Feb. 21st"
Description: """
  Poul has been instructed to perform a daily weighing in the morning. This is his
  daily weighing from Feb. 21st 2023.
"""
Usage: #example
* identifier.value = "606405FFFECFC604-3001749995-urn:oid:1.2.208.176.1.2-188736-74.0-kg-20230221T083640.00"
* meta.profile[+] = $PhdNumericObservation
* meta.profile[+] = $observation-vitalsigns
* meta.profile[+] = $observation-bodyweight
* status = #final
* category.coding = $observation-category#vital-signs "Vital signs"
* code
  * coding[+] = $LOINC#29463-7 "Body weight"
  * coding[+] = $IEEEx73#188736 "MDC_MASS_BODY_ACTUAL"
  * coding[+] = $NPU#NPU03804 "Pt—Body; mass = ? kg"
  * text = "MDC_MASS_BODY_ACTUAL: Body weight"
* subject = Reference(http://example.org/fhir/Patient/Poul)
* performer = Reference(http://example.org/fhir/Patient/Poul)
* effectiveDateTime = "2023-02-21T08:36:40+01:00"
* valueQuantity = 74.0 'kg' "kg"
* device = Reference(WeightScale.606405FFFECFC604)
* extension
  * url = $observation-gatewayDevice
  * valueReference = Reference(http://example.org/fhir/Telma.FEEDDADADEADBEEF)
* derivedFrom = Reference(http://example.org/fhir/CoincidentTimeStamp.0123)



/*
 * A complex example involving a Continua-compliant observation reporting upload
 */



Instance: Telma.FEEDDADADEADBEEF
InstanceOf: Device
Usage: #example
* meta.profile = $PhgDevice
* identifier[+]
  * system = $EUI64
  * type.coding = $ContinuaDeviceIdentifiers#SYSID "IEEE 11073 System Identifier"
  * value = "FE-ED-DA-DA-DE-AD-BE-EF"
* manufacturer = "Trifork"
* modelNumber = "Telma (Android)"
* type
  * coding = $IEEEx73#531981 "MDC_MOC_VMS_MDS_AHD"
  * text = "MDC_MOC_VMS_MDS_AHD: Continua compliant gateway"
* version[+]
  * type
    * coding = $IEEEx73#532352 "MDC_REG_CERT_DATA_CONTINUA_VERSION"
    * text = "MDC_REG_CERT_DATA_CONTINUA_VERSION: Continua version"
  * value = "7.0"
* version[+]
  * type
    * coding = $IEEEx73#531974 "MDC_ID_PROD_SPEC_HW"
    * text = "MDC_ID_PROD_SPEC_HW: Hardware version"
  * value = "Samsung Tab S7+ (SM-T970)"
* version[+]
  * type
    * coding = $IEEEx73#531975 "MDC_ID_PROD_SPEC_SW"
    * text = "MDC_ID_PROD_SPEC_SW: Software version"
  * value = "1.2.0 (build 2662)"
* version[+]
  * type
    * coding = $IEEEx73#531976 "MDC_ID_PROD_SPEC_FW"
    * text = "MDC_ID_PROD_SPEC_FW: Firmware version"
  * value = "Android 12 (API 31)"
* property[+]
  * type
    * coding = $IEEEx73#532353 "MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST"
    * text = "MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST: Continua certified device list"
  * valueCode[+]
    * coding = $ContinuaPHD#32783
    * text = "BluetoothLE: Weighing scale"
  * valueCode[+]
    * coding = $ContinuaPHD#32775
    * text = "BluetoothLE: Blood pressure monitor"
  * valueCode[+]
    * coding = $ContinuaPHD#32772
    * text = "BluetoothLE: Pulse oximeter"
* property[+]
  * type
    * coding = $IEEEx73#532355 "MDC_REG_CERT_DATA_CONTINUA_AHD_CERT_LIST"
    * text = "MDC_REG_CERT_DATA_CONTINUA_AHD_CERT_LIST: Continua certified Health&Fitness interfaces list"
  * valueCode
    * coding = $ContinuaHFS#7 "observation-upload-fhir"
    * text = "observation-upload-fhir: FHIR resource upload"
* property[+]
  * type
    * coding = $IEEEx73#68220 "MDC_TIME_SYNC_PROTOCOL"
    * text = "MDC_TIME_SYNC_PROTOCOL: Time synchronization protocol"
  * valueCode
    * coding = $IEEEx73#532226 "MDC_TIME_SYNC_NTPV4"
    * text = "MDC_TIME_SYNC_NTPV4: NTPV4 time synchronization"
* property[+]
  * type
    * coding = $ASN1ToHL7#532354.0
    * text = "regulation-status"
  * valueCode
    * coding = $v2-0136#Y
    * text = "Device is NOT regulated"


Instance: BPMonitor.C4F312FFFE53F2C9
InstanceOf: Device
Usage: #example
* meta.profile = $PhdDevice
* identifier[+]
  * system = $EUI64
  * type.coding = $ContinuaDeviceIdentifiers#SYSID "Ieee 11073 System Identifier"
  * value = "C4-F3-12-FF-FE-53-F2-C9"
* identifier[+]
  * system = $BD_ADDR
  * type.coding = $ContinuaDeviceIdentifiers#BTMAC "Bluetooth MAC address"
  * value = "C4-F3-12-53-F2-C9"
* manufacturer = "A&D Medical "
* modelNumber = "UA-651BLE "
* serialNumber = "5181000124"
* type
  * coding = $IEEEx73#65573 "MDC_MOC_VMS_MDS_SIMP"
  * text = "MDC_MOC_VMS_MDS_SIMP: Personal health device"
* specialization
  * systemType
    * coding = $IEEEx73#528391 "MDC_DEV_SPEC_PROFILE_BP"
    * text = "MDC_DEV_SPEC_PROFILE_BP: Blood Pressure meter"
  * version = "1"
* version[+]
  * type
    * coding = $IEEEx73#532352 "MDC_REG_CERT_DATA_CONTINUA_VERSION"
    * text = "MDC_REG_CERT_DATA_CONTINUA_VERSION: Continua version"
  * value = "4.1"
* version[+]
  * type[+].coding = $IEEEx73#531974 "MDC_ID_PROD_SPEC_HW"
  * type[=].text = "MDC_ID_PROD_SPEC_HW: Hardware version"
  * value = "0.00"
* version[+]
  * type
    * coding = $IEEEx73#531975 "MDC_ID_PROD_SPEC_SW"
    * text = "MDC_ID_PROD_SPEC_SW: Software version"
  * value = "0.00"
* version[+]
  * type
    * coding = $IEEEx73#531976 "MDC_ID_PROD_SPEC_FW"
    * text = "MDC_ID_PROD_SPEC_FW: Firmware version"
  * value = "BLP009_02_005 "
* property[+]
  * type
    * coding = $IEEEx73#532353 "MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST"
    * text = "MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST: Continua certified device list"
  * valueCode
    * coding = $ContinuaPHD#32775
    * text = "BluetoothLE: Blood pressure monitor"
* property[+]
  * type
    * coding = $IEEEx73#68220 "MDC_TIME_SYNC_PROTOCOL"
    * text = "MDC_TIME_SYNC_PROTOCOL: Time synchronization protocol"
  * valueCode
    * coding = $IEEEx73#532224 "MDC_TIME_SYNC_NONE"
    * text = "MDC_TIME_SYNC_NONE: No time synchronization"
* property[+]
  * type
    * coding = $ASN1ToHL7#532354.0
    * text = "regulation-status"
  * valueCode
    * coding = $v2-0136#N
    * text = "Device is regulated"
* property[+]
  * type
    * coding = $ASN1ToHL7#68219.0
    * text = "mds-time-capab-real-time-clock"
  * valueCode
    * coding = $v2-0136#Y
    * text = "Real time clock is supported"
* property[+]
  * type
    * coding = $ASN1ToHL7#68219.1
    * text = "mds-time-capab-set-clock"
  * valueCode
    * coding = $v2-0136#Y
    * text = "Setting the real time clock is supported"


Instance: BatteryLevel.0944
InstanceOf: DkCoreObservation
Usage: #inline
* meta.profile[+] = $PhdNumericObservation
* status = #final
* code
  * coding[+] = $IEEEx73#67996 "MDC_ATTR_VAL_BATT_CHARGE"
  * text = "MDC_ATTR_VAL_BATT_CHARGE: Battery level"
* subject = Reference(Poul)
* performer = Reference(Poul)
* effectiveDateTime = "2023-02-23T10:24:34.563+01:00"
* valueQuantity = 95 '%'
* device = Reference(BPMonitor.C4F312FFFE53F2C9)
* extension
  * url = $observation-gatewayDevice
  * valueReference = Reference(Telma.FEEDDADADEADBEEF)


Instance: CoincidentTimeStamp.0222
InstanceOf: DkCoreObservation
Usage: #example
* meta.profile[+] = $PhdCoincidentTimeStampObservation
* status = #final
* code
  * coding[+] = $IEEEx73#67975 "MDC_ATTR_TIME_ABS"
  * text = "MDC_ATTR_TIME_ABS: Uses Absolute time clock"
* subject = Reference(Poul)
* performer = Reference(Poul)
* effectiveDateTime = "2023-02-23T10:24:34.467+01:00"
* valueDateTime = "2023-02-23T10:24:25+01:00"
* device = Reference(BPMonitor.C4F312FFFE53F2C9)
* extension
  * url = $observation-gatewayDevice
  * valueReference = Reference(Telma.FEEDDADADEADBEEF)


Instance: BloodPressure.Poul.643992
InstanceOf: DkCoreObservation
Usage: #inline
* identifier.value = "C4F312FFFE53F2C9-3001749995-urn:oid:1.2.208.176.1.2-150020-118-266016-87-266016-99-266016-20230223T102408.00"
* meta.profile[+] = $PhdCompoundNumericObservation
* meta.profile[+] = $observation-vitalsigns
* meta.profile[+] = $observation-bp
* status = #final
* category.coding = $observation-category#vital-signs "Vital signs"
* code
  * coding[+] = $LOINC#85354-9 "Blood pressure panel with all children optional"
  * coding[+] = $IEEEx73#150020 "MDC_PRESS_BLD_NONINV"
  * coding[+] = $SKS#ZZ3170 "Hjemmeblodtryksmåling udført af patienten"
  * text = "MDC_PRESS_BLD_NONINV: Blood Pressure"
* subject = Reference(Poul)
* performer = Reference(Poul)
* effectiveDateTime = "2023-02-23T10:24:08+01:00"
* component[+]
  * code
    * coding[+] = $LOINC#8480-6 "Systolic blood pressure"
    * coding[+] = $IEEEx73#150021 "MDC_PRESS_BLD_NONINV_SYS"
    * coding[+] = $Medcom#MCS88019 "Arm—Blodtryk(systolisk) hjemme; tryk = ? mmHg"
    * text = "MDC_PRESS_BLD_NONINV_SYS: Systolic Blood Pressure"
  * valueQuantity = 118 'mm[Hg]' "mmHg"
* component[+]
  * code
    * coding[+] = $LOINC#8462-4 "Diastolic blood pressure"
    * coding[+] = $IEEEx73#150022 "MDC_PRESS_BLD_NONINV_DIA"
    * coding[+] = $Medcom#MCS88020 "Arm—Blodtryk(diastolisk) hjemme; tryk = ? mmHg"
    * text = "MDC_PRESS_BLD_NONINV_DIA: Diastolic Blood Pressure"
  * valueQuantity = 87 'mm[Hg]' "mmHg"
* component[+]
  * code
    * coding[+] = $IEEEx73#150023 "MDC_PRESS_BLD_NONINV_MEAN"
    * text = "MDC_PRESS_BLD_NONINV_MEAN: Mean Blood Pressure"
  * valueQuantity = 99 'mm[Hg]' "mmHg"
* device = Reference(BPMonitor.C4F312FFFE53F2C9)
* extension
  * url = $observation-gatewayDevice
  * valueReference = Reference(Telma.FEEDDADADEADBEEF)
* derivedFrom = Reference(CoincidentTimeStamp.0222)


Instance: HeartRate.Poul.1974654
InstanceOf: DkCoreObservation
Usage: #example
* identifier.value = "C4F312FFFE53F2C9-3001749995-urn:oid:1.2.208.176.1.2-149546-93-{beat}/min-20230223T102408.00"
* meta.profile[+] = $PhdNumericObservation
* meta.profile[+] = $observation-vitalsigns
* meta.profile[+] = $observation-heartrate
* status = #final
* category.coding = $observation-category#vital-signs "Vital signs"
* code
  * coding[+] = $LOINC#8867-4 "Heart rate"
  * coding[+] = $IEEEx73#149546 "MDC_PULS_RATE_NON_INV"
  * coding[+] = $NPU#NPU21692 "Heart—Systole; frequency = ? × 1/min"
  * text = "MDC_PULS_RATE_NON_INV: Heart rate"
* subject = Reference(Poul)
* performer = Reference(Poul)
* effectiveDateTime = "2023-02-23T10:24:08+01:00"
* valueQuantity = 93 '/min' "bpm"
* device = Reference(BPMonitor.C4F312FFFE53F2C9)
* extension
  * url = $observation-gatewayDevice
  * valueReference = Reference(Telma.FEEDDADADEADBEEF)
* derivedFrom = Reference(CoincidentTimeStamp.0222)


Instance: BloodPressureStatus.Poul.133527
InstanceOf: DkCoreObservation
Usage: #inline
* identifier.value = "C4F312FFFE53F2C9-3001749995-urn:oid:1.2.208.176.1.2-8410608-8192-20230223T102408.00"
* meta.profile[+] = $PhdBitsEnumerationObservation
* status = #final
* code
  * coding = $IEEEx73#8410608 "MDC_BLOOD_PRESSURE_MEASUREMENT_STATUS"
  * text = "MDC_BLOOD_PRESSURE_MEASUREMENT_STATUS: Blood Pressure measurement problem"
* subject = Reference(Poul)
* performer = Reference(Poul)
* effectiveDateTime = "2023-02-23T10:24:08+01:00"
* component
  * code
    * coding = $ASN1ToHL7#8410608.2
    * text = "irregular-pulse"
  * valueCodeableConcept
    * coding = $v2-0136#Y
    * text = "Irregular pulse was detected"
* device = Reference(BPMonitor.C4F312FFFE53F2C9)
* extension
  * url = $observation-gatewayDevice
  * valueReference = Reference(Telma.FEEDDADADEADBEEF)
* derivedFrom[+] = Reference(CoincidentTimeStamp.0222)
* derivedFrom[+] = Reference(BloodPressure.Poul.643992)


Instance: ContinuaBundleWithDevice
InstanceOf: Bundle
Title: "Poul's home blood pressure measurement"
Description: """
  This example demonstrates a DkCoreObservation _and_ Continua-compliant
  bundle containing a home blood pressure measurement uploaded to a Continua-compliant
  _"FHIR Observation Reporting Server"._
"""
Usage: #example
* type = #transaction
* entry[+]
  * fullUrl = "http://hl7.dk/fhir/core/Patient/Poul"
  * request
    * method = #POST
    * url = "Patient"
    * ifNoneExist = "identifier=urn:oid:1.2.208.176.1.2|3001749995"
  * resource = Poul
* entry[+]
  * fullUrl = "http://hl7.dk/fhir/core/Device/Telma.FEEDDADADEADBEEF"
  * request
    * method = #POST
    * url = "Device"
    * ifNoneExist = "identifier=urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680|FE-ED-DA-DA-DE-AD-BE-EF"
  * resource = Telma.FEEDDADADEADBEEF
* entry[+]
  * fullUrl = "http://hl7.dk/fhir/core/Device/BPMonitor.C4F312FFFE53F2C9"
  * request
    * method = #POST
    * url = "Device"
    * ifNoneExist = "identifier=urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680|C4-F3-12-FF-FE-53-F2-C9"
  * resource = BPMonitor.C4F312FFFE53F2C9
* entry[+]
  * fullUrl = "http://hl7.dk/fhir/core/Observation/BatteryLevel.0944"
  * request
    * method = #POST
    * url = "Observation"
  * resource = BatteryLevel.0944
* entry[+]
  * fullUrl = "http://hl7.dk/fhir/core/Observation/CoincidentTimeStamp.0222"
  * request
    * method = #POST
    * url = "Observation"
  * resource = CoincidentTimeStamp.0222
* entry[+]
  * fullUrl = "http://hl7.dk/fhir/core/Observation/BloodPressure.Poul.643992"
  * request
    * method = #POST
    * url = "Observation"
    * ifNoneExist = "identifier=C4F312FFFE53F2C9-3001749995-urn:oid:1.2.208.176.1.2-150020-118-266016-87-266016-99-266016-20230223T102408.00"
  * resource = BloodPressure.Poul.643992
* entry[+]
  * fullUrl = "http://hl7.dk/fhir/core/Observation/HeartRate.Poul.1974654"
  * request
    * method = #POST
    * url = "Observation"
    * ifNoneExist = "identifier=C4F312FFFE53F2C9-3001749995-urn:oid:1.2.208.176.1.2-149546-93-{beat}/min-20230223T102408.00"
  * resource = HeartRate.Poul.1974654
* entry[+]
  * fullUrl = "http://hl7.dk/fhir/core/Observation/BloodPressureStatus.Poul.133527"
  * request
    * method = #POST
    * url = "Observation"
    * ifNoneExist = "identifier=C4F312FFFE53F2C9-3001749995-urn:oid:1.2.208.176.1.2-8410608-8192-20230223T102408.00"
  * resource = BloodPressureStatus.Poul.133527


Instance: CenterForDiabetes
InstanceOf: NordicOrganization
Title: "Center for Diabetes"
Description: "Center for Diabetes"
Usage: #example
* identifier[0].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "633271000016006"
* identifier[+].system = "http://cvr.dk"
* identifier[=].value = "64942212"
* type = $sct#264361005

Instance: CenterForDiabetesTeamDiabetes
InstanceOf: NordicOrganization
Title: "Center for Diabetes Team Diabetes"
Description: "Center for Diabetes Team Diabetes"
Usage: #example
* identifier[0].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "1133181000016000"
* identifier[+].system = "http://cvr.dk"
* identifier[=].value = "64942212"
* type = $sct#264361005
* partOf.reference = "Organization/CenterForDiabetes"

Instance: CenterForDiabetesTeamHjerte
InstanceOf: NordicOrganization
Title: "Center for Diabetes Team Hjerte"
Description: "Center for Diabetes Team Hjerte"
Usage: #example
* identifier[0].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "1133191000016003"
* identifier[+].system = "http://cvr.dk"
* identifier[=].value = "64942212"
* type = $sct#264361005
* partOf.reference = "Organization/CenterForDiabetes"

Instance: CenterForDiabetesTeamKvalitet
InstanceOf: NordicOrganization
Title: "Center for Diabetes Team Kvalitet"
Description: "Center for Diabetes Team Kvalitet"
Usage: #example
* identifier[0].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "1133201000016001"
* identifier[+].system = "http://cvr.dk"
* identifier[=].value = "64942212"
* type = $sct#264361005
* partOf.reference = "Organization/CenterForDiabetes"

Instance: LaegerneHasserisBymidte
InstanceOf: NordicOrganization
Title: "LaegerneHasserisBymidte"
Description: "Praktisernede læge i Hasseris, som defineret af SOR"
Usage: #example
* identifier[0].value = "61741000016007"
* identifier[=].system = "urn:oid:1.2.208.176.1.1"
* identifier[+].system = "urn:oid:1.2.208.176.1.4"
* identifier[=].value = "77410"
* name = "Lægerne Hasseris Bymidte"
* telecom.value = "98182233"
* telecom.system = #phone
* type = $sct#394761003

Instance: b08997bb-4476-4dd0-84dd-2e297f809364
InstanceOf: NordicOrganization
Title: "MedCom Test Organization"
Description: "MedCom Test Organization with SOR id"
Usage: #example
* identifier[0].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "12345678901"
* identifier[+].system = "http://cvr.dk"
* identifier[=].value = "26919991"
* identifier[+].system = "https://www.gs1.org/gln"
* identifier[=].value = "5798002472264"
* identifier[+].system = "https://kombit.dk/sts/organisation"
* identifier[=].value = "urn:uuid:a107fd1e-9f35-422c-9d1e-add097bbf4a6"
* type = $sct#264372000

Instance: 154b8c96-a061-45bf-9ce4-1947c7c3c283
InstanceOf: NordicOrganization
Title: "Producer Test Organization"
Description: "Producer of Lab Results Test Organization"
Usage: #example
* identifier[0].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "12345678901"
* identifier[+].system = "http://medcomfhir.dk/ig/terminology/CodeSystem/MedComProducentID"
* identifier[=].value = "KAF"
* type = $sct#264361005

Invariant: dk-core-organization-mandatory-identifier
Description: "Minimum one identifier shall be of type SOR-ID, KOMBIT-ORG-ID or CVR-ID"
Severity: #error
Expression: "identifier.where(system='urn:oid:1.2.208.176.1.1' or system='https://kombit.dk/sts/organisation' or system='urn:oid:2.16.840.1.113883.2.24.1.1').exists()"


Instance: 283
InstanceOf: NordicPatient
Title: "Example of valid patient with full address"
Description: "Example of valid patient with full address"
Usage: #example
* identifier.use = #official
* identifier.system = "urn:oid:1.2.208.176.1.2"
* identifier.value = "0108589995"
* name.use = #official
* name.family = "Mosebryggersen"
* name.given[0] = "Schwendlund"
* name.given[1] = "Test"
* gender = #male
* birthDate = "1958-08-01"
* address.extension[0].url = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-municipalityCodes"
* address.extension[=].valueCodeableConcept = $dk-core-municipality-codes#0330
* address.extension[+].url = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-RegionalSubDivisionCodes"
* address.extension[=].valueCodeableConcept = $dk-core-regional-subdivision-codes#DK-85
* address.use = #home
* address.type = #postal
* address.line = "Nordre Ringgade 3"
* address.city = "Aarhus"
* address.postalCode = "8000"
* address.country = "DK"
* maritalStatus = $v3-MaritalStatus#U "unmarried"
* generalPractitioner.identifier.system = "urn:oid:1.2.208.176.1.1"
* generalPractitioner.identifier.value = "79641000016006"
* generalPractitioner.display = "Peter Sønderby"

Instance: Confidential
InstanceOf: NordicPatient
Title: "Example of a patient with confidential address and name"
Description: "Example of a patient with confidential address and name"
Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">This instance is an example of a Danish citizen who has requested name and address protection (Navne- og adressebeskyttelse), why the instance is marked with a security label. Only personnel using systems in public/official affairs are allowed to see name and address for the citizen, why these information are included in the profile.<p></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource \"Confidential\"</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dk-core-patient.html\">Danish Core Patient Profile</a></p><p style=\"margin-bottom: 0px\">Security Labels: <span title=\"{http://terminology.hl7.org/CodeSystem/v3-Confidentiality http://terminology.hl7.org/CodeSystem/v3-Confidentiality}\">http://terminology.hl7.org/CodeSystem/v3-Confidentiality</span></p></div><p><b>identifier</b>: id: 1502779995</p><p><b>name</b>: Hans Hansen (OFFICIAL)</p><p><b>gender</b>: male</p><p><b>birthDate</b>: 1976-08-09</p><p><b>address</b>: Julianevej 22 6000 Kolding (HOME)</p></div>"
* text.status = #additional
* meta.security.code = $v3-Confidentiality#R
* meta.security.display = "Restricted"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* identifier.value = "1502779995"
* name.use = #official
* name.family = "Berggren"
* name.given[0] = "Ruddi"
* name.given[1] = "Test"
* gender = #male
* birthDate = "1977-02-15"
* address.use = #home
* address.line = "Julianevej 22"
* address.city = "Kolding"
* address.postalCode = "6000"


Instance: else
InstanceOf: NordicPatient
Title: "Example of a woman of childbearing age"
Description: "Example of a woman of childbearing age. Else is a MedCom test-patient"
Usage: #example
* identifier.system = "urn:oid:1.2.208.176.1.2"
* identifier.value = "0201919990"
* name.use = #official
* name.family = "Lauridsen"
* name.given[0] = "Else"
* name.given[+] = "Test"
* gender = #female
* birthDate = "1991-02-02"
* maritalStatus = $v3-MaritalStatus#M "Married"

Instance: john
InstanceOf: NordicPatient
Title: "Example of valid patient with multiple names"
Description: "Example of valid patient with multiple names"
Usage: #example
* identifier.system = "urn:oid:1.2.208.176.1.2"
* identifier.value = "0201609995"
* name[0].use = #official
* name[=].family = "Meyerhofen"
* name[=].given[0] = "John"
* name[=].given[+] = "Christian"
* name[=].prefix = "Mr"
* name[+].use = #usual
* name[=].given = "Johnny"
* gender = #male
* birthDate = "1960-01-02"
* generalPractitioner.identifier.system = "urn:oid:1.2.208.176.1.1"
* generalPractitioner.identifier.value = "487341000016005"
* generalPractitioner.display = "Charlottenlund Lægehus"

Instance: Max
InstanceOf: NordicPatient
Title: "Example of valid patient with danish marital status"
Description: "Example of valid patient with danish marital status"
Usage: #example
* identifier.system = "urn:oid:1.2.208.176.1.2"
* identifier.value = "0107729995"
* name.use = #official
* name.family = "Berggren"
* name.given[0] = "Max"
* name.given[1] = "Test"
* name.prefix = "Mr"
* gender = #male
* birthDate = "1972-07-01"
* maritalStatus = $dk-marital-status#P

Instance: ukendt
InstanceOf: NordicPatient
Title: "Example of valid patient unknown identifier registry"
Description: "Example of valid patient unknown identifier registry. The patient is a 'John Doe' with an Identifier from an unofficial register"
Usage: #example
* identifier.system = "http://rn.dk"
* identifier.value = "0706830VJ9"
* name.use = #temp
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.family.extension.valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
* name.given = "Anders"
* gender = #male
* birthDate = "1983-06-07"


Instance: ukendt-D-eCPR
InstanceOf: NordicPatient
Title: "Example of valid patient with a D-eCPR as identifier"
Description: "Example of valid patient with a D-eCPR as identifier."
Usage: #example
* identifier.system = #urn:oid:1.2.208.176.1.6.1.3.177
* identifier.value = "1206550VK9"
* name.use = #temp
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.family.extension.valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
* name.given = "Peter"
* gender = #male

Instance: ukendt-X-eCPR
InstanceOf: NordicPatient
Title: "Example of valid patient with a X-eCPR as identifier"
Description: "Example of valid patient with a X-eCPR as identifier."
Usage: #example
* identifier.system = "urn:oid:1.2.208.176.1.6.1.1"
* identifier.value = "0703921VJ4"
* name.use = #temp
* name.family = "Madsen"
* gender = #female
* birthDate = "1992-03-07"

Invariant: marital-status-unknown-usage
Description: "Status in maritalStatus is unknown in a danish context. Consider mapping the value to UNK. See https://cpr.dk/borgere/hvad-staar-der-om-mig-i-cpr-registerindsigt/hvad-og-hvem-er-registreret-i-cpr-og-hvem-opdaterer-oplysninger-om-dig-i-cpr/"
Severity: #warning
Expression: "maritalStatus.coding.where(code = 'P' and system = 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus').empty() or maritalStatus.coding.where(code = 'A' and system = 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus').empty()"
* requirements = "Marital status is legally unknown in Denmark"


Instance: AbrahamLaege
InstanceOf: NordicPractitioner
Title: "AbrahamLæge"
Description: "Eksempel på lægen Abraham fra akutsygeplejen"
Usage: #example
* qualification.identifier.system = "https://autregweb.sst.dk"
* qualification.identifier.value = "005ML"
* qualification.code = $DkCoreProfessionGroupCodes#7170 "Læge"
* name.given = "Abraham"
* name.family = "Murakami"

Instance: SidselSygeplejerske
InstanceOf: NordicPractitioner
Title: "SidselSygeplejerske"
Description: "Eksempel på en sygeplejerske"
Usage: #example
* qualification.code = $DkCoreProfessionGroupCodes#5166 "Sygeplejerske"
* name.given = "Sidsel"
* name.family = "Andersen"

Instance: HanneSocialraadgiver
InstanceOf: NordicPractitioner
Title: "HanneSocialrådgiver"
Description: "Eksempel på socialrådgiveren Hanne"
Usage: #example
* name.given = "Hanne"
* name.family = "Mortensen"
* qualification.code.text = "Socialrådgiver"


Instance: Child
InstanceOf: DkCoreRelatedPerson
Title: "Example of child as related person"
Description: "Example of child as related person"
Usage: #example
* identifier.system = "urn:oid:1.2.208.176.1.2"
* identifier.value = "1502799995"
* name.use = #official
* name.family = "Mosebryggersen"
* name.given = "Odd Haugen Test"
* gender = #male
* birthDate = "1979-02-15"
* patient.reference = "Patient/283"
* relationship = $v3-RoleCode#CHILD

Instance: TwoRelations
InstanceOf: DkCoreRelatedPerson
Title: "Example of a related person with two relations"
Description: "Example of a person that has relations as both neighbor and primary caretaker"
Usage: #example
* identifier.system = "urn:oid:1.2.208.176.1.2"
* identifier.value = "0201919996"
* name.use = #official
* name.family = "Lauridsen"
* name.given = "Ellen Louise Test"
* gender = #female
* birthDate = "1991-01-02"
* patient.reference = "Patient/283"
* relationship[0] = $v3-RoleCode#NBOR
* relationship[1] = DkRelatedPersonRelationshipCodes#PRICARE

Instance: HenvisningFraLageTilSygehus
InstanceOf: ServiceRequest
Title: "Henvisning vedr. modermærkekræft"
Description: "Henvisning fra læge til sygehus vedr. mistanke om at John har modermærkekræft"
Usage: #example
* requester = Reference(Organization/LaegerneHasserisBymidte)
* reasonCode.text = "John henvises til onkologisk specialundersøgelse hurtigts muligt pga mistanke om modermærkekræft"
* reasonReference = Reference(Condition/JohnMelanoma)
* subject = Reference(Patient/john)
* authoredOn = "2021-05-01"
* status = #active
* intent = #proposal
* priority = #asap

