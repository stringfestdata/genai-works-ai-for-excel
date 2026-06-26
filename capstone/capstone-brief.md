# Capstone Brief — Build a Reusable AI-Assisted Workflow

This is the deliverable that outlasts the course: **a working Excel workflow,
built on your own data, that you can run again next month with minimal manual
work.** Not a one-off analysis — a repeatable asset.

---

## The assignment in one sentence

Take a **real, recurring spreadsheet task** you do and rebuild it as a workflow
that follows the four-box pattern from Session 3:

**Connect → Clean → Enrich / Summarize → Document.**

---

## Examples (pick something small and finish it)

- A **monthly reporting refresh** — drop in the new export, hit Refresh, report updates.
- A **repeatable data-cleaning pipeline** — the same messy export, cleaned the
  same way every time.
- A **summary report from raw data** — raw transactions in, a clean summary or
  simple dashboard out.
- A **formula troubleshooting + documentation** workflow — a gnarly workbook made
  understandable and maintainable, with AI-written documentation.

> Don't have ideal data of your own? Use the Session 3 datasets
> (`datasets/session-3/`) and build the monthly spend report end to end. That
> fully satisfies the capstone.

---

## What to build (the four boxes)

1. **Connect** — point at your source (a file, or a folder of recurring files).
   **Connect, don't paste**, so it can be refreshed.
2. **Clean** — use Power Query so the cleaning steps are recorded and re-run on
   refresh. Use AI to draft any tricky transforms — and check them.
3. **Enrich / summarize** — merge a lookup if you need one; summarize with a
   PivotTable or Python in Excel. One source of truth feeds the output.
4. **Document** — have AI draft a short run-book, then **edit it to make it true.**
   Put it in a `README` tab. Name where a human still needs to review.

---

## How to submit

Post in the capstone Slack channel by **`<deadline>`**:
- The **workbook** (or a screen recording / screenshots if you can't share the file).
- Your **run-book** (the README tab is fine).
- **One sentence** on where you still review the AI's output by hand.

Peer feedback is encouraged — reading someone else's workflow is half the learning.

---

## Rubric

You're not graded on size or polish. You're graded on whether it's a real,
trustworthy, repeatable workflow.

| Criterion | What we're looking for | ✓ |
|---|---|---|
| **It repeats** | Refreshing or re-running takes minimal manual work. The "connect, don't paste" habit is visible. | |
| **AI was used well** | AI helped draft formulas, steps, or docs — and you can show where you **checked or corrected** it. | |
| **It's documented** | A short run-book (AI-drafted, human-edited) explains how to run it and what to verify after each run. | |
| **You understand it** | You can explain each step and name where human judgment is still required. | |

**A strong capstone** nails all four: someone else could run it from your
run-book, you can defend every step, and next month is one click (or close).

**Showing where you corrected the AI is a feature, not a confession** — it's
exactly the judgment this course is teaching.

---

## Tips

- **Scope small, finish completely.** A single recurring report done well beats an
  ambitious half-built pipeline.
- **Anonymize.** Keep confidential or regulated data out of public AI tools unless
  your org approved them. A small sample proves the workflow just as well.
- **Use the patterns you already have:** the Session 1 clean, the Session 2
  analysis, and the Session 3 folder-combine are all reusable starting points.
- **Steal the prompts.** The documentation and cleaning prompts in
  `prompts/prompt-cheat-sheet.md` were written for exactly this.
