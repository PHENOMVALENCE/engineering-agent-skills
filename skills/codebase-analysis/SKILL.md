---
name: codebase-analysis
description: Inspect and map an existing repository before making significant changes. Use when onboarding to a project, planning a feature, debugging unfamiliar code, or determining architecture.
---

# Codebase Analysis

## Goal
Build an evidence-based mental model of the repository before editing.

## Workflow
1. Read `AGENTS.md`, `README.md`, project docs, and package manifests.
2. Identify framework versions, runtime, package manager, database, auth, queues, storage, external APIs, CI, and deployment model.
3. Map the relevant request path from entry point to persistence/external side effects.
4. Find similar existing implementations and reuse project conventions.
5. Inspect relevant tests and fixtures.
6. Identify risk areas: migrations, auth, permissions, external integrations, shared components, public contracts.
7. Summarize findings before proposing changes.

## Output
Provide a concise architecture map, relevant files, dependencies, data flow, constraints, and unknowns.

## Rules
- Do not infer what can be verified from code.
- Do not start large edits while core behavior is still unclear.
- Prefer repository conventions over generic patterns unless the existing design is demonstrably unsafe or unsuitable.
