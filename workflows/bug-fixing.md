# Bug Fixing Workflow

1. Reproduce the bug reliably before editing.
2. Record exact inputs, outputs, logs/errors, environment, and expected behavior.
3. Trace the failing path and isolate the responsible layer.
4. Form and test a root-cause hypothesis.
5. Add a failing regression test first when practical.
6. Implement the smallest coherent root-cause fix.
7. Re-run the reproduction, regression test, and adjacent relevant tests.
8. Review security/permission implications if the fix touches trust boundaries.
9. Review the final diff for accidental behavior changes and temporary debug code.
10. Commit with a clear `fix(...)` message and open a PR when appropriate.

Do not hide exceptions, disable tests, or add arbitrary retries/timeouts as substitutes for diagnosis.
