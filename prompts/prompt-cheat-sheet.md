# Prompt Cheat Sheet — AI for Excel

Copy, paste, adapt. These work in **any** general AI assistant (ChatGPT, Claude)
and most apply to Copilot in Excel too. Replace the `<angle-bracket>` bits with
your own details.

> **The one habit that fixes 80% of bad answers:** tell the AI the **shape of
> your data**, the **result you want**, and the **rules it must follow.** Vague
> prompts get vague (and often wrong) answers.

---

## The pattern: Context → Goal → Constraints

> **Context:** I have an Excel table named `<TableName>` with columns
> `<col1, col2, …>`. A sample row looks like `<paste one row>`.
> **Goal:** I want `<the result, in plain language>`.
> **Constraints:** `<format, edge cases, which function family, what "good" means>`.
> Give me the formula/steps I can paste in, and explain it in one line.

**Lazy → better, in practice:**
- ❌ "write a formula for variance"
- ✅ "In a table `BudgetActual` with columns `Budget` and `Actual`, write a
  structured-reference formula for variance percent that is **positive when
  Actual exceeds Budget** and formatted as a percent. One-line explanation."

---

## Writing & fixing formulas

> In an Excel table named `<Table>` with columns `<…>`, write a formula that
> `<does X>`. Use structured references (like `[@Column]`). Keep it to one cell
> if possible. Explain what each part does in one line.

> Here's a formula that isn't working: `<paste the exact formula>`. The error is
> `<paste the exact error, e.g. #SPILL! / #VALUE! / "too many arguments">`.
> Explain *why* it's failing and give me a corrected version.

> Rewrite this nested formula to be easier to read and maintain:
> `<paste formula>`. Tell me if a newer function (XLOOKUP, FILTER, GROUPBY,
> LET, LAMBDA) would make it simpler.

> Explain this formula to me step by step as if I'm new to it: `<paste formula>`.

---

## Power Query (data cleaning)

> I'm cleaning a column in Power Query called `<Column>`. The messy values look
> like: `<paste 8–10 real examples>`. Write an M transform (an `Add Column` or a
> `Replace Values` chain) that maps them to `<the clean set you want>`, trims
> spaces, is case-insensitive, and labels anything unexpected as `Unknown`. Give
> me M I can paste into the Advanced Editor.

> In Power Query, my `<Amount>` column has mixed values like `$1,234.50` and
> `987.00`. Give me one transform that strips the `$` and commas and returns a
> decimal number, robust to both forms.

> I have a folder of monthly CSV exports with the same columns. In plain steps,
> how do I combine them in Power Query so that **next month's file is picked up
> automatically when I refresh**?

> My Power Query refresh broke after the source changed: `<paste the error>`.
> What likely changed, and how do I repoint the step without rebuilding the query?

---

## Python in Excel

> Write Python for **Python in Excel** (a `=PY()` cell). Load my table with
> `xl("<Table>[#All]", headers=True)`. Then `<group / summarize / chart>`. Use
> only standard libraries available in Python in Excel (pandas, numpy,
> matplotlib, seaborn). Return `<the DataFrame / the figure>`.

> In Python in Excel, group `<Table>` by `<Column>`, sum `<ValueColumn>`, add a
> variance % column, and sort descending. Return the result as a DataFrame.

> In Python in Excel, make a clean horizontal bar chart of `<metric>` by
> `<category>` from `<Table>`. Add a title and tidy the axis labels. Return the
> figure.

---

## Copilot in Excel (type these into Copilot)

- "Summarize total `<Actual>` vs `<Budget>` by `<Department>` and flag rows over budget."
- "Add a column showing variance percent."
- "Create a PivotTable of `<value>` by `<row field>` and `<column field>`."
- "Insert a chart comparing `<A>` and `<B>` by `<category>`."
- "What are the top 5 `<items>` by `<metric>`?"

> **If Copilot refuses or underperforms:** make sure your data is formatted as a
> **Table** (`Ctrl+T`) and the workbook is **saved to OneDrive/SharePoint**. Then
> reselect the Table and ask again.

---

## Explaining & troubleshooting (AI's superpower)

> Explain this Excel error in plain English and give me 2–3 likely causes:
> `<paste the exact error and what you were doing>`.

> I want to `<describe the outcome>` in Excel but don't know the best feature.
> Walk me through the options (formula vs PivotTable vs Power Query vs Python in
> Excel) and recommend one for a non-coder.

---

## Documenting your workflow (don't skip this)

> Write a short run-book for a **non-technical teammate** explaining how to
> refresh this report each month. Context: there's a Power Query that
> `<combines a folder / cleans an export>`, merges to `<a lookup>`, and feeds a
> `<PivotTable / Python summary>`. Steps should be: `<save new file → open
> workbook → Data ▸ Refresh All → check totals tie out>`. Add a 3-item
> sanity-check list and note where a human should review the output.

> Turn these Power Query steps into plain-English documentation a colleague could
> follow: `<paste your Applied Steps names>`.

---

## The rules you bring to every prompt

1. **Treat AI output as a draft, not as truth.** Read it before you run it.
2. **Verify what matters.** Spot-check formulas and summaries against numbers you
   already know.
3. **Keep sensitive data out of public AI tools** unless your org approved them.
   A small anonymized sample usually gets the same help.
4. **Ask it to explain.** "Explain this step by step" is the fastest way to learn
   — and to catch a confident mistake.
