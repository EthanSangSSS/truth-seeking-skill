---
name: truth-seeking
description: Evidence-constrained root-cause investigation. Use for 查真相, 真相挖掘, first-principles causal analysis, incentive/power maps, and falsifiable forecasts by building evidence-constrained causal models. Avoid for simple lookups, summaries, or regulated advice.
---

# Truth Seeking

## Overview

Use this skill to investigate disputed, complex, or ideology-loaded questions where a surface answer is likely to be shaped by media frames, official narratives, tribal identity, incentives, or incomplete data. The goal is not to claim omniscient "absolute truth"; produce the strongest current causal model (highest-confidence causal model), explicitly tied to evidence, assumptions, uncertainty, and falsification tests.

For deep or contentious investigations, read `references/truth-protocol.md` and comply with `references/source-policy.md` before synthesizing the answer.

## Operating Contract

- Follow the host agent's safety, privacy, and legal policies first. This skill improves epistemic rigor; it does not authorize illegal instructions, privacy invasion, harm, discrimination, or evasion of safeguards.
- Separate facts, interpretations, predictions, and value judgments.
- Prefer primary sources, original data, official documents, court records, filings, academic literature, and direct statements over commentary.
- Search live sources for current or unstable facts. Do not rely on memory for recent institutions, people, policy, prices, rankings, cases, or statistics.
- Use multiple angles, but do not perform fake balance. Weight views by evidence quality and mechanism strength.
- Treat "absolute objectivity" as an aspiration, not a claim. State confidence and what would change the conclusion.
- If evidence is thin, say so and return a research plan instead of filling gaps with speculation.
- For medical, legal, financial, safety-critical, employment, tax, or compliance topics, state jurisdiction/scope, cite current primary sources, and avoid presenting the output as professional advice.
- Do not infer conspiracy, motive, fraud, or illegality when ordinary incentives or public evidence explain the behavior.

## Research Plan Gate

Before embarking on deep research, establish a **Research Plan Gate** with the following fields:
- `question_type`: Factual / Causal / Strategic / Decision
- `decision_relevance`: Why does this investigation matter? What decision depends on it?
- `key_claims_to_verify`: Core claims to prove/disprove
- `primary_sources_needed`: Which Tier 1/2 sources are required
- `contrary_evidence_needed`: Evidence that would disprove the working hypothesis
- `freshness_requirement`: Required freshness of the evidence (e.g., date-restricted, live-search required)
- `stop_condition`: Specific trigger or depth to stop research and begin modeling

## Claim Ledger & Source Policy

All evidence gathered must follow the [Source Policy](references/source-policy.md) and be recorded in a **Claim Ledger**:
- **Source Tiers**: Tier 1 (Primary/Official), Tier 2 (Expert/Structured), Tier 3 (Speculative/Unstructured).
- **Core Rule**: Tier 3 sources are strictly prohibited from supporting any core or central conclusion.
- **Ledger Fields**:
  - `evidence_role`: Must be one of `directly_supports`, `partially_supports`, `context_only`, `contradicts`, or `weak_or_unverified`.
  - `access_date`: The retrieval date (YYYY-MM-DD) for verification.
  - `failure_mode`: Document potential bias, narrative capture, stale data, or conflicts of interest.

## Workflow

1. Reframe the question and initialize the **Research Plan Gate**.
   - Identify the user's real target: factual truth, causal truth, strategic forecast, or decision implication.
   - Write the strongest naive explanation, then mark why it may be insufficient.
   - Formulate and answer the Research Plan Gate fields before searching or retrieving evidence.

2. Gather evidence and fill the **Claim Ledger**.
   - Collect evidence according to Tier 1, 2, and 3 classifications.
   - Reject or flag Tier 3 evidence if it is being used to support core claims.
   - Fully populate `evidence_role`, `access_date`, and `failure_mode` for all claims.
   - For volatile or current facts, perform live search.

3. Build the first-principles model.
   - Define the system's production function: what inputs must compound into the observed outcome?
   - Identify hard constraints, bottlenecks, and multiplicative failure points.
   - Compare with counterexamples. If small countries, small firms, or weak actors succeed, population/scale/resource explanations are probably incomplete.

4. Map incentives and power.
   - Identify actors, their payoff functions, their constraints, and what they can hide.
   - Look for principal-agent problems, soft budget constraints, rent-seeking, regulatory capture, career incentives, and Goodhart effects.
   - Ask who benefits from the visible narrative and who benefits from the underlying arrangement.

5. Add psychology and social behavior only as mechanisms.
   - Use loss aversion, status incentives, conformity, learned helplessness, moral licensing, tribal identity, availability bias, and reputational risk when they explain observable behavior.
   - Do not blame "the people", "culture", or "human nature" unless the claim explains why the same people behave differently under different institutions.

6. Construct and harden the causal model.
   - Produce a causal chain or DAG.
   - Separate root causes, amplifiers, symptoms, and narrative distractions.
   - List rejected explanations and why they fail.
   - Add falsification tests: what future evidence would weaken or overturn the model?

7. Forecast from mechanisms.
   - Do not predict from vibes. Use base rates, incentives, capacity constraints, and leading indicators.
   - Give scenarios with signposts: what would confirm improvement, stagnation, or deterioration.

8. Add the honesty layer.
   - State the highest-confidence causal model in one paragraph.
   - State what is unknown, what evidence is missing, and which claim is most likely to be wrong.
   - Include falsification tests before strong predictions.

## Output Modes

Provide outputs in one of three designated modes based on user requirements:

### 1. Mini Mode
A concise, direct summary. Do not include detailed tables.
English:
1. Highest-confidence causal model
2. Why surface explanations are insufficient
3. Key evidence (Tier 1/2 only, with access dates)
4. Root mechanism
5. Future indicators

Chinese:
1. 最高置信因果模型
2. 为什么表层解释不够
3. 关键证据（仅限 Tier 1/2，附访问日期）
4. 底层机制
5. 未来观察指标

### 2. Standard Mode
Medium-length output containing essential structure:
- Executive Summary (Highest-confidence causal model, Key uncertainty, Leading indicator)
- Research Plan Gate summary
- Common Narratives and why they fail
- Claim Ledger table
- First-Principles Model & Incentive Map
- Forecast with leading indicators

### 3. Deep Mode
Comprehensive investigation following the full `templates/truth-seeking-report.md` template, detailing all lenses, hard causal graphs, and full falsification matrices.

## Boundary Conditions

| Situation | Handling |
|---|---|
| The user asks a simple factual lookup | Answer directly or use ordinary search; do not run the full protocol. |
| The topic depends on current facts | Verify with live, preferably primary, sources before concluding. |
| The topic is regulated or high-stakes | Add jurisdiction/scope, cite primary sources, avoid advice framing, and recommend qualified review when decisions depend on it. |
| Only rumors or anonymous claims exist | Mark as speculative, separate rumor map from factual model, and do not assert a root cause. |
| Evidence supports several explanations | Rank explanations by evidence and mechanism strength; do not force a single-cause story. |
| The user demands "absolute truth" | Explain that the output is the strongest current model (highest-confidence causal model), not omniscience. |
| The model implies wrongdoing | Distinguish proven facts, reasonable inference, and unverified allegation. |
| The forecast is uncertain | Provide scenarios, leading indicators, and falsification tests instead of a single confident date. |

## Common Failure Modes

- Media capture: repeating dominant coverage instead of tracing primary incentives and constraints.
- Moralization: blaming individuals or the public without showing the institution that selects for the behavior.
- Population fallacy: treating total population or total market size as effective participation.
- Conspiracy overreach: inferring secret coordination where ordinary incentives explain the same facts.
- Symmetry theater: giving equal weight to weak claims for the appearance of neutrality.
- Quote laundering: using citations to decorate claims that the sources do not actually support.
- Forecast without mechanism: predicting a direction without identifying leading indicators.
- Private-context leakage: referencing local-only skills, paths, memories, or internal tools in reusable outputs.
- Over-claiming objectivity: using "truth" language to hide uncertainty or value judgments.

## Integration Notes

- Use a source-gathering or web-access workflow first when the main challenge is finding reliable sources.
- Use an archival or citation workflow after this skill when the output must become a durable research asset.
- Use this skill when the main challenge is epistemic quality: evidence-constrained causal modeling, narrative resistance, causal rigor, and prediction.
