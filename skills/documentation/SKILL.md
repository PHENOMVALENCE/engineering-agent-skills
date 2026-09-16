---
name: documentation
description: Create and maintain concise project, architecture, API, setup, operational, and decision documentation alongside code changes.
---

# Documentation

## Update documentation when changes affect
- setup or environment variables;
- architecture or major dependencies;
- public APIs or integrations;
- database schema/migrations;
- deployment/operations;
- user-visible workflows;
- non-obvious technical decisions.

## Preferred documents
- `README.md`: entry point and setup.
- `PROJECT.md`: product/domain context and boundaries.
- `ARCHITECTURE.md`: components, data flow, important decisions.
- `SECURITY.md`: security expectations/reporting where relevant.
- ADRs: durable decisions with alternatives and consequences.
- OpenAPI: executable API contract when used.

## Rules
Keep docs close to reality, link to source instead of duplicating volatile implementation detail, include exact commands where helpful, and remove outdated instructions when replacing behavior.
