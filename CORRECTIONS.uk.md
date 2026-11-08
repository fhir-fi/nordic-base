# CORRECTIONS.md — nordic-base

Project: fhir-fi/nordic-base
Base branch analyzed: master (commit 7f1eb70)
Destination fork: https://github.com/admeduardovieira/nordic-base

## Corrections proposed

| ID | Title | Severity | Status | Risk | Files involved |
|----|-------|----------|--------|------|----------------|
| REA-nordic-001 | No automated tests for FSH/StructureDefinitions | P3 | PROPOSING | Medium | `test/` (new) |
| REA-nordic-002 | `jurisdiction` commented out in sushi-config.yaml | P3 | PROPOSING | Low | `sushi-config.yaml` |
| REA-nordic-003 | No CI workflow configured | P3 | PROPOSING | Low | `.github/workflows/` (new) |
| REA-nordic-004 | Only 3 FSH profiles defined | P3 | PROPOSING | Medium | `input/fsh/*.fsh` |

## Details of proposed corrections

### REA-nordic-001 — No automated tests
**Problem:** No tests validate FSH profiles.
**Fix:** Add FSH validation tests.
**Validation:** Run tests; confirm profiles compile.

### REA-nordic-002 — jurisdiction commented out
**Problem:** `jurisdiction` is commented in sushi-config.yaml.
**Fix:** Uncomment and set appropriate Nordic jurisdiction or remove comment.
**Validation:** Confirm sushi-config.yaml parses correctly.

### REA-nordic-003 — No CI workflow
**Problem:** No `.github/workflows` directory.
**Fix:** Add build.yml and pr-verification.yml workflows.
**Validation:** Confirm workflows trigger on push/PR.

### REA-nordic-004 — Only 3 FSH profiles
**Problem:** Limited profile coverage for a Nordic harmonization IG.
**Fix:** Add more base profiles (e.g., Observation, Medication, Encounter).
**Validation:** Confirm new FSH files compile with SUSHI.

## Not implemented
None implemented in this execution; proposals for maintainers.

## Publication plan
- Fork: `admeduardovieira/nordic-base` (created).
- No code changes (only audit reports).
- Commit identity: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PRs to `fhir-fi/nordic-base` branch `master`.

Переклад технічний, виконаний автоматизовано; рекомендується перегляд носієм мови перед використанням якнормативного посилання.
