# REVERSE_ENGINEERING_REPORT — nordic-base

## A. Diagnóstico geral

### Arquitetura identificada
Implementation Guide (IG) FHIR baseada em SUSHI para harmonização de perfis base FHIR nórdicos (Dinamarca, Finlândia, Noruega, Suécia). Estrutura minimal:

- `sushi-config.yaml`: configuração do SUSHI (id, canonical, name, version, fhirVersion, dependências fixadas, menu)
- `input/fsh/organization.fsh`, `patient.fsh`, `practitioner.fsh`: 3 perfis FHIR em FSH
- `input/fsh/examples/denmark.fsh`, `finland.fsh`, `norway.fsh`, `sweden.fsh`: exemplos por país
- `input/pagecontent/index.md`: página inicial do IG
- `ig.ini`: configuração do IG publisher (template `fhir.base.template#current`)
- Nenhum Dockerfile, nenhum workflow CI, nenhum Docker compose

### Tecnologias e dependências
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4 (fhirVersion: 4.0.1)
- Dependências fixadas (não `latest`):
  - `hl7.fhir.dk.core: 3.2.0`
  - `hl7.fhir.fi.base: 1.0.0`
  - `hl7.fhir.no.basis: 2.2.0`
  - `hl7se.fhir.base: 1.0.0`
- IPA e IPS comentadas (não usadas)
- Não há testes automatizados

### Estado de manutenção
Último commit: `7f1eb70 Update build scripts`. Branch default upstream: `master`. Repositório: `https://github.com/fhir-fi/nordic-base`. Histórico com merges de `hl7-eu/coalesced`.

### Mecanismos de testes existentes
Nenhum teste automatizado encontrado. Não há pasta `test/`, nenhum script de validação de FSH.

### Limitações da investigação
- SUSHI não instalado; build do IG não executado.
- REA 6.7.0 não operacional neste ambiente; análise estática apenas.

## B. Problemas encontrados

| ID | Título | Severidade | Status | Localização |
|----|--------|------------|--------|-------------|
| REA-nordic-001 | Sem testes automatizados para FSH/StructureDefinitions | P3 | CONFIRMADO | raiz do repo |
| REA-nordic-002 | `jurisdiction` comentado no sushi-config.yaml | P3 | CONFIRMADO | `sushi-config.yaml:17` |
| REA-nordic-003 | Nenhum workflow CI configurado | P3 | CONFIRMADO | ausência de `.github/workflows` |
| REA-nordic-003 | Apenas 3 perfis FSH (organização, paciente, profissional) | P3 | CONFIRMADO | `input/fsh/*.fsh` |

### Detalhes dos problemas confirmados

**REA-nordic-001 (P3, CONFIRMADO)**: Não há testes automatizados para validar os 3 perfis FHIR nem as StructureDefinitions geradas.

**REA-nordic-002 (P3, CONFIRMADO)**: `sushi-config.yaml:17` tem `jurisdiction` comentado:
`# jurisdiction: urn:iso:std:iso:3166#US "United States of America"`
O IG não declara jurisdição, o que é relevante para um IG nórdico multi-país.

**REA-nordic-003 (P3, CONFIRMADO)**: Não há pasta `.github/workflows` — nenhum CI configurado para build ou verificação de PR.

**REA-nordic-004 (P3, CONFIRMADO)**: Apenas 3 perfis FSH existem (organization, patient, practitioner), com exemplos por país. O escopo é muito limitado para um IG de harmonização nórdica.

## C. Problemas recorrentes
Nenhum issue recorrente público encontrado.

## D. Erros não documentados
Todos os itens da seção B são problemas não documentados anteriormente.

## E. Performance
Build estático de IG via SUSHI. Sem operações sensíveis a performance.

## F. Melhorias técnicas
- Adicionar testes FSH (REA-nordic-001)
- Descomentar/preencher `jurisdiction` adequado (REA-nordic-002)
- Adicionar workflow CI (REA-nordic-003)
- Expandir número de perfis FSH (REA-nordic-004)
- `releaseLabel` usado corretamente (sem problema)

## G. Plano de execução
Todas independentes e baixo risco.

## H. Resultado esperado
IG mais completo, testável, com CI e jurisdição declarada.

**Ferramentas usadas:** git, gh, PowerShell/terminal, inspeção estática.  
**Limitação:** SUSHI não instalado.  
**Ambiente:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\nordic-base` (clone do upstream, branch `master`, commit `7f1eb70`).
