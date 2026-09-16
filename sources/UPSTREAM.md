# Upstream Agent-Skill Sources

This toolkit contains original PHENOMVALENCE engineering instructions. It also tracks external collections worth evaluating for optional installation.

Verified public repositories as of 2026-09-16:

## Anthropic
Repository: `https://github.com/anthropics/skills`

Public Agent Skills collection. Review individual skill instructions, dependencies, scripts, and license/usage terms before copying or installing.

## Vercel Labs
Repository: `https://github.com/vercel-labs/agent-skills`

Official Vercel collection of agent skills, useful for React/Next.js/frontend engineering and web-interface guidance.

## Supabase
Repository: `https://github.com/supabase/agent-skills`

Supabase agent skills for database/platform development. Especially relevant to Supabase/Postgres projects.

## Laravel
Repository: `https://github.com/laravel/agent-skills`

Laravel's official agent-skill collection. Prefer current upstream Laravel guidance for framework-specific capabilities that may evolve faster than this toolkit.

## GitHub
Repository: `https://github.com/github/awesome-copilot`

Community-contributed instructions, agents, skills, and configurations maintained under GitHub's repository. Useful for discovering security, review, testing, and GitHub-oriented workflows.

## Adoption policy
Do not blindly vendor third-party skills.

Before adoption:
1. Read the complete `SKILL.md` and any referenced files/scripts.
2. Check what shell commands, network access, credentials, or destructive operations it can trigger.
3. Check the source repository and license.
4. Prefer official/vendor-maintained skills for framework-specific behavior.
5. Keep PHENOMVALENCE workflow rules (`AGENTS.md`, branching, authorship, security, verification) authoritative unless intentionally superseded.
6. Record the upstream repository and version/commit when vendoring content.

The purpose of this file is discovery and provenance, not automatic trust.
