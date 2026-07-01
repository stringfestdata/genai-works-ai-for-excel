# AI for Excel: Automate the Spreadsheet Work That Eats Your Week

This repository contains course materials for **AI for Excel: Automate the Spreadsheet Work That Eats Your Week**, a practical course for Excel users who want to use AI and modern Excel tools to reduce manual spreadsheet work.

The course is designed for finance, accounting, operations, and business professionals who live in Excel and want hands-on ways to clean data, write formulas, summarize reports, and build repeatable workflows with less copying, pasting, and guesswork.

No coding background is required.

## Course Overview

Most Excel users are doing far more by hand than they need to. This course shows how to use AI and modern Excel features to work more efficiently on common spreadsheet tasks, including:

* Cleaning messy data
* Writing and troubleshooting formulas
* Summarizing reports
* Using Python in Excel for analysis
* Building repeatable workflows with Power Query
* Deciding when to use Copilot, Python in Excel, Power Query, or a general AI assistant

The focus is not on using AI as a gimmick. The goal is to build practical workflows that save time, reduce errors, and make spreadsheet work easier to maintain.

By the end of the course, you will have built an AI-assisted Excel workflow that you can reuse and adapt for your own work.

## Who This Course Is For

This course is intended for:

* Financial analysts
* FP&A professionals
* Accountants
* Operations managers
* Business analysts
* Excel power users
* Professionals who want practical AI use cases inside everyday spreadsheet work

You do not need prior AI experience or a programming background. You should be comfortable working in Excel with basic formulas and spreadsheets.

## Tools Used

The course uses a mix of Microsoft Excel features and general-purpose AI tools, including:

* Microsoft Excel
* Power Query
* Copilot in Excel
* Python in Excel
* ChatGPT, Claude, or another general AI assistant

A Microsoft 365 subscription is recommended for following along with Copilot in Excel and Python in Excel. Power Query is built into modern versions of Excel.

## Learning Outcomes

By the end of the course, you should be able to:

* Use AI assistance to plan and improve a recurring spreadsheet workflow
* Clean messy data using Power Query
* Use Copilot and Python in Excel to support formulas, summaries, and analysis
* Decide which tool is best suited for a given Excel task
* Recognize where AI-generated output needs review, correction, or supervision
* Build a reusable reporting or data-cleaning workflow in Excel

## Course Structure

The course is organized around three main sessions.

### Session 1: The Modern Excel + AI Landscape

Topics include:

* What AI can and cannot do well in Excel
* Where Copilot, Python in Excel, Power Query, and general AI assistants fit
* Setting up a practical AI-assisted Excel workflow
* First data-cleaning exercise using Power Query and AI assistance

Practice work:

* Clean a provided messy dataset
* Document the steps used to make the workflow repeatable

### Session 2: Formulas, Analysis, and Summaries

Topics include:

* Using AI to write, explain, and troubleshoot Excel formulas
* Using Python in Excel for analysis
* Asking better questions of AI tools
* Comparing Copilot, Python in Excel, and general AI assistants for analysis tasks

Practice work:

* Reproduce an analysis from class
* Adapt the workflow to a dataset of your own or a provided practice file

### Session 3: Build and Ship a Reusable Workflow

Topics include:

* Turning one-off spreadsheet work into a repeatable process
* Building an AI-assisted reporting or cleanup workflow
* Common failure points and how to review AI output
* Capstone project guidance

Practice work:

* Complete a reusable Excel workflow
* Share or document what the workflow does, what tools it uses, and where human review is still needed

## Capstone Project

The final project is a working AI-assisted Excel workflow built on your own data.
It is the point of the course, not optional extra credit. Full details and the
grading rubric are in `Session 3 - Build & Ship a Reusable Workflow/Capstone Brief.docx`.

**How it works:**

* **Started in Session 3** — class reserves time to begin building on your own (anonymized) data.
* **Finished on your own** in the days after Session 3.
* **Submitted by posting in the Slack `#capstones` channel** by the deadline (suggested: one week after Session 3) — your workbook (or a short screen recording), your run-book, and one line on where you still review the AI by hand.
* **Not presented live** — there is no fourth session; sharing happens asynchronously in Slack, with peer feedback encouraged. (An optional voluntary "demo day" call is up to the instructor.)
* **Graded against four criteria:** it repeats, AI was used well, it's documented, and you understand it.

Examples: a monthly reporting refresh, a repeatable data-cleaning pipeline, a
summary report from raw data, or a formula troubleshooting and documentation
workflow. The project should show you can use AI and modern Excel to reduce
manual work while still reviewing and understanding the results.

## How This Repository Is Organized

Each session has **two source-of-truth docs**: a **Facilitator Guide** (run the
session from this) in `Instructor Notes`, and a **Participant Guide** (learner
companion: demo recap + their exercise) in the session folder. Shared references
sit in `Course Overview`.

```
Instructor Notes/                        (instructor docs)
   Session 1 - Facilitator Guide.docx    RUN THE SESSION FROM THIS: demo (you) →
   Session 2 - Facilitator Guide.docx      practice (them) → regroup, with click-by-
   Session 3 - Facilitator Guide.docx      click steps, targets, fillers, Copilot aside
   Course Logistics & Prep.docx          course-level logistics, prep, community
   Read-Aloud Scripts.docx               per-slide delivery scripts
   Slack and Logistics.docx              running the cohort + Slack playbook

Course Overview/                         (shared references, all sessions)
   Prompt Cheat Sheet.docx               copy-paste prompts for every tool
   Data Dictionary.docx                  what every dataset contains

Session 1 - The Modern Excel + AI Landscape/
   Participant Guide.docx                learner companion: demo recap + exercise
   Session 1 - Solution (Power Query).docx   worked answer (instructor key)
   Session 1 - Power Query M Code.m      paste-ready query
   Data/                                 regional-sales-RAW.csv (demo) +
                                         expense-reimbursements-RAW.csv (your turn)

Session 2 - Formulas, Analysis & Summaries/
   Participant Guide.docx
   Session 2 - Solution (Formulas & Python).docx
   Data/                                 budget-vs-actual.xlsx (demo) +
                                         sales-quota-vs-actual.xlsx (your turn)

Session 3 - Build & Ship a Reusable Workflow/
   Participant Guide.docx
   Capstone Brief.docx                   the final project + rubric
   Session 3 - Solution (Reusable Workflow).docx
   Data/                                 monthly-expenses/ + vendor-master (demo);
                                         your-turn-store-sales/ + store-master (your turn)
```

Slides are delivered separately in the GenAI Works Academy "AI for Excel Slides"
file. All datasets are synthetic.

## Suggested Workflow

To get the most out of the materials:

1. Start with the session materials in order.
2. Complete the provided exercises before adapting them to your own data.
3. Use the prompts and examples as starting points, not final answers.
4. Review all AI-generated output carefully.
5. Build one workflow that solves a real recurring spreadsheet problem for you.

## About the Instructor

George Mount is a Microsoft Excel MVP and analytics author. He is the author of *Advancing into Analytics* and *Modern Data Analytics in Excel*, both published by O'Reilly, and has taught Excel, analytics, and AI-powered productivity to hundreds of thousands of learners through online courses, corporate training, and live workshops.

He helps finance and operations professionals modernize how they work in Excel using Power Query, Python in Excel, Copilot, and other AI-assisted tools.

LinkedIn: https://www.linkedin.com/in/gjmount/

## Notes on AI Use

AI tools can be powerful assistants, but they are not replacements for judgment.

Throughout this course, you are encouraged to:

* Check formulas before relying on them
* Validate summaries against the source data
* Understand each workflow before reusing it
* Treat AI output as a draft, not as final truth
* Keep sensitive or confidential data out of public AI tools unless your organization has approved their use

The goal is not to make Excel a black box. The goal is to make your work faster, clearer, and easier to repeat.

## License

Unless otherwise noted, the materials in this repository are provided for educational use.

Please do not redistribute course materials as your own training program or commercial product without permission.
