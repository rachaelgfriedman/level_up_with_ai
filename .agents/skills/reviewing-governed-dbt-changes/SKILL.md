# Review governed dbt changes

Use this skill when a material dbt change needs evidence-backed review before merge or
deployment. It supplements, and never replaces, contracts, tests, lint, CI, code
owners, or human approval.

## Trigger and goal

Compare a proposed diff with approved intent and independent evidence. Classify every
finding and make the review outcome explicit without silently redesigning the change.

## Non-goals

- Do not approve plausible code because it compiles or looks conventional.
- Do not amend approved design during review.
- Do not create a second plan, checklist, or validation artifact.
- Do not replace independent controls or accountable approval.

## Required context and evidence

Inspect the request, diff, target/base state, approved spec and verification, policy,
routing, applicable skills, lineage, inputs, grains, keys, materializations, contracts,
tests, semantic definitions, build/lint results, warehouse checks, and known consumers.
Facilitator-only material is not review authority.

## Output invariants

A review must compare exact inventory, lineage, ordered outputs, properties, tests,
contracts, decisions, and acceptance evidence; inspect actual data behavior; classify
findings as **must fix before merge**, **needs human decision**, or **suggestion**; cite
evidence, impact, owner/action, and revalidation; and block approval on missing, failed,
stale, or unrelated evidence.

## Workflow

1. Establish scope, materiality, consumers, and approved authority.
2. Compare model inventory, paths, dependencies, grains, outputs, transformations,
   properties, tests, contracts, semantic scope, and deviations with the diff.
3. Verify staging preserves one-source grain and the mart is the approved direct
   projection with no hidden join, filter, or grain change.
4. Check exact contract types/order, key and relationship tests, normalized quality
   values, nullable-duration behavior, descriptions, and consumer compatibility.
5. Verify scoped build, contracts/tests, lint, warehouse checks, and verification.
6. Choose **approve**, **approve with follow-up**, **request changes**, or
   **blocked pending decision** using the review rubric.
7. Reinspect and narrowly revalidate resolved blocking findings.

## Prompt-back conditions

Stop for unsupported grain, source authority, retention, mapping, null treatment, time
semantics, public contract, semantic interface, consumer migration, performance, access,
or production action. State evidence, options, recommendation, owner, and question.

## Validation and completion evidence

Review is complete only when the diff, approved artifact, code/YAML, lineage,
interfaces, consumers, and required execution evidence were inspected; every finding
is classified; blocking issues are resolved or explicitly block approval; and the PR
record captures assistance, evidence, residual risk, and required approvals.

## Behavioral acceptance

**Scenario:** An approved two-model spec defines exact staging cleanup, a ten-column
fact, seven tests, no semantic change, and passed verification. The diff coalesces null
brew durations to zero and adds an eleventh convenience column.

Expected behavior: classify both as must-fix design/interface violations, reject the
change even if tests pass, route desired behavior back to planning, and approve only
after the exact interface and null policy are restored and affected evidence reruns.

## Ownership and maintenance

Analytics engineering owns review; data-product and metric owners retain authority over
meaning, interfaces, semantics, and material risk. Review after missed defects or
changed CI/platform behavior.
