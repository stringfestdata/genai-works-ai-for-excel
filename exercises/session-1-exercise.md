# Session 1 — Exercise: Clean a Messy Export (and make it repeatable)

**Time:** 30–45 minutes · **Tools:** Power Query + your AI assistant
**File:** `datasets/session-1/regional-sales-RAW.csv`
(an `.xlsx` version is in the same folder if you prefer)

You watched this in class. Now do it yourself — that's where it sticks.

---

## The task

Turn the raw quarterly sales export into **one clean table you can trust**, built
from recorded steps so next quarter's file cleans itself.

A correct result has:
- The junk rows at the top and the `TOTAL` row at the bottom **removed**
- `Order Date` as a real **Date**
- `Region` reduced to exactly **4 values** (North, South, East, West)
- `Sales Rep` consistently `First Last`
- `Product` trimmed and consistently cased
- `Quantity` a **whole number**; `Revenue` a **decimal number** (no `$`, no commas)
- **No duplicate rows**

**Targets to check your work:** about **248 rows** and total `Revenue` ≈ **$555,000**.

---

## Steps (you don't need to memorize these — Power Query records them)

1. **Connect, don't paste.** `Data ▸ Get Data ▸ From Text/CSV` → pick the file →
   **Transform Data**.
2. Remove the 3 junk rows at the top; **Use First Row as Headers**.
3. `Trim` and `Clean` the text columns (Region, Sales Rep, Product).
4. **Use AI here.** Paste the messy Region values into ChatGPT/Claude and ask for
   a Power Query step that maps them all to North/South/East/West. **Read the code
   before you trust it.** (See the prompt cheat sheet.)
5. Fix `Sales Rep` (`Last, First` → `First Last`) with **Column From Examples**.
6. `Revenue`: remove `$` and `,`, set type **Decimal Number**. `Quantity`: set type
   **Whole Number**, then handle the row that says `two` (Remove Errors) and the blanks.
7. Filter out the `TOTAL` row; **Remove Duplicates**; set `Order Date` to **Date**.
8. **Close & Load.** Then change nothing and click **Refresh** — watch it re-run.

Stuck? The full walkthrough and M code are in
`solutions/session-1-power-query-solution.md`. Try first, peek second.

---

## Submit (required)

Post in the course Slack channel:
1. A **screenshot** of your clean table showing the **row count** and the
   **total Revenue**.
2. **One sentence** on a decision you made — for example, how you handled the
   blank Region rows (drop them? flag them? why?). There's no single right answer;
   we want your reasoning.

## Stretch (optional, recommended)

Run the same clean on a **small, anonymized sample of your own messy data**. Note
one thing AI got wrong or one step that didn't translate, and bring it to
Session 2.

> **Data safety:** keep confidential or regulated data out of public AI tools
> unless your organization has approved them. A 10–20 row anonymized sample is
> plenty to practice on.

## Self-check

- [ ] My row count is ~248 and total Revenue is ≈ $555K
- [ ] `Region` shows exactly 4 (or 5 with an "Unknown" bucket) distinct values
- [ ] I clicked **Refresh** and the steps re-ran with no manual edits
- [ ] I can explain why I connected to the file instead of pasting it
