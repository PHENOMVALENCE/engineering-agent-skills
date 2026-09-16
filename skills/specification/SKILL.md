---
name: specification
description: Turn a feature, bug, integration, or refactor request into explicit requirements and acceptance criteria before implementation.
---

# Specification

## Workflow
1. State the problem and desired user/system outcome.
2. Separate functional requirements from non-functional constraints.
3. Define in-scope and out-of-scope behavior.
4. Identify actors, permissions, data, integrations, and failure modes.
5. Define measurable acceptance criteria.
6. Note compatibility, migration, security, performance, and observability requirements.
7. Record assumptions and unresolved questions.

## Acceptance criteria style
Use observable statements such as:
- Given X, when Y happens, Z is returned/displayed.
- Unauthorized users receive the expected denial.
- Existing behavior A remains unchanged.
- Failure B produces a controlled error and no partial side effect.

Do not begin implementation until the task is specific enough to verify objectively.
