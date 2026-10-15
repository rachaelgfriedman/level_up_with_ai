# Prompt: Building the participant solution

Use this prompt to build the Wizard Alembic slice.

```text
Implement the approved participant source-to-mart slice under `models/wizard/`. Append `__wizard` to every participant model name and use suffixed refs so the participant DAG can coexist with the canonical reference implementation.

Follow the active layer guidance in dependency order, implement exactly the approved participant scope, and run Wizard-scoped validation and warehouse checks. Do not use facilitator references, retired answer-key models, or canonical Alembic implementation SQL as implementation input. If evidence contradicts the approved design, stop with the exact blocker and required decision.
```
