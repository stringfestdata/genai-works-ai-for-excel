# Session 2 — Worked Solution: Formulas, Analysis & Summaries

**File:** `datasets/session-2/budget-vs-actual.xlsx`
**Goal:** answer real questions about the data three ways — with **formulas**
(AI-assisted), with **Python in Excel**, and with **Copilot** — and learn which
tool to reach for.

The whole session is organized around one running question:
**"Which departments ran over budget, and by how much?"**

Reference answers (so you can confirm learners land in the right place):
total actual is **+3.3%** over budget; **R&D (+13%)** and **Marketing (+9%)** are
the overspenders; **Customer Success (−9%)** and **Sales (−4%)** came in under.

---

## Part A — Formulas, with AI as your formula writer

Work on the `BudgetActual` table.

### A1. Variance and variance %
Add two columns to the table:

```excel
= [@Actual] - [@Budget]                          (Variance)
= ([@Actual] - [@Budget]) / [@Budget]            (Variance %)   format as %
```

**AI prompt (Copilot, or paste the headers into ChatGPT/Claude):**
> "In an Excel table named `BudgetActual` with columns Budget and Actual, write a
> structured-reference formula for variance percent that returns a positive
> number when Actual exceeds Budget. Format guidance too."

### A2. Department roll-up with a dynamic array
On a blank area:

```excel
= SORT(
    GROUPBY(BudgetActual[Department],
            BudgetActual[[Budget],[Actual]],
            SUM, 0, 0),
    3, -1)
```

If `GROUPBY` isn't available in the learner's build, the SUMIFS fallback:

```excel
= UNIQUE(BudgetActual[Department])                          ' spill list
= SUMIFS(BudgetActual[Actual], BudgetActual[Department], A2#)
= SUMIFS(BudgetActual[Budget], BudgetActual[Department], A2#)
```

**Teaching point:** dynamic arrays *spill*; one formula replaces a block of
copy-down formulas and updates automatically. Ask AI to "explain this formula
step by step" — a great way to learn `GROUPBY` / spilled ranges safely.

### A3. The headline number
```excel
= TEXT(SUM(BudgetActual[Actual])/SUM(BudgetActual[Budget]) - 1, "+0.0%;-0.0%")
   & " vs budget overall"
```

### A4. Troubleshooting practice (do this live)
Paste this deliberately broken formula and ask AI to fix it:

```excel
= SUMIF(BudgetActual[Department], "R&D", BudgetActual[Actual], BudgetActual[Budget])
```
(`SUMIF` takes 3 args, not 4 — AI should spot it and suggest `SUMIFS` or two
`SUMIF`s. The lesson: AI is excellent at *explaining the error message*.)

---

## Part B — Python in Excel

Use `=PY(` in a cell (Formulas ▸ Python, or just type `=PY(`). Reference the
table with `xl("BudgetActual[#All]", headers=True)`.

> Only standard, supported libraries are used below — `pandas`, `numpy`,
> `matplotlib`, `seaborn` — all built into Python in Excel.

### B1. Load and inspect
```python
=PY(
df = xl("BudgetActual[#All]", headers=True)
df.head()
)
```

### B2. Department summary with variance
```python
=PY(
df = xl("BudgetActual[#All]", headers=True)
g = (df.groupby("Department")[["Budget", "Actual"]].sum())
g["Variance"] = g["Actual"] - g["Budget"]
g["Variance %"] = (g["Variance"] / g["Budget"] * 100).round(1)
g.sort_values("Variance %", ascending=False)
)
```
Returns the same R&D-at-top ranking as the formula approach — a good "two roads,
same destination" moment.

### B3. A chart in one cell
```python
=PY(
import matplotlib.pyplot as plt
df = xl("BudgetActual[#All]", headers=True)
g = df.groupby("Department")[["Budget", "Actual"]].sum().sort_values("Actual")
ax = g.plot(kind="barh", figsize=(6, 3.5))
ax.set_title("Budget vs Actual by Department")
ax.set_xlabel("USD")
plt.tight_layout()
ax.get_figure()
)
```

### B4. Describe the transactions
```python
=PY(
tx = xl("Transactions[#All]", headers=True)
tx.groupby("Category")["Amount"].agg(["count", "sum", "mean"]).round(0)
)
```

**Teaching point:** Python in Excel is the right call when you want
*grouping + a chart + summary stats in one place*, or when the analysis would be
a tangle of nested formulas. It's overkill for a single lookup.

---

## Part C — Copilot in Excel

With the table selected, try these prompts (results vary by build/version —
that's a teachable reality, not a failure):

- "Summarize total Actual vs Budget by Department and flag departments over budget."
- "Add a column showing variance percent."
- "Which months ran over budget across all departments?"
- "Create a PivotTable of Actual by Department and Month."
- "Insert a chart comparing Budget and Actual by Department."

**Teaching points:**
- Copilot is fastest for "give me a summary / a pivot / a chart" on a clean table.
- It is least reliable for precise multi-step logic — verify the formula it writes.
- It needs data **in a Table** and saved to OneDrive/SharePoint. If it refuses,
  that's usually why — a great troubleshooting moment.

---

## Which tool? (the decision learners should leave with)

| Task | Reach for |
|---|---|
| One lookup or a quick variance column | **Formula** (ask AI to write/explain it) |
| Group + chart + stats together | **Python in Excel** |
| "Summarize this / make me a pivot or chart" on a clean Table | **Copilot** |
| Understanding an error message | **Any general AI assistant** — paste the error |
| Sensitive data, no approved AI | **Formulas / Python**, keep it local |

The async assignment asks learners to reproduce **B2 or C** on their own data
(or the provided `Transactions` table). The point is fluency, not novelty.
