# Run-of-Show — Session 2: Formulas, Analysis & Summaries

**Length:** 90 min · **Deck:** `slides/session-2-formulas-analysis-summaries.pptx`
**Dataset:** `datasets/session-2/budget-vs-actual.xlsx`
**Solution:** `solutions/session-2-formulas-python-solution.md`

Goal for the day: answer one question — **"Which departments ran over budget?"** —
three ways (formulas, Python in Excel, Copilot), and leave with a decision rule
for which tool to reach for. Three short demos, all on the same question.

Reference answer (keep handy, reveal via the tools): total **+3.3%** over budget;
**R&D +13%**, **Marketing +9%** over; **Customer Success −9%**, **Sales −4%** under.

| Time | Min | Slide | Segment | Notes |
|---|---|---|---|---|
| 0:00 | 3 | 1 | Welcome | Who cleaned the file + posted to Slack? Celebrate it. Frame: "Clean table → now put it to work." |
| 0:03 | 2 | 2 | Agenda | Flag: three short demos, one per tool, same question. |
| 0:05 | 4 | 3 | The question | Open `BudgetVsActual`. Don't reveal the answer — let the tools reveal it. |
| 0:09 | 4 | 4 | Three roads | Not ranked — each wins a different job. Promise a decision rule at the end. |
| 0:13 | 14 | 5 | **Demo 1 — Formulas + AI** | Variance %, then `SORT(GROUPBY(...))` (or `UNIQUE`+`SUMIFS`). Step 2: show the prompt, READ the result. Step 5: paste the broken 4-arg `SUMIF`, let AI explain the error. |
| 0:27 | 6 | 6 | Ask better questions | The most transferable skill. Improve a lazy prompt → Context → Goal → Constraints, live. Point to the cheat sheet. |
| 0:33 | 14 | 7 | **Demo 2 — Python in Excel** | `xl()` → groupby → variance → one-cell `barh` chart. Reassure non-coders: read & adapt, AI drafts. Show the same R&D-on-top ranking — "two roads, same destination." |
| 0:47 | 12 | 8 | **Demo 3 — Copilot** | Summarize / add column / pivot / chart. Manage expectations: results vary by build. Demo the refusal fix (Table + cloud-saved). Verify the column it writes. |
| 0:59 | 5 | 9 | Which tool when? | The screenshot slide. Left = happy path, right = guardrails. Tie back to S1 trust slide. Graded outcome — say so. |
| 1:04 | 3 | 10 | The answer | Point isn't the numbers — three methods agreed. Ask: "Did everyone's R&D come out on top?" Troubleshoot mismatches live. |
| 1:07 | 4 | 11 | Key takeaways | One-word chat: which road felt most natural? |
| 1:11 | 4 | 12 | Assignment | Reproduce one road; **bring an anonymized sample of your own recurring report to S3** (becomes the capstone). |
| 1:15 | 15 | 13 | Closing + Q&A | Tease S3: "We stop answering one-offs and build something that refreshes itself." Q&A to time. |

**Total core teaching: ~75 min. Built-in Q&A/buffer: ~15 min.**

## If you're running behind

- **Cut first:** Demo 3 (Copilot, slide 8) down to a single prompt, or narrate
  from a screenshot — especially if much of the room lacks Copilot. Demos 1 and 2
  carry the learning outcomes.
- **Protect at all costs:** the decision rule (slide 9) and the "bring your own
  data" ask (slide 12) — that ask is what makes S3 personal.
- Keep all three demos on the **same question** even when trimming; the payoff is
  that the tools agree.

## Tech gotchas to pre-empt

- **`GROUPBY` not found:** older build. Fall back to `UNIQUE` + `SUMIFS` (in the
  solution). Don't get stuck — mention it and move on.
- **Python in Excel first run:** downloads the environment; can lag. Run a `=PY(`
  cell once before the session so it's warm.
- **Copilot refuses:** 99% of the time it's data-not-in-a-Table or file-not-saved-
  to-OneDrive. Demo the fix; it's the #1 support question.
- **Data safety:** when you nudge them to bring their own data (slide 12),
  reinforce the anonymized-sample rule.

## Common questions

- *"Is `GROUPBY` available to me?"* Newer Excel builds; `SUMIFS` is the universal fallback.
- *"Does Python in Excel send my data to ChatGPT?"* No — it runs in the Microsoft
  cloud, not an LLM. Different thing from pasting into a chatbot.
- *"Which tool should I just learn first?"* Formulas + a general assistant — works
  for everyone regardless of plan.
