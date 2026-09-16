---
name: api-design
description: Design and implement stable HTTP/API contracts, integrations, validation, errors, authentication, authorization, and documentation.
---

# API Design

## Workflow
1. Identify consumers, use cases, trust boundaries, and existing API conventions.
2. Define resources/actions, methods, paths, request/response schemas, status codes, pagination/filtering, and error format.
3. Validate all external input at the boundary.
4. Enforce authentication and authorization server-side.
5. Separate transport concerns from domain/business logic.
6. Make retries and side effects safe where appropriate; consider idempotency for payments/webhooks/commands.
7. Add rate limiting and abuse controls when relevant.
8. Document the contract with OpenAPI/Swagger when the project uses it.
9. Test success, validation, permission, not-found, conflict, and failure paths.

## Compatibility
Avoid silent breaking changes. Version or coordinate migrations for changed public contracts. Never expose internal errors, secrets, or sensitive fields unnecessarily.
