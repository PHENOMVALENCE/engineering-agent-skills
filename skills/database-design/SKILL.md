---
name: database-design
description: Design or review relational database schemas, migrations, indexes, constraints, transactions, and query patterns.
---

# Database Design

## Workflow
1. Start from domain entities, invariants, access patterns, and data ownership.
2. Reuse existing naming and migration conventions.
3. Model relationships explicitly with appropriate foreign keys and delete/update behavior.
4. Encode important invariants with database constraints where practical.
5. Choose indexes from real query patterns, not guesswork.
6. Review uniqueness, nullability, precision, time zones, and lifecycle/soft-delete semantics.
7. Keep migrations reversible when feasible and safe for existing production data.
8. Use transactions for multi-step state changes that must remain atomic.
9. Check N+1 behavior, query count, locking/concurrency, and large-table migration risk.
10. Test migrations and key queries.

Never destructively alter production data without an explicit migration and rollback strategy.
