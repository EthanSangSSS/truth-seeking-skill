# Source Policy & Credibility Guide

This policy establishes strict standards for source evaluation, evidence role assignment, and validation requirements for all evidence-constrained causal models.

## 1. Source Hierarchy (Tiers)

- **Tier 1 (Primary/Official)**: Primary records, court filings, audited financial statements, direct statistics from official agencies, statutes, regulations, peer-reviewed academic literature with named authors and open datasets.
- **Tier 2 (Expert/Structured)**: Expert analysis, specialist industry reports, reputable investigative journalism with named sources, industry databases, and credible books.
- **Tier 3 (Speculative/Unstructured)**: Social media posts, forum discussions, anonymous claims, rumors, partisan commentary, single anecdotes, and self-published opinions.
  - **CRITICAL RULE**: Tier 3 evidence is strictly prohibited from supporting any core or central conclusion of a causal model. Tier 3 may only be used for narrative maps, early signaling, or hypothesis generation, and must be explicitly labeled as speculative or excluded entirely from the final Claim Ledger.

## 2. Evidence Roles (`evidence_role`)

Every source listed in the Claim Ledger must be explicitly classified under one of the following roles:
- `directly_supports`: The source provides direct, verifiable evidence for the specific causal claim.
- `partially_supports`: The source supports elements of the claim, but requires inference or additional data to connect fully.
- `context_only`: The source provides background context, historical framing, or base rates, but does not prove the specific claim.
- `contradicts`: The source provides evidence that directly opposes the claim (essential for adversarial testing).
- `weak_or_unverified`: The source is speculative, uncorroborated, or lacks sufficient credibility (typical for Tier 3).

## 3. Metadata Requirements

To prevent quote laundering and stale analysis, all claims in the Claim Ledger must include:
- **Access Date (`access_date`)**: The exact date the information was retrieved or verified (format: YYYY-MM-DD). Crucial for live/unstable facts.
- **Failure Mode (`failure_mode`)**: A brief description of how or why the source could fail or be misleading (e.g., selection bias, conflict of interest, narrative capture, stale facts, regulatory capture).

## 4. Verification Gate

Before completing an investigation, the agent must check if:
1. Every core claim has at least one Tier 1 source or two independent Tier 2 sources.
2. Any core claim relying solely on Tier 3 evidence is demoted or flagged.
3. Every entry in the ledger has an assigned `evidence_role`, `access_date`, and `failure_mode`.
