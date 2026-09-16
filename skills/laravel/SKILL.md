---
name: laravel
description: Build and maintain Laravel applications using framework conventions, explicit validation/authorization, service boundaries, migrations, tests, queues, and API resources.
---

# Laravel Engineering

## Workflow
1. Inspect Laravel/PHP versions, `composer.json`, routes, middleware, service providers, models, policies, requests, resources, jobs, events, and tests.
2. Follow the project's existing architecture before introducing new layers.
3. Use Form Requests or equivalent boundary validation for non-trivial input.
4. Enforce permissions through policies/gates/middleware rather than UI-only checks.
5. Keep controllers thin when domain logic becomes substantial; place business behavior in appropriately scoped services/actions/models according to project conventions.
6. Use Eloquent relationships intentionally and prevent N+1 queries with eager loading where needed.
7. Use API Resources for stable JSON representation when the project uses APIs.
8. Put schema changes in migrations; review indexes, constraints, nullability, and rollback behavior.
9. Use transactions around multi-write invariants.
10. Use jobs/queues for slow or retryable background work when appropriate.
11. Add feature/unit tests for changed behavior.
12. Run formatting/static analysis/test commands already configured by the repository.

## Security
Respect CSRF protection, mass-assignment rules, authorization, rate limits, file-upload validation, secret handling, signed URLs, and safe serialization.

## APIs
When OpenAPI/Swagger is present, keep documentation synchronized with actual routes, validation, auth, and response schemas.
