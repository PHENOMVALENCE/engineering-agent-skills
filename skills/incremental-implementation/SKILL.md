---
name: incremental-implementation
description: Implement planned work in small, coherent, reversible steps with frequent verification and meaningful commits.
---

# Incremental Implementation

## Workflow
1. Confirm the working branch is not the protected/default branch for significant changes.
2. Implement one coherent unit of the plan.
3. Keep the diff focused; avoid unrelated refactors.
4. Run the narrowest useful verification immediately.
5. Fix failures before stacking more changes.
6. Commit meaningful milestones with conventional, descriptive messages.
7. Continue until acceptance criteria are satisfied.
8. Run broader verification and review the complete diff.

## Rules
- Preserve public contracts unless change is intentional and documented.
- Prefer adapting existing abstractions over creating parallel ones.
- Do not suppress failing tests or disable safety checks to make progress.
- Avoid giant end-of-task commits.
- Stop and re-plan if new evidence materially changes the design.
