---
name: testing
description: Design and run focused tests that prove changed behavior and protect important regressions across unit, integration, API, and browser layers.
---

# Testing

## Strategy
Test behavior at the lowest useful layer while preserving enough integration coverage to catch contract failures.

## Workflow
1. Identify acceptance criteria and failure modes.
2. Inspect existing test conventions and utilities.
3. Add focused tests for changed behavior before or alongside implementation when practical.
4. Cover happy path, validation, permissions, edge cases, and meaningful failures.
5. Avoid brittle tests tied to irrelevant implementation details.
6. Use integration/API tests for boundaries and browser tests for critical user journeys.
7. Run focused tests during implementation, then the broader relevant suite before completion.
8. If a test is flaky, diagnose the cause instead of adding blind retries.

## Minimum verification
Depending on the stack, run configured unit/feature tests, linting, type checks/static analysis, and a production build. For UI changes, verify meaningful breakpoints and interaction states.

Never delete or weaken a valid test merely to make a change pass.
