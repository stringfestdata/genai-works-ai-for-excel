# Session 1 — Worked Solution: Cleaning the Sales Export with Power Query + AI

**Goal:** turn `regional-sales-RAW.csv` into a clean, refreshable table you can
trust — and capture the steps so next quarter's export cleans itself.

This is an *instructor solution*. It shows the click path, the resulting M code,
where AI helps, and how to validate the result. Learners do not need to write M;
Power Query records it for them. We show it so they can read and trust it.

---

## 0. What "clean" means here

A correct result is a single table where:
- The 3 junk rows at the top and the `TOTAL` row at the bottom are gone.
- `Order Date` is a real **Date** type.
- `Region` has exactly **4 values**: North, South, East, West (no blanks, no `N.`).
- `Sales Rep` is consistently `First Last`.
- `Product` is trimmed and consistently cased.
- `Quantity` is a **whole number**; the row with `two` and the blanks are handled.
- `Revenue` is a **decimal number**, not text.
- Exact duplicate rows are removed.

**Target:** ~248 rows, total Revenue ≈ **$555,000**.

---

## 1. Connect (don't paste)

`Data ▸ Get Data ▸ From Text/CSV` → pick `regional-sales-RAW.csv` → **Transform Data**.

> Teaching point: we *connect* to the file instead of copy-pasting, because a
> connection can be **refreshed**. That single choice is what makes this a
> workflow instead of a one-time chore.

## 2. Remove the junk header rows

`Home ▸ Remove Rows ▸ Remove Top Rows ▸ 3`, then
`Home ▸ Use First Row as Headers`.

## 3. Promote types later, fix values first

Don't let Power Query auto-detect types yet — delete the auto "Changed Type"
step if it added one. We clean text first, then set types once at the end.

## 4. Trim and clean text

Select `Region`, `Sales Rep`, `Product` → `Transform ▸ Format ▸ Trim`, then
`Transform ▸ Format ▸ Clean`.

## 5. Standardize Region (where AI earns its keep)

The fastest reliable path is a small lookup. Add a **conditional column** or use
**Replace Values**, but the cleanest is a merge against a 4-row reference, or a
single `Add Column ▸ Column From Examples` where you type the right answer for a
few rows and let Power Query infer the rest.

**AI prompt to generate the M** (paste into Copilot in Excel's Power Query box,
or ChatGPT/Claude):

> "I have a Power Query column `Region` with messy values like `north`, `N.`,
> `Northern`, ` North `, blanks. Write an M `Table.AddColumn` (or a
> `Replace Value` chain) that maps everything to exactly North, South, East, or
> West, trims spaces, is case-insensitive, and labels blanks as `Unknown`. Give
> me the M I can paste into the Advanced Editor."

Representative result:

```m
= Table.AddColumn(PrevStep, "Region Clean", each
    let r = Text.Lower(Text.Trim(Text.Replace([Region], ".", "")))
    in
        if r = "" then "Unknown"
        else if Text.StartsWith(r, "n") then "North"
        else if Text.StartsWith(r, "s") then "South"
        else if Text.StartsWith(r, "e") then "East"
        else if Text.StartsWith(r, "w") then "West"
        else "Unknown",
    type text)
```

> Teaching point: **read the AI's code before trusting it.** Ask the class: does
> `StartsWith "n"` risk a false match? (Here, no — only North begins with N. But
> on real data you'd check.) This is the "treat AI output as a draft" habit.

Then remove the original `Region` column and rename `Region Clean` → `Region`.
Filter out `Unknown` *or* keep it and flag it — a good discussion: dropping rows
silently changes your totals.

## 6. Standardize Sales Rep (`Last, First` → `First Last`)

`Add Column ▸ Column From Examples`: type `Maria Garcia` for a `Garcia, Maria`
row and `John Smith` for a `John Smith` row; Power Query infers the rest. Or via M:

```m
= Table.AddColumn(PrevStep, "Rep Clean", each
    if Text.Contains([Sales Rep], ",")
    then Text.Trim(Text.AfterDelimiter([Sales Rep], ",")) & " "
       & Text.Trim(Text.BeforeDelimiter([Sales Rep], ","))
    else [Sales Rep], type text)
```

## 7. Clean Quantity and Revenue

- `Revenue`: `Transform ▸ Replace Values` remove `$`, then change type to
  **Decimal Number**. (Power Query handles the thousands comma on type change in
  most locales; if not, replace `,` with nothing first.)
- `Quantity`: change type to **Whole Number**. The `two` row will error → use
  `Home ▸ Remove Errors` (and mention you'd normally investigate, not just drop).
  Blanks become `null`; `Replace Values ▸ null → 0` or filter them out depending
  on the rule you choose. Decide and document the rule.

## 8. Remove duplicates and the TOTAL row

- Filter `Order ID`: uncheck blanks / the `TOTAL` artifact (its Order ID is blank).
- Select all columns → `Home ▸ Remove Rows ▸ Remove Duplicates`.

## 9. Set final types and load

Set `Order Date` → **Date**, confirm number types, then
`Home ▸ Close & Load To… ▸ Table` (or Connection Only + a PivotTable).

## 10. Validate

- Row count ≈ **248**.
- `SUM(Revenue)` ≈ **$555,000**.
- `Region` has exactly 4 (or 5 with Unknown) distinct values — check with a quick
  PivotTable or `=UNIQUE(Table[Region])`.

## 11. Make it repeatable (the real payoff)

Because every step above is recorded, next quarter you:
1. Drop the new export in the same place (or repoint the source).
2. Click **Refresh**.

The 11 cleaning steps re-run in order. That is the workflow. Save the query.

---

## Full M (Advanced Editor reference)

A complete, paste-able version lives in
[`session-1-query.m`](session-1-query.m). Adjust the source path to match the
learner's machine. The decisions (drop vs. flag blanks, error rows) are called
out in comments so you can teach the *judgment*, not just the clicks.
