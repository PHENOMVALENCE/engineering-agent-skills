#!/usr/bin/env python3
"""Validate local Agent Skill metadata using only the Python standard library."""

from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
SKILLS = ROOT / "skills"
NAME_RE = re.compile(r"^[a-z0-9]+(?:-[a-z0-9]+)*$")


def parse_frontmatter(text: str) -> dict[str, str]:
    if not text.startswith("---\n"):
        raise ValueError("missing opening YAML frontmatter delimiter")
    end = text.find("\n---\n", 4)
    if end == -1:
        raise ValueError("missing closing YAML frontmatter delimiter")

    data: dict[str, str] = {}
    for raw in text[4:end].splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        if ":" not in line:
            continue
        key, value = line.split(":", 1)
        data[key.strip()] = value.strip().strip('"').strip("'")
    return data


def main() -> int:
    errors: list[str] = []
    names: set[str] = set()
    files = sorted(SKILLS.glob("*/SKILL.md"))

    if not files:
        errors.append("No skills/*/SKILL.md files found")

    for path in files:
        rel = path.relative_to(ROOT)
        try:
            metadata = parse_frontmatter(path.read_text(encoding="utf-8"))
        except Exception as exc:  # noqa: BLE001 - validation tool should aggregate errors
            errors.append(f"{rel}: {exc}")
            continue

        name = metadata.get("name", "")
        description = metadata.get("description", "")

        if not name:
            errors.append(f"{rel}: missing `name`")
        elif not NAME_RE.fullmatch(name):
            errors.append(f"{rel}: invalid kebab-case name `{name}`")
        elif name != path.parent.name:
            errors.append(
                f"{rel}: name `{name}` must match folder `{path.parent.name}`"
            )

        if name in names:
            errors.append(f"{rel}: duplicate skill name `{name}`")
        names.add(name)

        if not description:
            errors.append(f"{rel}: missing `description`")
        elif len(description) < 20:
            errors.append(f"{rel}: description is too short")

    if errors:
        print("Skill validation failed:")
        for error in errors:
            print(f"- {error}")
        return 1

    print(f"Validated {len(files)} skills successfully.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
