# Truth-Seeking Protocol

Use this reference for deep investigations where the user rejects surface explanations and wants a first-principles, multi-disciplinary, prediction-oriented answer.

## Core Promise

Truth-seeking does not mean claiming final truth. It means producing the strongest evidence-constrained causal model available now, plus the uncertainty, missing evidence, and observations that could overturn it.

## Truth Types

| Type | Question | Output |
|---|---|---|
| Factual truth | What happened? | Timeline, facts, source tiers |
| Causal truth | Why did it happen? | Mechanism, bottleneck, causal graph |
| Strategic truth | What will happen next? | Scenarios, leading indicators |
| Decision truth | What should the user do? | Options, tradeoffs, triggers |

Do not mix these types. A true fact can support a false causal story; a good causal model can still produce uncertain forecasts.

## Fast Classification

Before doing a full investigation, classify the request:

| User need | Use full protocol? | Response mode |
|---|---:|---|
| One factual answer | No | Direct answer with source if needed |
| Current legal/tax/medical/financial fact | Partial | Primary-source verification + scope warning |
| "Why is this really happening?" | Yes | Causal model |
| "What will happen next?" | Yes | Mechanism-based forecast |
| "What should I do?" | Yes | Decision implications with assumptions |
| "Is this rumor true?" | Partial | Rumor/fact separation |

## Research Plan Gate

Before starting deep research, formulate a Research Plan Gate using the following fields:
- `question_type`: Factual / Causal / Strategic / Decision
- `decision_relevance`: Why does this matter? What decision is riding on this?
- `key_claims_to_verify`: Core claims that must be proved/disproved to evaluate the model
- `primary_sources_needed`: Which Tier 1 / official sources are required
- `contrary_evidence_needed`: What evidence would disprove the main hypothesis
- `freshness_requirement`: Required freshness of the evidence (e.g., date-restricted, live-search required)
- `stop_condition`: When to stop researching (e.g., finding the primary filing, resolving the bottleneck, running out of search depth)

## Lens Checklist

Use only lenses that improve explanatory power.

1. First principles: what is the outcome's production function?
2. Incentives: who is rewarded, punished, protected, or made disposable?
3. Institutions: what rules exist, who enforces them, and where is discretion hidden?
4. Power: who can block change, allocate resources, grant access, or bury evidence?
5. Money: where are revenue, debt, subsidies, rents, and externalized costs?
6. Selection effects: who enters, exits, survives, and gets counted?
7. Psychology: what fears, status pressures, biases, or identity costs shape behavior?
8. Information: who knows what, who can verify what, and where are feedback loops broken?
9. Time horizon: which actors optimize for weeks, quarters, election cycles, career cycles, or decades?
10. Comparative cases: where did a similar system succeed or fail, and which variable differs?
11. Historical path dependence: what earlier decisions locked in today's constraints?
12. Narrative incentives: why is the popular explanation emotionally or politically convenient?

## Causal Hardening Questions

- If this explanation is true, what else should be observable?
- If this explanation is false, what evidence would likely exist?
- What does the explanation fail to explain?
- What counterexample is most damaging?
- Does the model explain why this problem happens in this domain but not adjacent domains?
- Does it explain why small or weak actors can outperform large or rich actors?
- Does it distinguish root cause from symptom, amplifier, and trigger?
- Could ordinary incentives explain the behavior without assuming secret coordination?
- Are there missing base rates or denominators?
- Are we overweighting visible scandals because invisible normal operation is harder to observe?

## Evidence Discipline & Source Policy

All evidence collection and evaluation must follow the [Source Policy](source-policy.md):
- **Tiers**: Tier 1 (Primary/Official), Tier 2 (Expert/Structured), Tier 3 (Speculative/Unstructured).
- **Core Rule**: Tier 3 evidence is strictly prohibited from supporting any core/central conclusions.
- **Claim Ledger Requirements**:
  - Assign `evidence_role`: `directly_supports`, `partially_supports`, `context_only`, `contradicts`, or `weak_or_unverified`.
  - Record `access_date` (YYYY-MM-DD) for all evidence.
  - Identify `failure_mode` (potential bias, narrative capture, stale data, etc.) for each source.

| Evidence type | Use | Risk |
|---|---|---|
| Primary records | Anchor facts, dates, numbers, formal positions | Can reflect institutional self-presentation |
| Court/discipline records | Strong for proven misconduct | Reveals detected cases, not full prevalence |
| Academic papers | Mechanism and historical analysis | May lag current facts or use narrow datasets |
| Industry data | Market structure and incentives | May be proprietary, incomplete, or biased |
| Investigative reporting | Hidden mechanisms and actor detail | Needs cross-checking |
| Opinion/commentary | Narrative map | Weak evidence for truth claims |
| Social media | Early signal and sentiment | High noise, manipulation risk |

## Regulated And High-Stakes Topics

For medical, legal, tax, employment, finance, safety, or compliance questions:

1. State the jurisdiction, date, and scope.
2. Prefer current primary sources: statutes, regulations, official agencies, filings, court records, or authoritative standards.
3. Separate legal/tax/compliance facts from business judgment.
4. Avoid "you should" unless the action is low-risk and clearly supported.
5. Tell the user what a qualified professional would need to verify before action.

## Confidence Labels

| Label | Meaning |
|---|---|
| High | Primary sources or strong multi-source evidence directly support the claim |
| Medium-high | Evidence is strong, but some mechanism links are inferred |
| Medium | Plausible model with partial evidence or imperfect comparables |
| Low | Hypothesis only; useful for monitoring, not conclusion |
| Unknown | Evidence is insufficient or contradictory |

## Output Template

Use this structure for substantial reports:

```markdown
## Research Plan Gate
- **Question Type**: ...
- **Decision Relevance**: ...
- **Key Claims to Verify**: ...
- **Primary Sources Needed**: ...
- **Contrary Evidence Needed**: ...
- **Freshness Requirement**: ...
- **Stop Condition**: ...

## Executive Summary
最高置信因果模型: ...
关键不确定性: ...
未来最重要观察点: ...

## Common Narratives And Why They Are Incomplete
| Narrative | What it gets right | Where it fails |

## Claim Ledger
*All sources must comply with the Source Policy. Tier 3 sources are strictly prohibited from supporting core/central conclusions.*
| Claim | Source | Tier | Evidence Role | Access Date | Failure Mode | Confidence |

## Unknowns And Assumptions
Known unknowns:
Assumptions:
Most fragile claim:

## First-Principles Model
Production function:
Outcome = A x B x C x D

Binding bottleneck:
...

## Incentive And Power Map
| Actor | Public goal | Private payoff | Constraint | Observable behavior |

## Causal Model
Root causes:
Amplifiers:
Symptoms:
Narrative distractions:

## Competing Explanations
| Explanation | Verdict | Reason |

## Falsification Tests
1. ...

## Forecast
Base case:
Upside case:
Downside case:
Leading indicators:

## Source Gaps
...
```

## Output Modes

Choose the output mode based on the user's preference or the depth of the investigation:

### 1. Mini Mode
When the user wants a concise answer. Keep it compact and direct:
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
Medium-length answer. Includes structural mapping:
- Executive Summary (Highest-confidence causal model, Key uncertainty, Leading indicator)
- Research Plan Gate (Question Type, Decision Relevance, Key Claims, Stop Condition)
- Common Narratives and why they are incomplete
- Claim Ledger (including source tiers, `evidence_role`, `access_date`, and `failure_mode`; Tier 3 must not support core conclusions)
- First-Principles Model & Incentive Map
- Forecast with leading indicators

### 3. Deep Mode
Comprehensive investigation following the full template (`templates/truth-seeking-report.md`):
- All components of Standard Mode
- Complete Claim Ledger complying fully with the [Source Policy](source-policy.md)
- Psychology and Economics Lens
- Hardened Causal Model / Graph
- Comprehensive Competing Explanations evaluation
- Falsification Tests
- Multi-case scenario forecast
- Source Gaps analysis

## Reusable Prompt

```text
Use truth-seeking. Build an evidence-constrained causal model for: [QUESTION].

Requirements:
- Separate facts, interpretation, prediction, and value judgments.
- Use source tiers and cite primary sources for current facts.
- Build a first-principles causal model.
- Map incentives, institutions, money, power, psychology, and information asymmetry where relevant.
- Reject weak common narratives.
- State confidence, unknowns, falsification tests, and leading indicators.
- Do not claim absolute truth.
```
