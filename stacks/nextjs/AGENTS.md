# Next.js Stack Instructions

Apply root `AGENTS.md` plus these Next.js-specific rules.

## Inspect first
Read `package.json`, lockfile, Next/React/TypeScript versions, router structure, styling system, auth, data fetching/API layer, environment config, tests, and deployment target.

## Conventions
- Follow the repository's App Router/Pages Router architecture.
- In App Router projects, prefer Server Components by default and add client boundaries only where required.
- Keep secrets and privileged operations on the server.
- Validate external input and enforce authorization server-side.
- Use typed boundaries and avoid unnecessary `any`.
- Handle loading, empty, error, and not-found states.
- Preserve metadata/SEO for public pages.
- Keep client bundles small and avoid duplicated data fetching.
- Build accessible, responsive interfaces with visible focus and semantic controls.

## Verification
Run configured lint, typecheck, tests, and production build. Smoke-test affected routes and interactions at meaningful viewport sizes.
