# Session 2 — Exercise: Reproduce an Analysis (and start your capstone)

**Time:** 30–45 minutes · **Tools:** your choice of Formula / Python in Excel / Copilot
**File:** `datasets/session-2/budget-vs-actual.xlsx`

The question we answered three ways in class: **"Which departments ran over
budget, and by how much?"** Now reproduce it on your own — using whichever road
you want — and prove you can ask AI a good question.

---

## Part 1 — Reproduce one road (required)

Pick **one** and recreate the department-level variance summary:

- **Road 1 — Formulas.** Build a `Variance %` column and roll up by department
  with `GROUPBY`/`SORT` (or `UNIQUE` + `SUMIFS`). Ask AI to draft it, then ask it
  to *explain* the formula back to you.
- **Road 2 — Python in Excel.** `=PY(` → load `BudgetActual` with `xl()` →
  `groupby("Department")` → add a variance column → sort.
- **Road 3 — Copilot.** Select the Table and ask Copilot to summarize Actual vs
  Budget by department and flag the overspenders. Verify any formula it writes.

**Check your work:** R&D should be the biggest overspend (~+13%); Customer
Success the biggest underspend (~−9%); total ~+3.3% over budget.

Solution code for all three roads: `solutions/session-2-formulas-python-solution.md`.

## Part 2 — Ask a *new* question (required)

Pose one question the slides didn't answer — e.g. *"Which month was worst across
all departments?"* or *"Which category drives Marketing's overspend?"* (use the
`Transactions` table). Answer it with any tool.

Write down the **exact prompt** you gave the AI. Then improve it once using the
**Context → Goal → Constraints** pattern and note what changed. (Cheat sheet:
`prompts/prompt-cheat-sheet.md`.)

## Part 3 — Bring your own data (sets up your capstone)

Pick a **real, recurring report** you make at work. Export or rebuild a **small,
anonymized sample** of its source data. You'll turn this into your capstone in
Session 3, so choose something you'd genuinely like to automate.

> **Data safety:** anonymize. Keep confidential or regulated data out of public
> AI tools unless your org has approved them.

---

## Submit (required)

Post in Slack:
1. Your **chart or summary** from Part 1 (screenshot).
2. The **before/after prompt** from Part 2 and one line on what improving it changed.
3. One line naming the **recurring report** you'll use for your capstone.

## Self-check

- [ ] My department ranking matches the reference (R&D top, Customer Success bottom)
- [ ] I asked AI to *explain* something, not just produce it
- [ ] My improved prompt names the data, the goal, and at least one constraint
- [ ] I've chosen (and anonymized) the data for my capstone
