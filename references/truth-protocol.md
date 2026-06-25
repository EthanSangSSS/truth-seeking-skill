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

## Evidence Discipline

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
## Executive Summary
最高置信结论: ...
关键不确定性: ...
未来最重要观察点: ...

## Common Narratives And Why They Are Incomplete
| Narrative | What it gets right | Where it fails |

## Evidence Chain
| Claim | Source | Tier | Supports | Confidence |

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

## Mini Mode

When the user wants a concise answer, compress to the user's language. English labels are:

1. Most likely truth
2. Why surface explanations are insufficient
3. Key evidence
4. Root mechanism
5. Future indicators

Chinese labels are:

1. 最可能的真相
2. 为什么表层解释不够
3. 关键证据
4. 底层机制
5. 未来观察指标

## Reusable Prompt

```text
Use truth-seeking. Investigate the root truth behind: [QUESTION].

Requirements:
- Separate facts, interpretation, prediction, and value judgments.
- Use source tiers and cite primary sources for current facts.
- Build a first-principles causal model.
- Map incentives, institutions, money, power, psychology, and information asymmetry where relevant.
- Reject weak common narratives.
- State confidence, unknowns, falsification tests, and leading indicators.
- Do not claim absolute truth.
```
