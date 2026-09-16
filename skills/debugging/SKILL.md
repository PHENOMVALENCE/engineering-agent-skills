---
name: debugging
description: Diagnose defects systematically by reproducing the issue, isolating the failing layer, testing hypotheses, fixing root cause, and adding regression protection.
---

# Debugging

## Workflow
1. Reproduce the failure with the smallest reliable case.
2. Capture exact symptoms: inputs, outputs, logs, status codes, stack traces, environment, timing, and recent changes.
3. Identify the failing layer: UI, client state, network, API, auth, domain logic, database, queue, external service, infrastructure.
4. Form a specific hypothesis and gather evidence before editing.
5. Compare against nearby working paths and historical behavior where useful.
6. Fix the root cause with the smallest coherent change.
7. Add a regression test when practical.
8. Re-run the original reproduction plus adjacent relevant tests.
9. Remove temporary instrumentation and review the final diff.

## Rules
- Do not shotgun-edit multiple unrelated areas.
- Do not swallow errors unless the product intentionally handles them.
- Do not treat symptoms with arbitrary delays/retries without understanding the cause.
- Record unresolved environmental or upstream causes explicitly.
