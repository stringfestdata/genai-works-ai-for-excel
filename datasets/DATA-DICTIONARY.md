# Data Dictionary — AI for Excel

All datasets are **synthetic**. Any resemblance to real companies, people, or
vendors is coincidental. Use them freely in class and in your own practice.

The data is intentionally *imperfect* in places. That is the point: the messes
below are the same ones you hit in real exports, and they are what the cleaning
and AI workflows in this course are built to fix.

---

## Session 1 — `session-1/`

### `regional-sales-RAW.csv` and `regional-sales-RAW.xlsx`
A quarterly sales export (Q1 2025) for a fictional office-furniture company.
Same content in both formats — use whichever your learners prefer to connect to.

| Column | Type (intended) | Notes |
|---|---|---|
| Order ID | Text | `SO-####`. Unique per order, but a few exact duplicate rows exist. |
| Order Date | Date | **Mixed formats**: `2025-01-07`, `2/13/2025`, `Feb 24 2025`, `24-Feb-25`. |
| Region | Text | **19 spellings** of 4 real regions: `North`, `north`, `N.`, `Northern`, ` North`, etc. A few are blank. |
| Sales Rep | Text | Some written `First Last`, some `Last, First`. |
| Product | Text | Mixed case (`HARBOR CONFERENCE TABLE`), some with trailing spaces. |
| Category | Text | Clean. Lighting, Storage, Seating, Desks, Tables. |
| Quantity | Whole number | Stored as text; 3 blanks; one spelled-out value (`two`). |
| Revenue | Currency | Stored as **text** with `$` and thousands separators (`"$1,392.20"`). |

**Built-in messes to clean:**
- 3 junk rows at the top (report title, "Generated…", a blank line) before the header.
- A trailing `TOTAL` row mixed in with the data.
- 3 exact duplicate rows.
- 4 rows with a blank Region; 3 with blank Quantity; 1 non-numeric Quantity.

**Reference figures (after a correct clean):**
- ~248 order rows after removing the 3 exact duplicates.
- Total revenue ≈ **$555,000** across all regions.
- Region split (rough): West highest, then North, South, East.

---

## Session 2 — `session-2/budget-vs-actual.xlsx`

Three sheets. Clean and analysis-ready (so the focus is on formulas, Python,
and summaries — not cleaning).

### `BudgetVsActual` (Excel Table: `BudgetActual`)
Monthly budget vs. actual spend by department, Jan–Jun 2025.

| Column | Type | Notes |
|---|---|---|
| Department | Text | Marketing, Sales, Operations, R&D, Customer Success |
| Month | Text | Jan–Jun |
| Budget | Currency | Planned spend |
| Actual | Currency | Realized spend |

**Reference figures:** total variance ≈ **+3.3%** (actual over budget).
Biggest overspend: **R&D (+13%)** and **Marketing (+9%)**. Biggest underspend:
**Customer Success (−9%)** and **Sales (−4%)**. These make good "which
departments ran over?" talking points.

### `Transactions` (Excel Table: `Transactions`)
300 expense line items, Jan–Jun 2025. Clean.

| Column | Type | Notes |
|---|---|---|
| Date | Date | 2025-01-01 → 2025-06-30 |
| Department | Text | Same 5 departments |
| Category | Text | Software, Travel, Contractors, Supplies, Advertising, Events |
| Vendor | Text | 8 vendors |
| Amount | Currency | $120–$9,800 |

### `ReadMe`
In-workbook notes and suggested analyses.

---

## Session 3 — `session-3/` (Capstone source)

Designed for a **repeatable monthly refresh**: combine a folder of monthly
files, join to a vendor lookup, and summarize — so next month's file is picked
up automatically.

### `monthly-expenses/expenses-2025-01.csv`, `-02.csv`, `-03.csv`
Three monthly expense exports with the **same columns**, on purpose, so they
combine cleanly with a Power Query "From Folder" query. Each export is messy in
a slightly different way (simulating different source systems month to month).

| Column | Type (intended) | Notes |
|---|---|---|
| Invoice ID | Text | `INV-####`, unique |
| Date | Date | **Format differs per file**: Jan = `2025-01-02`, Feb = `2/13/2025`, Mar = `13-Mar-2025` |
| Vendor | Text | Casing/leading-space noise (`INITECH CONSULTING`, ` Acme SaaS`) |
| Department | Text | Same 5 departments |
| Amount | Currency | Mixed: some `"$6,272.19"`, some `7535.06` |
| Status | Text | Paid, Pending, Disputed |

**Reference figures:** ~188 invoices total across the 3 files; grand total
≈ **$1.13M** (Jan ≈ $408K, Feb ≈ $333K, Mar ≈ $387K).

### `vendor-master.xlsx` (Excel Table: `VendorMaster`)
Lookup table to enrich the combined data.

| Column | Type | Notes |
|---|---|---|
| Vendor ID | Text | `V-1##` |
| Vendor Name | Text | Clean reference spelling (join target) |
| Spend Category | Text | Software, Travel, Contractors, … |
| Preferred? | Text | Yes / No |

### `monthly-report-START.xlsx`
Starter workbook with instructions for where the refreshed report should land.

---

## A note on using this data with AI tools

These files are safe to paste into any AI assistant — they contain no real or
sensitive information. When you move to **your own** data, follow the rule we
use throughout the course: keep confidential or regulated data out of public AI
tools unless your organization has explicitly approved them. Most of the
techniques here work just as well on a small, anonymized sample.
