# Truth Seeking Skill

Evidence-constrained root-cause investigation for AI agents.

This skill helps an agent investigate disputed, complex, or narrative-heavy questions without collapsing into media summaries, moralizing, conspiracy overreach, or false certainty. It produces the strongest current causal model, tied to source tiers, assumptions, uncertainty, falsification tests, and leading indicators.

## Use Cases

- "What is the real root cause behind this issue?"
- "Analyze this from first principles, not media narratives."
- "Map incentives, power, money, psychology, and institutional constraints."
- "What is most likely to happen next, and what should we watch?"
- "Separate facts, interpretations, predictions, and value judgments."

## What It Produces

For a quick answer:

1. Highest-confidence answer
2. Why common explanations are insufficient
3. Key evidence
4. First-principles mechanism
5. Prediction and leading indicators

For a deep report:

- Executive summary
- Claim map
- Evidence chain with source tiers
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
Use $truth-seeking to investigate the root truth behind [topic].
```

### Other agent frameworks

If your agent framework does not support Codex-style skills, use:

- `SKILL.md` as the system or developer instruction.
- `references/truth-protocol.md` as the detailed reference file.
- `templates/truth-seeking-report.md` as the output template.

## Validation

Run the lightweight repository checks:

```bash
bash tests/validate.sh
```

The script checks required files, frontmatter shape, and common private/local coupling strings.

## File Structure

```text
.
├── SKILL.md
├── agents/
│   └── openai.yaml
├── references/
│   └── truth-protocol.md
├── templates/
│   └── truth-seeking-report.md
├── examples/
│   └── fictional-platform-decline.md
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
- Use first principles and source tiers.
- Map incentives, power, money, institutions, psychology, and information asymmetry.
- Reject weak common explanations.
- Provide confidence, falsification tests, and leading indicators.
```

## License

MIT
