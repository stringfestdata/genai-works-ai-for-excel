# Session 3 — Worked Solution: A Reusable Monthly Spend Report

**Files:** `datasets/session-3/monthly-expenses/*.csv`, `vendor-master.xlsx`
**Goal:** build a report that **refreshes itself** when next month's file lands —
the model for every learner's capstone.

This is the session where the three threads come together: *connect* (don't
paste), *clean* (Power Query), *enrich + summarize* (merge + pivot/Python), and
*document* (AI writes the run-book). The deliverable is a workflow, not a number.

Reference figures: ~188 invoices across 3 files; grand total ≈ **$1.13M**
(Jan ≈ $408K, Feb ≈ $333K, Mar ≈ $387K).

---

## Step 1 — Combine the folder (the keystone move)

`Data ▸ Get Data ▸ From File ▸ From Folder` → point at `monthly-expenses/`.
Power Query shows all 3 CSVs. Click **Combine & Transform**.

> Teaching point: this is the difference between a chore and a workflow. Next
> month you drop `expenses-2025-04.csv` into the folder and hit **Refresh** — no
> new steps, no re-import. The folder query loops over whatever files are there.

You now have one stacked table of ~188 rows, plus a `Source.Name` column telling
you which file each row came from (keep it — it's a free audit trail).

## Step 2 — Clean (each export is messy differently)

- **Vendor:** `Trim` then `Proper`-case so `INITECH CONSULTING` and ` Acme SaaS`
  collapse to one spelling that will match the lookup.
- **Amount:** replace `$` and `,`, change type to **Decimal Number**.
- **Date:** change type to **Date**. The three files use three formats; Power
  Query parses them. (If one file fights you, that's a real-world teachable
  moment — locale settings. Use `Date.FromText` with a format if needed.)
- **Status:** leave as text; you'll filter on it later.

**AI prompt to clean a stubborn column:**
> "Power Query column `Amount` has values like `$6,272.19` and `7535.06` mixed.
> Give me one transform that strips the dollar sign and commas and returns a
> decimal number, robust to both forms."

## Step 3 — Enrich: merge to the vendor master

Load `vendor-master.xlsx` (`VendorMaster` table) as a connection. Then
`Home ▸ Merge Queries`: join the combined data to `VendorMaster` on
**Vendor Name = Vendor Name** (left outer). Expand `Spend Category` and
`Preferred?`.

> Teaching point: any vendor that *doesn't* match shows blank category — that's
> your data-quality check. If everything matched, your Step 2 cleaning worked.

`Close & Load To… ▸ Connection Only` (or to a table if learners want to see it).

## Step 4 — Summarize

Two equally valid roads — let learners pick:

**A. PivotTable** off the loaded query: Spend Category (rows) × Month (columns),
Sum of Amount. Add a slicer on `Status`.

**B. Python in Excel** on the loaded table:
```python
=PY(
df = xl("CombinedExpenses[#All]", headers=True)
df["Month"] = df["Date"].dt.to_period("M").astype(str)
pivot = df.pivot_table(index="Spend Category", columns="Month",
                       values="Amount", aggfunc="sum", margins=True).round(0)
pivot
)
```
A quick chart of monthly totals:
```python
=PY(
import matplotlib.pyplot as plt
df = xl("CombinedExpenses[#All]", headers=True)
m = df.assign(Month=df["Date"].dt.to_period("M").astype(str)) \
      .groupby("Month")["Amount"].sum()
ax = m.plot(kind="bar", figsize=(5,3), title="Total spend by month")
plt.tight_layout(); ax.get_figure()
)
```

## Step 5 — Document the workflow with AI (do not skip)

This is what makes the capstone *reusable by someone else* (or by the learner in
six months). Prompt:

> "Write a short run-book for a non-technical teammate explaining how to refresh
> this report each month. Context: there's a Power Query that combines all CSVs
> in a folder, merges to a vendor lookup, and feeds a PivotTable. Steps should
> be: save the new monthly export to the folder, open the workbook, Data ▸
> Refresh All, check the totals tie out. Add a 3-item sanity-check list and note
> where a human should review."

Have learners paste the AI's run-book into a `README` tab and **edit it** — the
edit is where the learning sticks.

## Step 6 — Refresh to prove it

Drop a 4th file (or duplicate March as `expenses-2025-04.csv`), hit
**Data ▸ Refresh All**, and watch the totals and pivot update with zero new
clicks. That moment is the whole course in one gesture.

---

## Where this breaks (cover this honestly)

- **Schema drift:** if next month's export renames `Amount` → `Amt`, the query
  errors. Show them the error and how to repoint the step. AI is good at reading
  the error; it can't see their folder.
- **New unmatched vendors:** the merge leaves blanks. Build the habit of
  filtering for blank category after each refresh.
- **Copilot limits:** Copilot won't build the folder query for you; Power Query
  is the right tool for the *pipeline*, AI is the right tool for the *M snippets*
  and the *documentation*. Naming that division is a key takeaway.
- **Locale/date parsing:** the #1 real-world snag. Worth 2 minutes.

## Capstone connection

The learner's capstone is *this pattern on their own data*: a folder (or single
recurring export) → clean → enrich/summarize → AI-written run-book → Refresh.
See `capstone/capstone-brief.md` and the rubric.
