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

Linux/macOS:

```bash
./scripts/install-project.sh laravel-nextjs /path/to/project
```

Windows PowerShell:

```powershell
.\scripts\install-project.ps1 -Stack laravel-nextjs -ProjectPath C:\path\to\project
```

Supported stack presets:

- `laravel`
- `nextjs`
- `laravel-nextjs`
- `nextjs-supabase`

The project installer copies reusable skills and Cursor rules, generates stack-aware agent instructions, and adds project/architecture/security/PR templates without overwriting existing project documentation. If `AGENTS.md` already exists, it creates `AGENTS.toolkit.md` for manual merging instead.

## Included skills

### Engineering process
- `codebase-analysis`
- `specification`
- `planning`
- `incremental-implementation`
- `testing`
- `tdd`
- `browser-testing`
- `debugging`
- `code-review`
- `git-workflow`
- `documentation`

### Architecture and implementation
- `frontend-design`
- `api-design`
- `swagger-openapi`
- `database-design`
- `authentication`
- `laravel`
- `nextjs`

### Production quality
- `security-review`
- `performance`
- `ci-cd`
- `observability`
- `deployment`

## Workflows

- Full development cycle
- Feature development
- Bug fixing
- UI redesign
- API integration
- Production release

## Upstream skills

This repository contains original PHENOMVALENCE workflow instructions and also tracks external agent-skill collections from Anthropic, Vercel Labs, Supabase, Laravel, and GitHub. External skills should be reviewed before installation. See `sources/UPSTREAM.md` and `skills-sources.yml`.

## Engineering principle

> Agents should not jump from prompt directly to code. They should first understand the repository and expected behavior, then make small, testable changes with clear verification.
