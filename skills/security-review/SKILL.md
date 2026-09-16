---
name: security-review
description: Review changed or existing code for authentication, authorization, input handling, injection, XSS, CSRF, SSRF, secret exposure, file upload, dependency, and business-logic risks.
---

# Security Review

## Workflow
1. Identify assets, trust boundaries, actors, and privileged operations.
2. Review authentication and session/token handling.
3. Verify authorization at every sensitive server-side action and object boundary.
4. Trace untrusted input into SQL, shell, templates, URLs, file paths, uploads, deserialization, and external requests.
5. Check output encoding, CSRF controls, CORS assumptions, rate limiting, and abuse cases.
6. Check secret handling, logs, error responses, configuration, and client bundles.
7. Review dependency additions and dangerous permissions.
8. Review payments/webhooks/idempotency/replay protections when relevant.
9. Prioritize findings by impact, exploitability, and evidence.
10. Fix verified issues and add regression coverage where practical.

## Rules
- Do not report speculative vulnerabilities as confirmed facts.
- Do not weaken validation, TLS, auth, or permission controls to simplify development.
- Never commit real secrets or customer data into tests/fixtures.
