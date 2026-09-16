---
name: code-review
description: Review a change set for correctness, maintainability, regressions, security, tests, architecture consistency, and unnecessary complexity before merge.
---

# Code Review

## Workflow
1. Read the task/specification and acceptance criteria first.
2. Review the complete diff, not isolated snippets.
3. Check correctness and edge cases.
4. Check validation, authorization, state transitions, concurrency, and failure handling.
5. Check architecture fit, naming, duplication, dead code, and unnecessary abstractions.
6. Check tests for meaningful coverage rather than superficial line coverage.
7. Check migrations, public API changes, configuration, and deployment impact.
8. Check UI changes for accessibility/responsiveness when relevant.
9. Separate blocking issues from optional improvements.
10. Re-review after fixes and confirm the final diff is focused.

Prefer concrete findings with file/behavior evidence. Do not create noise with stylistic preferences already handled by formatters or established project conventions.
