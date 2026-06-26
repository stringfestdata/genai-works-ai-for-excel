# Course Kit — AI for Excel

The complete teaching kit for **AI for Excel**: slides, datasets, worked
solutions, instructor run-of-shows, exercises, a prompt cheat sheet, and the
capstone. Everything is vendor-neutral and ready to run in a live cohort (which
doubles as the on-demand recording).

> New here? Instructors start with the **[Facilitator Guide](instructor/facilitator-guide.md)**.
> Learners start with the **[Session 1 Exercise](exercises/session-1-exercise.md)**.

---

## How it all fits together

The whole course turns on one habit — **connect, don't paste** — and one pattern:
**Connect → Clean → Enrich/Summarize → Document.** The capstone is that pattern on
the learner's own data.

| Session | Live topic | Learners build | Key files |
|---|---|---|---|
| **1** | Modern Excel + AI landscape; first data clean-up | A clean, refreshable table | deck · `datasets/session-1` · `solutions/session-1-*` · `exercises/session-1` |
| **2** | Formulas, analysis & summaries; which tool when | One analysis, three ways | deck · `datasets/session-2` · `solutions/session-2-*` · `exercises/session-2` |
| **3** | Build & ship a reusable workflow; capstone | A self-refreshing report | deck · `datasets/session-3` · `solutions/session-3-*` · `capstone/` |

---

## What's in the repo

```
slides/        3 decks (.pptx) with full speaker notes, GenAI Works Academy styling
datasets/      All synthetic data + DATA-DICTIONARY.md
  session-1/   regional-sales-RAW.csv/.xlsx        (messy export — cleaning)
  session-2/   budget-vs-actual.xlsx               (analysis: formulas/Python/Copilot)
  session-3/   monthly-expenses/*.csv, vendor-master.xlsx, monthly-report-START.xlsx (capstone)
solutions/     Worked answers: Power Query M, formulas, Python in Excel, full workflow
instructor/    Facilitator guide + minute-by-minute run-of-show per session
exercises/     Student handouts: async assignments (S1, S2)
prompts/       prompt-cheat-sheet.md — copy-paste prompts for every tool
capstone/      capstone-brief.md — the final project brief + rubric
community/      slack-and-logistics.md — running the cohort + Slack playbook
handouts/       Distribution-ready .docx versions of the student handouts
```

---

## Slide decks

| Deck | Slides | Notes |
|---|---|---|
| `slides/session-1-modern-excel-ai-landscape.pptx` | 14 | Full speaker notes (Presenter View) |
| `slides/session-2-formulas-analysis-summaries.pptx` | 13 | Full speaker notes |
| `slides/session-3-build-ship-workflow.pptx` | 14 | Full speaker notes |

Styled to the GenAI Works Academy template (near-black `#101110`, green
`#B1E882`, Inter). The original template lives at
`slides/_template-AI-for-Excel-Slides.pptx`.
Speaker notes are the teaching script; the `instructor/` run-of-shows are the clock.

---

## Tools the course uses

Microsoft Excel · Power Query (built in) · Copilot in Excel (M365) · Python in
Excel (M365) · a general AI assistant (ChatGPT or Claude, free tier fine).
**No coding or prior AI experience required.** The course is designed so learners
without Copilot/Python in Excel can still complete everything via Power Query and
a general assistant.

---

## Notes on responsible use

Built into the curriculum, not bolted on: treat AI output as a draft, verify what
matters, and keep confidential or regulated data out of public AI tools unless
your organization has approved them. A small anonymized sample almost always gets
the same help.

---

*All datasets are synthetic. Materials are for educational use within the course.*
