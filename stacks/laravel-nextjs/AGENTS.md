# Laravel + Next.js Stack Instructions

Apply root `AGENTS.md` plus Laravel and Next.js principles.

## Architecture boundary
Treat Laravel as the authoritative backend/domain/API unless the project explicitly defines otherwise. Treat Next.js as the web frontend/BFF only to the extent established by the repository.

## Contract discipline
- Define API request/response contracts explicitly.
- Keep validation and authorization authoritative on Laravel even when the UI validates too.
- Keep TypeScript types aligned with API contracts; generate from OpenAPI when the project supports it.
- Map backend errors into deliberate frontend states instead of exposing raw internals.
- Keep auth/session/token handling consistent with the chosen architecture (for example Sanctum/cookie or bearer token flows).
- Configure CORS/CSRF carefully; do not broaden origins for convenience.

## Implementation order
For cross-stack features, generally implement/verify schema and backend contract first, then frontend integration, then end-to-end verification.

## Verification
Run Laravel tests/static checks plus Next.js lint/typecheck/tests/build. Smoke-test the full user journey across the API boundary.
