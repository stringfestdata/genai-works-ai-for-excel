# Run-of-Show — Session 3: Build & Ship a Reusable Workflow

**Length:** 90 min · **Deck:** `slides/session-3-build-ship-workflow.pptx`
**Datasets:** `datasets/session-3/monthly-expenses/*.csv` + `vendor-master.xlsx`
**Solution:** `solutions/session-3-workflow-solution.md`
**Capstone:** `capstone/capstone-brief.md`

Goal for the day: build a report that **refreshes itself** when next month's file
lands, and launch every learner into a capstone that's the same pattern on their
own data. The live build is the marquee moment of the whole course.

| Time | Min | Slide | Segment | Notes |
|---|---|---|---|---|
| 0:00 | 3 | 1 | Welcome | Energy up — payoff day. Who brought their own data sample? They can build something real today. |
| 0:03 | 2 | 2 | Agenda | "By the end, a report updates with one click — that click is the whole course." |
| 0:05 | 3 | 3 | The shift | Reset "done": a capstone is a workflow, not a number. Say it slowly. |
| 0:08 | 5 | 4 | Anatomy of a workflow | The four boxes = the capstone template. Tell them to screenshot it as their checklist. |
| 0:13 | 2 | 5 | Live build divider | Open the session-3 folder — three CSVs sitting there. Goal: April's file → one Refresh. |
| 0:15 | 18 | 6 | **Live build** | The most important demo of the course. Keystone = "From Folder" (next month is free). Note an unmatched vendor → blank-category QC. Climax: add a 4th file, Refresh, watch it move. |
| 0:33 | 4 | 7 | The payoff | "How many hours/month would one-click save YOU?" Chat answers → capstone motivation. |
| 0:37 | 7 | 8 | Document with AI | Generate a run-book live, then edit one line to "make it true." Part of the rubric — don't skip. |
| 0:44 | 6 | 9 | Where workflows break | Credibility slide. Schema drift + locale dates are what they'll actually hit. Division of labor: PQ = pipeline, AI = snippets + docs. |
| 0:50 | 5 | 10 | Your capstone | Hand off with confidence. Small + done beats big + half-built. Point to the brief. Data-bringers start now. |
| 0:55 | 5 | 11 | Capstone rubric | Four criteria: repeats, good AI use, documented, understood. "Showing where you corrected the AI is a feature." How to submit. |
| 1:00 | 4 | 12 | Course takeaways | Zoom out to the whole course. Pause on each line. Celebrate the arc: by-hand → built-it-yourself. |
| 1:04 | 4 | 13 | Assignment | Finish + ship the capstone; post to Slack with one reflective sentence. |
| 1:08 | 22 | 14 | Closing + Q&A / work time | Optional: open work time — learners start their capstone live while you float in chat/breakouts. |

**Total core teaching: ~68 min. Built-in Q&A/work-time/buffer: ~22 min.**

## Make the last 20 minutes count

This is the best capstone-completion lever you have. Options for slide 14 time:
- **Live work time:** learners open their own data and start the four boxes while
  you answer questions in chat or breakout rooms. Many will finish far more than
  they would alone later.
- **Walk a volunteer's data:** if someone shares a sample, build the first two
  boxes on it live — nothing motivates like seeing their own report refresh.

## If you're running behind

- **Cut first:** slide 7 (payoff stats) to 1 minute; trim slide 9 to the two
  failure modes they'll actually hit (schema drift, locale dates).
- **Protect at all costs:** the live build through the **Refresh** (slide 6) and
  the capstone hand-off (slides 10–11). The Refresh is the emotional payoff of the
  entire course — never skip it.

## Demo cue card (slide 6)

1. `Get Data ▸ From File ▸ From Folder` → `monthly-expenses` → **Combine & Transform**.
2. Clean: `Trim`/`Proper` Vendor; strip `$`/`,` from Amount; set Date + Amount types.
3. `Merge Queries` → `VendorMaster` on **Vendor Name** → expand Spend Category.
   Note any blank category = unmatched vendor (free QC).
4. Summarize: PivotTable (Category × Month) **or** Python `pivot_table`.
5. **The moment:** drop a 4th CSV in the folder → `Data ▸ Refresh All` → it updates.

Safety net: every step + the M and Python are in `solutions/session-3-workflow-solution.md`.

## Common questions

- *"My capstone data is sensitive."* Anonymize a small sample; the workflow is
  identical. Never paste regulated data into a public AI tool.
- *"What if my data is one file, not a folder?"* Perfect — connect to the file and
  clean it; the folder step is optional. The four boxes still apply.
- *"How polished does the capstone need to be?"* It needs to repeat, be
  documented, and be understood. Scope small and finish.
