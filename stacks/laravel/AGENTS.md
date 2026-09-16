# Laravel Stack Instructions

Apply root `AGENTS.md` plus these Laravel-specific rules.

## Inspect first
Read `composer.json`, Laravel/PHP versions, routes, middleware, service providers, auth configuration, models, migrations, requests, policies, resources, jobs/events, tests, and deployment config.

## Conventions
- Prefer framework conventions and existing repository patterns.
- Use server-side validation for external input.
- Enforce authorization with policies/gates/middleware as appropriate.
- Keep controllers focused; move substantial business behavior into the project's established domain/service/action layer.
- Use Eloquent relationships intentionally and prevent N+1 queries.
- Use transactions for atomic multi-write business operations.
- Keep migrations safe for existing data and index real query patterns.
- Keep API Resources/OpenAPI docs aligned with actual behavior.

## Verification
Use the project's configured commands. Common checks may include PHPUnit/Pest, Pint, PHPStan/Larastan, route inspection, migration status, and targeted API/browser smoke tests.

Never commit `.env` or real secrets.
