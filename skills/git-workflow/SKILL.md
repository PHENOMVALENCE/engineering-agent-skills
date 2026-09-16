---
name: git-workflow
description: Manage branches, commits, pull requests, and release-safe Git history for agent-assisted engineering work.
---

# Git Workflow

## Branching
For significant work, do not edit directly on the default branch. Follow repository conventions; otherwise use `masterchanges` or a descriptive `feature/`, `fix/`, `refactor/`, or `chore/` branch.

## Commits
Commit coherent milestones with descriptive conventional messages, for example:
- `feat(customers): add lookup endpoint`
- `fix(ui): prevent mobile filter overflow`
- `test(payments): cover duplicate webhook`

Keep unrelated changes separate. Do not create AI co-author attribution unless explicitly requested.

## Before push
- inspect `git status`;
- review the diff;
- ensure secrets/build artifacts/debug files are absent;
- run relevant checks.

## Pull request
Include problem, solution, key decisions, verification, screenshots for UI changes, migrations/config changes, risks, and rollback notes where relevant.

Never force-push shared branches or merge automatically unless explicitly authorized.
