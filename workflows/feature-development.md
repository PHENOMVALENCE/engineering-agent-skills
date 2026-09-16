# Feature Development Workflow

1. Analyze the relevant codebase and find similar existing features.
2. Write explicit requirements and acceptance criteria.
3. Plan data, API, backend, UI, permissions, tests, and docs.
4. Create/switch to a non-default working branch.
5. Implement the smallest end-to-end slice first where practical.
6. Continue in coherent increments with focused verification and commits.
7. Test happy path, validation, permissions, edge cases, and meaningful failures.
8. Perform security and code review.
9. Update documentation and examples.
10. Review the complete diff and open a PR.
11. Run CI/review fixes before merge.
12. Deploy and smoke-test if deployment is part of the task.

Avoid unrelated cleanup and speculative abstraction while delivering the feature.
