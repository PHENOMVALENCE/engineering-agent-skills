---
name: authentication
description: Implement or review authentication and authorization flows, sessions/tokens, password/reset flows, role access, and secure identity integration.
---

# Authentication and Authorization

## Workflow
1. Identify actors, identity provider, session/token model, trust boundaries, and protected resources.
2. Use mature framework/provider primitives instead of inventing cryptography or password storage.
3. Keep credentials/tokens out of URLs, logs, client bundles, and source control.
4. Enforce authorization server-side for every privileged action/object.
5. Review login, logout, refresh/session expiry, password/reset/recovery, email/phone verification, and account-disable behavior relevant to the product.
6. Protect against enumeration, brute force, replay, CSRF/session fixation, insecure redirects, and token leakage as applicable.
7. Use secure cookie attributes and appropriate token expiry/rotation.
8. Test anonymous, normal-user, privileged-user, expired-session, revoked/disabled-user, and cross-tenant access cases.

Authentication proves identity; authorization decides permitted actions. Do not treat them as interchangeable.
