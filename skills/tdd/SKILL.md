---
name: tdd
description: Use test-driven development for behavior that can be specified with stable automated tests: red, green, refactor, then broader verification.
---

# Test-Driven Development

## Cycle
1. Translate one acceptance criterion into a focused test.
2. Run it and confirm it fails for the expected reason (red).
3. Implement the smallest correct production change (green).
4. Run the test and adjacent suite.
5. Refactor code/tests without changing behavior.
6. Repeat for the next behavior.

## Rules
- Test observable behavior, not private implementation details.
- Keep tests deterministic and isolated from uncontrolled external services.
- Use integration tests when behavior crosses meaningful boundaries.
- Do not write a fake passing test that cannot fail for the intended regression.
- Do not blindly force TDD for pure visual exploration or infrastructure steps where another verification method is more appropriate.
