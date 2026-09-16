# API Integration Workflow

1. Read the provider's current API documentation and the local integration architecture.
2. Identify authentication method, base URLs, environments, scopes, rate limits, pagination, webhooks, retries, and error semantics.
3. Define the local abstraction and data contract before wiring UI/business logic directly to the provider.
4. Keep credentials server-side and in environment/secret management.
5. Implement validation, authorization, timeouts, controlled retries, logging, and safe error mapping.
6. Make side-effecting operations idempotent where the domain requires it.
7. Verify webhook authenticity and replay protection when applicable.
8. Add integration tests using documented sandbox/mock mechanisms; never hardcode real production secrets.
9. Add OpenAPI/Swagger docs for local endpoints when the project uses them.
10. Document required environment variables, setup, failure handling, and operational troubleshooting.
11. Review security and data exposure before release.
