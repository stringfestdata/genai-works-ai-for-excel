# Run-of-Show — Session 1: The Modern Excel + AI Landscape

**Length:** 90 min · **Deck:** `slides/session-1-modern-excel-ai-landscape.pptx`
**Dataset:** `datasets/session-1/regional-sales-RAW.csv`
**Solution:** `solutions/session-1-power-query-solution.md` (+ `session-1-query.m`)

Goal for the day: every learner leaves having cleaned a messy file into a
**refreshable** table, and with the mental map of the four tools. The async
task (clean it themselves) is the real outcome — protect time for the hand-off.

> Slide numbers below match the deck. Full talking points live in the deck's
> speaker notes (Presenter View). This is the clock.

| Time | Min | Slide | Segment | Notes |
|---|---|---|---|---|
| 0:00 | 5 | 1 | Welcome + premise | Keep the title up while people arrive. Chat prompt: "What Excel task do you dread most?" Start the recording. |
| 0:05 | 2 | 2 | Agenda | "Watch for the decisions, not the clicks — the solution file has every click." |
| 0:07 | 3 | 3 | The premise | One story: a manual report you turned into one click. Read 2–3 chat answers — callback fuel for S3. |
| 0:10 | 5 | 4 | Four tools, four jobs | One line each. They're complements, not competitors. This is the course's mental model. |
| 0:15 | 5 | 5 | What AI does well / fails | The trust slide. "AI is a strong drafter, a weak source of truth." Tee up data safety. |
| 0:20 | 6 | 6 | Set up your toolkit | **Do it live and slowly.** Show the Copilot button + a `=PY(` cell. Reassure the no-M365 crowd. Get a "1" in chat before moving on. |
| 0:26 | 2 | 7 | Live demo divider | Open the RAW file fresh so they see the mess. State the target: ~248 rows, ≈ $555K. |
| 0:28 | 20 | 8 | **Live demo: clean the export** | The heart of the session. Narrate why at each step. Step 4: ask AI for the Region-mapping M, read it aloud, decide to trust. Step 6: let `two` error — "I'd investigate, not just delete." End on **Refresh**. |
| 0:48 | 3 | 9 | Connect, don't paste | Say it twice. The one habit that turns a chore into a workflow. |
| 0:51 | 3 | 10 | The payoff compounds | The 19→4 region number lands — show `=UNIQUE()` on the raw column if time. |
| 0:54 | 6 | 11 | Responsible AI use | Don't skip — it's a learning outcome. Practical, not preachy: "10 anonymized rows is enough." |
| 1:00 | 4 | 12 | Key takeaways | Ask for one-word takeaways in chat. |
| 1:04 | 4 | 13 | Assignment | **Required:** clean the file, post row count + total to Slack. That post = attendance + comprehension + seeds S2. |
| 1:08 | 22 | 14 | Closing + Q&A | Live Q&A to time. Point to Slack + support email. |

**Total core teaching: ~68 min. Built-in Q&A/buffer: ~22 min.**

## If you're running behind

- **Cut first:** the `=UNIQUE()` flourish on slide 10; trim slide 3 story to one line.
- **Protect at all costs:** the live demo (slide 8) and the assignment hand-off
  (slide 13). If the demo runs long, shorten Q&A — but never skip the clean from
  end to end; seeing the **Refresh** is the payoff.
- **If setup (slide 6) eats time:** tell stragglers to keep troubleshooting in
  Slack and move on — they can follow the demo by watching.

## Demo cue card (slide 8)

1. `Data ▸ Get Data ▸ From Text/CSV` → **Transform Data** (connect, don't paste).
2. `Remove Top Rows ▸ 3`; `Use First Row as Headers`.
3. Select Region/Sales Rep/Product → `Trim`, then `Clean`.
4. **AI moment:** paste messy Region values → ask for M mapping to N/S/E/W → read → trust.
5. Sales Rep `Last, First` → `First Last` via Column From Examples.
6. Revenue: replace `$` and `,` → Decimal. Quantity → Whole Number → **Remove Errors** (the `two` row).
7. Filter out the `TOTAL` row (blank Order ID); `Remove Duplicates`; Order Date → Date.
8. `Close & Load`. Validate: ~248 rows, `SUM(Revenue)` ≈ $555K. Then **add nothing, click Refresh.**

Safety net: if a step fights you live, the exact M is in `solutions/session-1-query.m`.

## Expanded 90‑minute plan (recommended)

Session 1's concepts present fast, so without hands‑on it can finish early. This
version adds ~25 minutes of real activity and turns the clean‑up from a demo into
a workshop. It assumes three small new slides (drop them in after the landscape):

- **"What makes data messy?"** — the 9 problems in the file (agenda/list layout)
- **"Your turn: clean it with me"** — the guided 5‑step mini‑clean (live‑demo layout)
- **"Read the recorded steps"** — Applied Steps = your workflow (statement layout)

| Time | Min | Segment | Notes |
|---|---|---|---|
| 0:00 | 5 | Welcome + premise | As before. |
| 0:05 | 7 | Landscape + trust | Four tools, four jobs; what AI does well / where to check. |
| 0:12 | 6 | Set up your toolkit | Get everyone to a `=PY(` cell, a Copilot button, or an assistant tab. |
| 0:18 | 5 | **Spot the mess** (Activity A) | Chat: call out everything wrong with the raw file. Tally 9 problems. |
| 0:23 | 15 | **Clean it with me** (Activity B) | Learners do the first 5 steps live; AI‑maps the regions together. |
| 0:38 | 12 | Finish the clean (demo) | You drive dedupe, the `two` error, the TOTAL row; validate ≈248 rows / $555K. |
| 0:50 | 5 | **Read the recorded steps** (Activity C) | Applied Steps = the workflow; AI explains one M step. |
| 0:55 | 4 | Connect, don't paste | The one habit. Then click Refresh to prove it. |
| 0:59 | 6 | Responsible AI use | The guardrails. Practical, not preachy. |
| 1:05 | 4 | Key takeaways | One‑word chat recap. |
| 1:09 | 4 | Assignment | Clean the file solo; post row count + total to Slack. |
| 1:13 | 17 | Q&A / troubleshooting | Help people whose clean broke; setup stragglers. |

**Total activity/content: ~73 min. Q&A/buffer: ~17 min.** Activities A–C are in
[`in-session-practice.md`](in-session-practice.md).

## Common questions

- *"Do I need Copilot for this course?"* No — only for flagged moments. Power
  Query + a general assistant cover the core.
- *"Will Python in Excel cost me?"* Included in most M365 business/enterprise
  plans; personal plans vary. Check your plan; you can still follow along.
- *"Power Query looks intimidating."* Reassure: it records your clicks; you rarely
  write code. AI writes the occasional snippet.
