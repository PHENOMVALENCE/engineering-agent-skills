# Next.js + Supabase Stack Instructions

Apply root `AGENTS.md` and Next.js principles plus these Supabase rules.

## Data and auth
- Keep service-role credentials server-only.
- Use the appropriate browser/server Supabase clients for the project's auth model.
- Treat Row Level Security as a primary authorization boundary; do not rely on hidden UI controls.
- Review RLS policies for select/insert/update/delete behavior and multi-tenant isolation.
- Prefer explicit migrations for schema, functions, triggers, indexes, and policy changes.
- Validate input at application boundaries even when database constraints exist.

## Performance
Review indexes for actual filters/joins, avoid unnecessary round trips, select only required fields where meaningful, and understand realtime/subscription lifecycle before adding it.

## Verification
Test authenticated/anonymous roles, cross-user access denial, database constraints, server/client session behavior, and production Next.js build.
