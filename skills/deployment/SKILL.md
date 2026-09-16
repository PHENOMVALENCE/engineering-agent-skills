---
name: deployment
description: Prepare, execute, and verify safe deployments with preflight checks, migrations, configuration validation, rollback awareness, and production smoke tests.
---

# Deployment

## Preflight
1. Confirm the intended environment and deployment target.
2. Ensure tests/build/CI are green.
3. Review environment-variable and secret requirements without exposing values.
4. Review migrations, queues, caches, storage, cron, DNS, and external integration changes.
5. Define rollback/recovery steps for meaningful risk.

## Deploy
Follow the project's established deployment mechanism. Avoid manual production changes that cannot be reproduced from source/configuration.

## Verify
After deployment, verify:
- application health;
- primary user journeys;
- authentication/permissions;
- changed API endpoints;
- database migrations;
- jobs/queues where relevant;
- external integrations;
- logs/error rates.

If production verification fails, stop further rollout and use the documented rollback/fix strategy. Never expose credentials in deployment logs or documentation.
