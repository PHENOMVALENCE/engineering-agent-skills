---
name: browser-testing
description: Verify critical web user journeys and UI behavior in a real browser across interactions, network behavior, responsive layouts, and accessibility-relevant states.
---

# Browser Testing

## Workflow
1. Identify the critical user journey and required preconditions/test data.
2. Test the route from the user's perspective rather than calling internal functions directly.
3. Verify navigation, forms, validation, loading, success, error, and empty states.
4. Inspect console errors and failed/duplicate network requests.
5. Verify authentication/authorization behavior for relevant roles.
6. Test meaningful viewport sizes and touch interactions for responsive UI.
7. For automated E2E tests, use stable accessible selectors/roles where possible rather than fragile CSS structure.
8. Capture screenshots/traces/logs for failures when tooling supports it.
9. Keep tests isolated and clean up created data when necessary.

Prioritize a small number of high-value end-to-end flows rather than duplicating every unit-level assertion in the browser.
