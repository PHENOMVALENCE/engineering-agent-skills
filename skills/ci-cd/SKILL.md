---
name: ci-cd
description: Design or maintain CI/CD pipelines that provide reliable quality gates, reproducible builds, secure secret handling, and controlled deployments.
---

# CI/CD

## CI
- Trigger appropriate checks for PRs and protected branches.
- Pin/runtime-version dependencies deliberately and cache safely.
- Run formatting/lint, static/type checks, tests, and build steps appropriate to the stack.
- Keep jobs deterministic and fail clearly.
- Do not print secrets or use production credentials in untrusted PR contexts.
- Use least-privilege workflow permissions.

## CD
- Separate environments and environment-specific secrets/config.
- Make migrations and deployment ordering explicit.
- Prefer reproducible pipelines over manual server edits.
- Use approvals/protection for high-risk production actions where available.
- Verify health after deployment and retain a recovery strategy.

When modifying CI, test the workflow syntax and understand the event/permission model before enabling write-capable automation.
