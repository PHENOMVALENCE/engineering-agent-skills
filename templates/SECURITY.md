# Security

## Supported versions
Document which deployed/supported versions receive security fixes.

## Reporting vulnerabilities
Report suspected vulnerabilities privately to the repository owner/maintainer rather than opening a public issue containing exploit details or secrets.

Include:
- affected component/version;
- reproduction conditions;
- impact;
- relevant logs/screenshots with sensitive data removed;
- suggested mitigation if known.

## Engineering expectations
- Never commit secrets or production customer data.
- Validate untrusted input.
- Enforce authorization server-side.
- Keep dependencies and runtimes maintained.
- Use least-privilege credentials.
- Protect sensitive logs and error output.
- Review uploads, webhooks, external requests, and privileged admin flows carefully.

## Secret exposure
If a secret is accidentally committed, treat it as compromised: revoke/rotate it and remove it from active configuration. Merely deleting it from the latest commit is not sufficient remediation.
