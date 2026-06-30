# Truth Seeking Skill

Evidence-constrained root-cause investigation for AI agents.

This skill helps an agent investigate disputed, complex, or narrative-heavy questions without collapsing into media summaries, moralizing, conspiracy overreach, or false certainty. It produces the strongest current causal model (highest-confidence causal model), tied to source tiers, roles, assumptions, uncertainty, falsification tests, and leading indicators.

## Use Cases

- "What is the real root cause behind this issue?"
- "Analyze this from first principles, not media narratives."
- "Map incentives, power, money, psychology, and institutional constraints."
- "What is most likely to happen next, and what should we watch?"
- "Separate facts, interpretations, predictions, and value judgments."

## What It Produces

Mini Mode:

1. Highest-confidence causal model
2. Why surface explanations are insufficient
3. Key evidence (complying with Source Policy, including access dates)
4. First-principles mechanism
5. Prediction and leading indicators

Standard Mode:

- Executive summary
- Research Plan Gate
- Common narratives and why they are incomplete
- Claim Ledger with evidence roles and access dates
- First-principles model and incentive map
- Forecast with leading indicators

Deep Mode:

- Research Plan Gate
- Executive summary
- Claim map
- Claim Ledger with source tiers, roles, access dates, and failure modes
- First-principles model
- Incentive and power map
- Psychology and economics lens
- Competing explanations
- Causal graph or causal chain
- Confidence matrix
- Falsification tests
- Future scenarios and leading indicators
- Source gaps

## Installation

### Codex / OpenAI skills-compatible layout

Copy this repository folder into your skills directory:

```bash
cp -R truth-seeking-skill ~/.codex/skills/truth-seeking
```

Then invoke it with:

```text
Use $truth-seeking to build an evidence-constrained causal model for [topic].
```

### Other agent frameworks

If your agent framework does not support Codex-style skills, use:

- `SKILL.md` as the system or developer instruction.
- `references/truth-protocol.md` as the detailed reference file.
- `references/source-policy.md` as the source quality policy.
- `templates/truth-seeking-report.md` as the output template.

## Validation

Run the repository validation checks:

```bash
bash tests/validate.sh
```

The script checks required files, runs the adversarial fixture suite, checks for banned absolute phrasings, and flags private/local coupling.

## File Structure

```text
.
├── SKILL.md
├── agents/
│   └── openai.yaml
├── references/
│   ├── source-policy.md
│   └── truth-protocol.md
├── templates/
│   └── truth-seeking-report.md
├── examples/
│   └── fictional-platform-decline.md
├── tests/
│   ├── check_fixtures.sh
│   ├── validate.sh
│   └── fixtures/
│       ├── conspiracy_bait.md
│       ├── high_stakes_advice.md
│       ├── moralization_bait.md
│       ├── overconfident_forecast.md
│       ├── rumor.md
│       └── stale_facts.md
├── LICENSE
└── README.md
```

## Safety Boundaries

This skill is for analysis, not professional advice. For medical, legal, tax, employment, finance, safety, or compliance questions:

- State jurisdiction, date, and scope.
- Prefer current primary sources.
- Separate legal/tax/compliance facts from business judgment.
- Avoid presenting conclusions as professional advice.
- State what a qualified professional would need to verify before action.

## Design Principles

- Evidence over vibe.
- Mechanisms over narratives.
- Confidence labels over absolute certainty.
- Incentives before moral blame.
- Falsification before prediction.
- Source gaps before strong conclusions.

## Example Prompt

```text
Use $truth-seeking to investigate why [organization/market/system] is failing.

Requirements:
- Do not repeat media narratives.
- Use source tiers and roles.
- Build a first-principles causal model.
- Map incentives, institutions, money, power, psychology, and information asymmetry where relevant.
- Reject weak common narratives.
- State confidence, unknowns, falsification tests, and leading indicators.
- Do not claim absolute truth.
```

## License

MIT
