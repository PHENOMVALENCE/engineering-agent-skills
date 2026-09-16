# Full Software Development Cycle

Use this workflow for substantial features, refactors, integrations, and production-impacting changes.

## 1. Understand
Use `codebase-analysis`.

Inspect architecture, conventions, dependencies, data flow, tests, and deployment context. Identify affected modules and risks.

## 2. Specify
Use `specification`.

Define the problem, requirements, boundaries, acceptance criteria, failure behavior, permissions, compatibility, and non-functional constraints.

## 3. Plan
Use `planning`.

Break work into small, ordered, independently verifiable tasks. Identify migrations, contracts, UI, tests, documentation, rollout, and rollback needs.

## 4. Branch
Use `git-workflow`.

Work on a non-default branch. Use the project's convention or `masterchanges` when that is the established working branch.

## 5. Implement incrementally
Use `incremental-implementation` plus relevant stack skills.

Make focused changes, verify each meaningful milestone, and create small descriptive commits.

## 6. Test
Use `testing`.

Run focused tests during development and broad relevant checks before completion. Verify negative paths and permissions, not only the happy path.

## 7. Security review
Use `security-review`.

Review trust boundaries, authentication, authorization, untrusted input, secrets, abuse, uploads, external calls, and business-logic risk.

## 8. Code review
Use `code-review`.

Review the full diff for correctness, regressions, architecture fit, complexity, test quality, and deployment impact.

## 9. Document
Use `documentation`.

Update setup, project, architecture, API, migration, or operational docs affected by the change.

## 10. Pull request
Use `git-workflow`.

Push the branch and open a PR with summary, verification, screenshots when relevant, migrations/config changes, risks, and rollback information.

## 11. CI and review
Do not merge with known failing required checks. Resolve meaningful review feedback and re-run affected verification.

## 12. Deploy
Use `deployment`.

Deploy through the project's standard mechanism, then verify production health and changed user journeys.

## Completion gate
The work is done only when acceptance criteria are met, relevant checks pass, the final diff is reviewed, documentation is current, and production verification is complete when deployment was part of the task.
