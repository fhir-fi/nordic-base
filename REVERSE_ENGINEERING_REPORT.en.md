# REVERSE_ENGINEERING_REPORT — nordic-base

## A. General diagnosis

### Architecture identified
FHIR Implementation Guide (IG) based on SUSHI for harmonization of Nordic base FHIR profiles (Denmark, Finland, Norway, Sweden). Minimal structure:

- `sushi-config.yaml`: SUSHI configuration (id, canonical, name, version, fhirVersion, pinned dependencies, menu)
- `input/fsh/organization.fsh`, `patient.fsh`, `practitioner.fsh`: 3 FHIR profiles in FSH
- `input/fsh/examples/denmark.fsh`, `finland.fsh`, `norway.fsh`, `sweden.fsh`: per-country examples
- `input/pagecontent/index.md`: IG home page
- `ig.ini`: IG publisher configuration (template `fhir.base.template#current`)
- No Dockerfile, no CI workflow, no docker compose

### Technologies and dependencies
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4 (fhirVersion: 4.0.1)
- Dependencies pinned (not `latest`):
  - `hl7.fhir.dk.core: 3.2.0`
  - `hl7.fhir.fi.base: 1.0.0`
  - `hl7.fhir.no.basis: 2.2.0`
  - `hl7se.fhir.base: 1.0.0`
- IPA and IPS commented out (not used)
- No automated tests

### Maintenance state
Last commit: `7f1eb70 Update build scripts`. Upstream default branch: `master`. Repository: `https://github.com/fhir-fi/nordic-base`. History with merges from `hl7-eu/coalesced`.

### Existing testing mechanisms
No automated tests found. No `test/` folder, no FSH validation script.

### Investigation limitations
- SUSHI not installed; IG build not executed.
- REA 6.7.0 not operational in this environment; static analysis only.

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-nordic-001 | No automated tests for FSH/StructureDefinitions | P3 | CONFIRMED | repo root |
| REA-nordic-002 | `jurisdiction` commented out in sushi-config.yaml | P3 | CONFIRMED | `sushi-config.yaml:17` |
| REA-nordic-003 | No CI workflow configured | P3 | CONFIRMED | missing `.github/workflows` |
| REA-nordic-004 | Only 3 FSH profiles (organization, patient, practitioner) | P3 | CONFIRMED | `input/fsh/*.fsh` |

### Details of confirmed problems

**REA-nordic-001 (P3, CONFIRMED)**: No automated tests validate the 3 FHIR profiles nor generated StructureDefinitions.

**REA-nordic-002 (P3, CONFIRMED)**: `sushi-config.yaml:17` has `jurisdiction` commented out:
`# jurisdiction: urn:iso:std:iso:3166#US "United States of America"`
The IG does not declare a jurisdiction, relevant for a multi-country Nordic IG.

**REA-nordic-003 (P3, CONFIRMED)**: No `.github/workflows` directory — no CI configured for build or PR verification.

**REA-nordic-004 (P3, CONFIRMED)**: Only 3 FSH profiles exist, with per-country examples. Scope is limited for a Nordic harmonization IG.

## C. Recurring problems
No recurring public issues found.

## D. Undocumented errors
All items in section B are problems not previously documented.

## E. Performance
Static IG build via SUSHI. No performance-sensitive operations.

## F. Technical improvements
- Add FSH tests (REA-nordic-001)
- Uncomment/set appropriate `jurisdiction` (REA-nordic-002)
- Add CI workflow (REA-nordic-003)
- Expand number of FSH profiles (REA-nordic-004)
- `releaseLabel` used correctly (no problem)

## G. Execution plan
All independent and low risk.

## H. Expected outcome
More complete, testable IG with CI and declared jurisdiction.

**Tools used:** git, gh, PowerShell/terminal, static code inspection.  
**Limitation:** SUSHI not installed.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\nordic-base` (clone of upstream, branch `master`, commit `7f1eb70`).
