# Licensing options — Masood decides, this page does not

**In one line:** before this repository can go public, someone has to pick a licence — the rules that say what other people are allowed to do with it. That is Masood's call. This page lays out two plain choices so he can pick one; it does not pick for him, and no `LICENSE` file has been added yet.

A "licence" is just a signed permission slip: it tells a stranger who finds this repository what they may and may not do with what's inside — copy it, change it, use it in their own product, or none of the above.

## Option A — Open: documents under CC BY 4.0, example code under Apache 2.0

| | |
|---|---|
| **What it covers** | Two licences, one for each kind of content: **CC BY 4.0** for the write-ups (README, LESSONS, requirements, findings, the SUMMARY pages) and **Apache 2.0** for the runnable code (the `10-src/` firmware and test code, the `tools/*.cjs` and `.py` helper scripts). |
| **What it allows** | Anyone can read, copy, adapt and reuse this material — including in their own commercial work — as long as they credit Ejadah AI Labs (CC BY 4.0's one condition) and, for the code, keep the licence notice and state what they changed (Apache 2.0's conditions). Apache 2.0 also gives users an explicit patent licence, so no one can later be sued over patents for using the code as given. |
| **What it does not allow** | Neither licence makes Ejadah AI Labs promise the code works, gives a warranty, or accepts liability if something built on it fails. |
| **Effect on Sanad itself** | Only this dogfood repository's *output* (the fridge-monitor documents and example code) is licensed. Sanad's own source code and its `picture.css` stay private — they are not covered here and are not being open-sourced by this choice. |

## Option B — Closed: all rights reserved, with a viewing licence

| | |
|---|---|
| **What it covers** | Everything in the repository — documents and code alike — stays "all rights reserved" (the normal default: nobody may copy or reuse it) with one added permission, a **viewing licence**, that lets people read the repository and its history on GitHub. |
| **What it allows** | Anyone can browse, read, and fork the repository for personal reading and non-commercial evaluation of Sanad's capabilities — for example, a prospective customer checking our claims. |
| **What it does not allow** | Nobody may copy the documents or code into their own product, redistribute it, or build on it commercially, without asking Ejadah AI Labs first. |
| **Effect on Sanad itself** | Same protection as today, just visible: people can see how Sanad performed on this example without being able to take the example and reuse it. |

## Third-party notices — needed either way

Whichever option is picked, the repository uses a few outside tools and one outside specification, and their names need to be credited (never their full licence text copied in — see `THIRD-PARTY-NOTICES.md`):

- **Unity** — a C unit-testing framework (used in `10-src/test/unity/`)
- **GoogleTest** — a C++ unit-testing framework (referenced in the run 5 unit-test ADR)
- **ESP-IDF** — Espressif's development kit for the ESP32 microcontroller family (the firmware target across all runs)
- **OMG SysML v2** — the Object Management Group's systems-modelling language and its pilot implementation/library, used for every architecture picture

## What I did not decide

- Which option to pick (A, B, or something else) — owner decision.
- Whether to add a `LICENSE` file at all before or after the repository goes public — owner decision.
- The exact wording of the copyright line (which year, which legal entity name) — owner decision, since it may have legal weight.
