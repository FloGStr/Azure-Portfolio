# Lab 02b – Manage Governance via Azure Policy

## Goal
Improve governance and reporting by enforcing resource tagging standards, remediating non-compliant resources, and protecting critical scopes from accidental changes.

## What I did
- **Task 1:** Created and assigned resource **tags** (key/value) for governance and reporting (e.g., Cost Center).
- **Task 2:** Enforced tagging requirements using **Azure Policy** (require a tag and value for new resources).
- **Task 3:** Applied tagging via Azure Policy using **remediation tasks** (bring existing resources into compliance, e.g., inherit tag from resource group when missing).
- **Task 4:** Configured and tested **resource locks** (CanNotDelete/ReadOnly) to prevent accidental deletions or modifications.

## Key concepts practiced
- Tags as metadata for ownership/cost reporting
- Azure Policy effects (deny / modify / deployIfNotExists concepts)
- Compliance evaluation and remediation tasks
- Resource locks overriding permissions to protect scopes

## Outcome
Established enforceable governance guardrails (tags + policy) with remediation for existing resources and locks for protection against accidental changes.
