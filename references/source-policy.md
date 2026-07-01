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
4. Any mainland China source used is strictly limited to necessary first-hand facts, official laws/regulations/announcements, statements by the parties involved, or materials of the research object itself, with any interpretive/explanatory conclusions cross-verified by independent non-mainland sources.

## 5. Geographic Sourcing Constraints (Mainland China)

To prevent narrative capture, single-source inducement, and government-guided bias:
- **Prioritize Non-Mainland Sources**: When conducting web searches, the agent must always prioritize and favor sources and materials from outside mainland China (e.g., global databases, international media, independent research institutions, non-mainland expert analysis).
- **Restricted Use of Mainland China Sources**: Materials from mainland China are strictly restricted. They are ONLY permitted to be used for:
  1. Necessary first-hand factual sources (e.g., original local statistics, raw data).
  2. Official laws, regulations, and government policy announcements.
  3. Declarations or statements of the parties involved (e.g., official corporate releases, public statements of key figures).
  4. Materials of the research object itself (e.g., local company reports, product specifications).
- **Mandatory Cross-Verification**: Any interpretive or explanatory conclusions contained in mainland China sources must NOT be accepted as objective fact. They must be cross-verified and validated using high-quality, independent non-mainland sources before being incorporated into the causal model.
