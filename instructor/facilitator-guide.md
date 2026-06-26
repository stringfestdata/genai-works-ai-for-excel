# Facilitator Guide — AI for Excel

Everything you need to run this course live (and to produce clean on-demand
recordings in the same pass). Read this once before Cohort 1; the per-session
run-of-show docs handle the minute-by-minute.

- [Session 1 run-of-show](session-1-run-of-show.md)
- [Session 2 run-of-show](session-2-run-of-show.md)
- [Session 3 run-of-show](session-3-run-of-show.md)

---

## The shape of the course

| | Topic | Live | Async |
|---|---|---|---|
| **Session 1** | The modern Excel + AI landscape; first data clean-up | 90 min | Clean the provided messy file |
| **Session 2** | Formulas, analysis & summaries; which tool when | 90 min | Reproduce one analysis on your own data |
| **Session 3** | Build & ship a reusable workflow; capstone | 90 min | Finish & share the capstone |

Cadence: two sessions in week one, one in week two. The week-two gap gives
learners time to build the capstone with support in Slack.

**The spine of the whole course** is one habit and one pattern:
1. **Connect, don't paste** (a connection refreshes; a paste doesn't).
2. The four-box workflow: **Connect → Clean → Enrich/Summarize → Document.**

Every session points back to these. The capstone is just the four-box pattern on
the learner's own data.

---

## What learners need

- **Required:** Excel (any modern version — Power Query is built in) and a
  general AI assistant (ChatGPT or Claude; free tier is fine).
- **Recommended:** Microsoft 365 with a workbook saved to OneDrive/SharePoint, so
  they can follow the Copilot and Python in Excel segments live.
- **No coding or prior AI experience.** Say this often; it's why they're here.

> **The M365 reality.** A chunk of any cohort won't have Copilot or Python in
> Excel. Design around it: Power Query and the general AI assistant carry the
> core of every session. Flag the Copilot-only / Python-only moments clearly
> ("if you have this, do it with me; if not, watch and replay from the solution
> file"). Nobody should feel stuck. This is built into the slides.

---

## Instructor prep checklist (per session)

- [ ] Open the deck in Presenter View; skim the speaker notes (they're the script).
- [ ] Open the datasets for that session in a **fresh** state (re-download if you
      demoed already — learners should see the mess, not your cleaned version).
- [ ] Have the matching solution file open in a hidden window as a safety net:
      - S1 → `solutions/session-1-power-query-solution.md` (+ `session-1-query.m`)
      - S2 → `solutions/session-2-formulas-python-solution.md`
      - S3 → `solutions/session-3-workflow-solution.md`
- [ ] Have a browser tab with your AI assistant logged in and zoomed up so it's
      readable on a recording.
- [ ] Increase Excel's zoom / font; turn on the cell-cursor highlight if you have it.
- [ ] Confirm screen-share + recording before you start the welcome.
- [ ] Post the day's dataset links and the agenda in Slack before the session.

---

## Running a good live demo (this course lives or dies here)

- **Narrate the why, not just the click.** "I'm connecting instead of pasting
  because…" The clicks are in the solution file; the judgment is what they pay for.
- **Make the AI a character on stage.** Show the prompt, read the response aloud,
  then visibly decide whether to trust it. That modeling is the whole point.
- **Let one thing break on purpose.** The `two` quantity row in S1; the broken
  `SUMIF` in S2; an unmatched vendor in S3. Errors are where trust is built.
- **Check in with the room.** Ask for a "1" in chat when they've caught up before
  you move on. Watch the slowest hands.
- **If you fall behind,** the run-of-show marks what to cut. Protect the live
  demo and the assignment hand-off above all else.

---

## Assessment

- **In-session:** hands-on participation; chat check-ins.
- **Async (S1, S2):** a short Slack post (screenshot + one reflective sentence).
  This is your comprehension check and it seeds the next session.
- **Capstone (S3):** a working, refreshable workflow on the learner's own data,
  graded against the four-criterion rubric in
  [`capstone/capstone-brief.md`](../capstone/capstone-brief.md):
  it repeats, AI was used well, it's documented, the learner understands it.

---

## Community (Slack)

Cadence, channel structure, and prompts to keep it alive are in
[`community/slack-and-logistics.md`](../community/slack-and-logistics.md). The
short version: one channel per cohort, an intro prompt, a per-session "post your
result" thread, and visible instructor presence between sessions.

---

## Tone and guardrails

- This is **practical, not hype.** AI is a strong drafter and explainer and a
  weak source of truth. Repeat the "treat AI output as a draft" line every session.
- **Data safety** is part of the curriculum: keep confidential/regulated data out
  of public AI tools unless the org has approved them; a small anonymized sample
  almost always suffices. Cover it in S1 and reinforce it when learners bring
  their own data in S2/S3.
- Keep examples **generic and finance/ops-flavored** so they transfer to most
  learners' jobs.
