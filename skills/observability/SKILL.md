---
name: observability
description: Add or improve structured logging, metrics, tracing, health checks, error reporting, and operational diagnostics without leaking sensitive data.
---

# Observability

## Workflow
1. Define the operational question: what failure or behavior must become visible?
2. Use structured logs with request/job correlation where the stack supports it.
3. Record useful context, not secrets, tokens, passwords, sensitive payloads, or unnecessary personal data.
4. Add metrics for rates, errors, latency, saturation, queues, and critical business events where useful.
5. Add traces around distributed/external calls when supported.
6. Provide health/readiness checks appropriate to infrastructure.
7. Make alerts actionable with a clear threshold and owner/runbook.
8. Verify instrumentation under success and failure conditions.

Observability should help answer what happened, where, for whom/which request safely, and what action an operator should take next.
