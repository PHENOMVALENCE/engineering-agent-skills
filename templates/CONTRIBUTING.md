# Contributing

## Development flow
1. Read `AGENTS.md` and project documentation.
2. Create or use the designated non-default development branch.
3. Keep changes focused and incremental.
4. Add/update tests for changed behavior.
5. Run relevant quality checks.
6. Use clear conventional commit messages.
7. Open a pull request with verification details.

## Commit examples
- `feat(api): add customer lookup`
- `fix(auth): reject expired reset token`
- `refactor(ui): extract product card`
- `test(payments): cover webhook replay`
- `docs(setup): document local mail config`

## Quality expectations
Do not commit secrets, generated junk, debug output, or unrelated formatting changes. Follow existing architecture and style. Explain intentional breaking changes and migrations explicitly.

## AI-assisted contributions
AI tools may assist implementation, but repository authorship remains with the human contributor unless the repository owner explicitly chooses otherwise. Do not automatically add AI co-author trailers.
