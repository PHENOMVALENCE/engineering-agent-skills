---
name: nextjs
description: Build and maintain modern Next.js applications with TypeScript, App Router conventions, clear server/client boundaries, accessible UI, and production performance.
---

# Next.js Engineering

## Workflow
1. Inspect Next.js/React/TypeScript versions, package manager, App/Pages Router, styling system, data layer, auth, deployment target, and tests.
2. Prefer Server Components by default in App Router projects; use Client Components only where browser state/effects/interactivity require them.
3. Keep data fetching close to the server boundary when practical and avoid unnecessary client waterfalls.
4. Use route handlers/server actions according to the project's established architecture.
5. Validate external input and enforce authorization on the server.
6. Keep components focused; extract reusable primitives only when there is genuine reuse.
7. Use typed API/domain boundaries and avoid `any` unless justified.
8. Handle loading, empty, error, and not-found states explicitly.
9. Optimize images, fonts, bundle size, caching, and rendering based on measured needs.
10. Verify accessibility and responsive behavior.
11. Run configured lint, typecheck, tests, and production build.

## Rules
- Do not move secrets into client bundles.
- Do not mark large trees `use client` merely for convenience.
- Preserve SEO/metadata behavior for public pages.
- Avoid duplicated fetching and hydration-heavy patterns when server rendering is sufficient.
