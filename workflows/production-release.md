# Production Release Workflow

## Pre-release
- Confirm intended version/change set and target environment.
- Ensure required tests, lint/type/static checks, build, and CI are green.
- Review migrations, environment variables, secrets, queues, scheduled jobs, caches, storage, DNS, and third-party configuration.
- Confirm backward compatibility for rolling/multi-instance deployments where relevant.
- Define rollback or forward-fix strategy for meaningful risk.

## Release
Use the established deployment pipeline. Avoid untracked manual production edits.

## Post-release verification
- application health;
- authentication and permissions;
- changed user journeys;
- changed API endpoints;
- database migration state;
- queue/job processing;
- external integrations;
- error logs and operational signals.

If critical verification fails, stop rollout/escalation and execute the documented recovery strategy.
