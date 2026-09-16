---
name: swagger-openapi
description: Design, maintain, and verify OpenAPI/Swagger documentation so it accurately describes implemented APIs and supports safe testing/integration.
---

# Swagger / OpenAPI

## Workflow
1. Inspect existing API routes, auth, validation, response resources, and current OpenAPI tooling.
2. Document servers/environments without embedding secrets.
3. Define security schemes accurately (Bearer, API key, OAuth, etc.).
4. Define request parameters/bodies, validation constraints, response schemas, examples, and error responses.
5. Reuse components/schemas rather than duplicating definitions.
6. Keep docs synchronized with actual implementation and versioning.
7. Verify documented requests against local/sandbox environments.
8. Ensure sensitive fields, internal stack traces, and real credentials never appear in examples.

Treat OpenAPI as a contract, not decorative documentation.
