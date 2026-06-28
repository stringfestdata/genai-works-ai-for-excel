# In‑Session Practice — "Your Turn" Activities

A 90‑minute hands‑on session lives or dies on whether learners *do* something,
not just watch. These guided activities are the in‑session counterpart to the
async assignments: short, scaffolded, done live alongside the instructor.

They also solve the practical problem of **filling 90 minutes comfortably**.
Session 1 needs these most (its concepts present quickly); Sessions 2 and 3 are
already demo‑dense, so their activities are optional time‑flex.

> Logistics: tell learners up front there will be "your turn" moments so they
> keep Excel open and the dataset downloaded. Keep one screen on the data, one
> on chat. Use a visible countdown. Re‑group by working the solution live.

---

## Session 1 — the priority (adds ~25 minutes of real activity)

### A. Spot the mess (5 min) — warm‑up, no Excel needed
Put `regional-sales-RAW.csv` on screen. Ask the room to call out, in chat,
**everything wrong with it** before you touch it. Drive to the full list:

- Junk title rows before the header
- A `TOTAL` row mixed into the data
- Dates in four different formats
- 19 spellings of 4 regions (`North`, `north`, `N.`, `Northern`…)
- Revenue stored as text with `$` and commas
- Quantity stored as text (and one spelled‑out `two`)
- Duplicate rows; blank regions and quantities
- Names as both `First Last` and `Last, First`

**Why it works:** primes the demo, gets everyone engaged in the first 10 minutes,
and makes the clean‑up feel earned. Tally how many they spot ("9 problems — let's
fix them all once, and never again").

### B. Clean it with me (15 min) — guided, hands‑on
Don't just demo — have learners do the **first five steps with you**, pausing so
everyone keeps up (the "post a 1 in chat when you're caught up" rhythm):

1. `Get Data ▸ From Text/CSV` → Transform Data (everyone connects)
2. Remove the 3 top rows; Use First Row as Headers
3. Trim + Clean the text columns
4. Change Revenue to a number (strip `$` and `,`)
5. **AI moment, together:** everyone pastes the messy Region values into their
   AI assistant with the prompt from the cheat sheet, and reads the result aloud

Then *you* finish the harder steps (dedupe, the `two` error, the TOTAL row) at
demo speed while they watch. End on **Refresh**.

**Why it works:** the first five steps are easy enough that nobody gets lost, and
doing them live is what makes the skill stick. This is the segment that turns the
session from a lecture into a workshop.

### C. Read the recorded steps (5 min) — depth beat
Open the **Applied Steps** panel and walk down it. Point out: *this list is your
workflow.* Optionally peek at the M in the formula bar for one step and have AI
explain it. Reinforces "connect, don't paste" with something concrete on screen.

> New Session 1 slides to support B and C are listed in
> [`session-1-run-of-show.md`](session-1-run-of-show.md) (Expanded plan).

---

## Session 2 — optional time‑flex (use only if you're ahead of pace)

### Write a better prompt (6 min)
Give everyone a deliberately lazy prompt ("write a formula for variance") and 3
minutes to rewrite it using **Context → Goal → Constraints**. Collect 2–3 in chat,
improve one together. Cheap, high‑value, reinforces the most transferable skill.

### Reproduce one road (8 min)
If a demo runs short, have learners recreate the department variance summary on
the `BudgetActual` table using whichever road they're set up for, while you float
in chat. Doubles as a head start on their async task.

---

## Session 3 — optional, plus the built‑in capstone work time

### Sketch your workflow (8 min)
Before the live build, have each learner write their own recurring task into the
four boxes — **Connect → Clean → Enrich/Summarize → Document** — in one line each.
Share 2–3. This makes the capstone concrete *before* they leave.

### Capstone work time (built in)
Session 3 already reserves ~20 minutes at the end for learners to start their
capstone live while you answer questions. Protect it — it's the single best
completion lever in the course.

---

## A note on pacing

If you consistently finish early even with these, the fix is more Q&A and more
"show me your screen" troubleshooting, not more slides. Hands‑on courses are
supposed to breathe. Better to end 5 minutes early than to rush the demo.
