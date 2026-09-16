---
name: performance
description: Diagnose and improve application performance using measurement, profiling, query analysis, bundle/runtime inspection, and regression verification.
---

# Performance Optimization

## Workflow
1. Define the slow behavior and a measurable baseline.
2. Profile before optimizing: request timing, database queries, CPU/memory, client bundle/rendering, network waterfalls, cache behavior, or external-service latency.
3. Identify the dominant bottleneck rather than applying generic micro-optimizations.
4. Make the smallest high-impact change.
5. Re-measure under comparable conditions.
6. Check correctness, resource tradeoffs, cache invalidation, concurrency, and operational impact.
7. Add regression budgets/tests/monitoring where appropriate.

## Common areas
- N+1 queries and missing indexes;
- duplicated/serial network calls;
- oversized client bundles/images;
- unnecessary renders/hydration;
- expensive loops/serialization;
- missing pagination/batching;
- unsafe/unbounded caching;
- slow external calls without timeouts.

Never trade away correctness, authorization, or data freshness without an explicit product decision.
