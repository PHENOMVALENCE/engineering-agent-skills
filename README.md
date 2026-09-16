# Engineering Agent Skills

Reusable software-engineering workflows, skills, stack presets, project templates, and Cursor rules maintained for PHENOMVALENCE projects.

The goal of this repository is to make AI coding agents behave like disciplined software engineers: understand the codebase, specify the work, plan, implement incrementally, test, review, document, open a PR, deploy safely, and verify production.

## Core workflow

```text
UNDERSTAND
   ↓
SPECIFY
   ↓
PLAN
   ↓
BRANCH
   ↓
IMPLEMENT INCREMENTALLY
   ↓
TEST
   ↓
SECURITY REVIEW
   ↓
CODE REVIEW
   ↓
PERFORMANCE / QUALITY CHECK
   ↓
DOCUMENT
   ↓
OPEN PR
   ↓
CI
   ↓
REVIEW
   ↓
MERGE
   ↓
DEPLOY
   ↓
VERIFY PRODUCTION
```

## Repository layout

```text
engineering-agent-skills/
├── AGENTS.md
├── .cursor/rules/
├── skills/
├── workflows/
├── stacks/
├── templates/
├── scripts/
└── sources/
```

## How to use

### Clone the toolkit

```bash
git clone https://github.com/PHENOMVALENCE/engineering-agent-skills.git
cd engineering-agent-skills
```

### Install skills globally for Cursor

Linux/macOS:

```bash
./scripts/install.sh
```

Windows PowerShell:

```powershell
.\scripts\install.ps1
```

### Bootstrap a project

Copy the relevant stack preset and skills into your project. See `scripts/install-project.sh` or `scripts/install-project.ps1`.

Example:

```bash
./scripts/install-project.sh laravel-nextjs /path/to/project
```

Then your project can contain:

```text
AGENTS.md
.cursor/
  rules/
  skills/
```

## Included capabilities

- Codebase analysis
- Specification and acceptance criteria
- Planning and task decomposition
- Incremental implementation
- Frontend/UI engineering
- API design and integration
- Database design
- Laravel engineering
- Next.js engineering
- Testing and TDD
- Debugging
- Security review
- Code review
- Git and PR workflow
- Documentation
- Deployment and production verification

## Stack presets

- Laravel
- Next.js
- Laravel + Next.js
- Next.js + Supabase

## Upstream skills

This repository contains original PHENOMVALENCE workflow instructions and can also reference external agent-skill collections. External skills should be reviewed before installation. See `sources/UPSTREAM.md`.

## Engineering principle

> Agents should not jump from prompt directly to code. They should first understand the repository and expected behavior, then make small, testable changes with clear verification.
