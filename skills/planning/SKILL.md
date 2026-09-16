---
name: planning
description: Break approved requirements into a safe, incremental implementation plan with verification checkpoints.
---

# Planning

## Workflow
1. Start from verified codebase facts and acceptance criteria.
2. List affected files/modules and contracts.
3. Order work by dependency: schema/contracts first, implementation next, UI/integration after, verification last.
4. Split work into small coherent tasks that can be tested independently.
5. For each task, state what changes and how it will be verified.
6. Identify migrations, rollout concerns, destructive operations, external dependencies, and rollback needs.
7. Keep unrelated cleanup out of the plan unless required.

## Good plan characteristics
- Small enough to review.
- Explicit about tests.
- Explicit about risky steps.
- Preserves working behavior.
- Avoids speculative rewrites.

Update the plan when repository evidence invalidates an assumption.
