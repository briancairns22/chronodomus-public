# Contributing to chronodomus-public

## Purpose of this repository

This repo is **intentionally public** on GitHub. It exists to host
user-facing legal and informational documents that must be accessible
via a public URL:

- Terms of Service
- Privacy Policy
- Frequently Asked Questions
- Signup Guide
- Product README (high-level user-facing feature list)

These documents are linked from:
- Apple App Store privacy policy field (required by Apple guidelines)
- Google Play Store data safety disclosure
- In-app "View Privacy Policy" and "Terms of Service" links
- Marketing pages

If these URLs break, Cairns Care LLC products may be removed from
app stores or be out of compliance.

## ⚠️ IP-CLEAN POLICY — read before every commit

This repository is the **only public-facing repo** in the Cairns Care
LLC portfolio (as of 2026-04-20). Every other product repo is private.
Because this repo is public, **no intellectual property may enter it.**

### What is never allowed in this repo

1. **Patent filing IDs** — `CCL-XX-NNN` (e.g., CCL-HX-002, CCL-RX-016, CCL-DX-002). These identifiers reveal the existence and scope of provisional/utility filings.
2. **Trade-secret register IDs** — `TS-XX-NNN` (e.g., TS-RX-001, TS-DX-003).
3. **Algorithm names or specific method descriptions** — e.g., "MultiChannelBOCPD hazard priors," "HIGH_SEVERITY_PTS tuple," "discordance matrix," "SWoL matrix," "Youden-J grid," "posture-titration weights," "OFPD phenotype formula," "7-family cross-domain correlation library," "Merkle accumulator state," "HSM key ceremony."
4. **Internal repo paths** — e.g., `backend/services/part2_firewall/`, `engine/cairnsdx_engine/`, `validation/trade_secret/`, `Everdiem/TradeSecret/`.
5. **Specific numeric parameters or thresholds** tied to patented methods (e.g., "0.910 coverage at 0.90," "20,001 bit-identical matches," "5,971 SWoL pairs," "3,847-pair matrix").
6. **Training data sources** for ML models (e.g., specific dataset names, sample sizes, curation rules).
7. **Validation metrics tied to unpublished claims** (e.g., sensitivity/specificity numbers from unpublished studies).
8. **Source code** of any kind — this repo is docs only.
9. **References to regulatory submission content** not yet filed (Q-Sub, 510(k), IDE, etc.).
10. **References to SBIR or grant application specifics** (specific aims, innovation statements).

### What is allowed

- User-facing **feature names** at a high level (e.g., "medication interaction alerts," "emergency wallet card," "42 CFR Part 2 protection"). Feature names alone do not disclose how the feature works.
- Generic compliance statements (HIPAA, 42 CFR Part 2, Section 508, AES-256-GCM encryption, TLS 1.2+).
- User-facing platform descriptions (iOS, macOS, web).
- Standard-body references (FHIR R4, C-CDA, VA Lighthouse API, Epic MyChart).
- Contact information, company address, legal entity name.
- Pricing tiers at a user-facing level.

When in doubt, ask: **would a competent competitor learn more about HOW our product works than they could by installing and using the app?** If yes, the content does not belong here.

## Review process

1. **Before every commit**, run `bash scripts/ip_scan.sh` locally.
   The script scans for the forbidden patterns listed above and exits
   non-zero if any hit is found.
2. **Every PR** is scanned by `.github/workflows/ip-scan.yml` which
   runs the same script. A failing scan blocks merge.
3. **Quarterly review** by Brian Cairns: open every file and read
   end-to-end, checking for drift (e.g., a Terms of Service update
   that inadvertently names an internal method).

## How to update the ip_scan.sh allowlist

If a legitimate content update trips the scanner (e.g., the word
"conformal" appearing in a non-IP context), the script can be updated
to exclude that specific false-positive. DO NOT exclude whole
patterns — exclude specific strings. Every exclusion must be
explained in a commit message.

## How to add a new file

1. Draft locally.
2. Run `bash scripts/ip_scan.sh`. Fix any hits.
3. Have someone else (or yourself after a ≥24-hour break) read the
   file front to back, asking "is any of this unique to our
   implementation?"
4. Commit + push.

## Repo is public — the audit trail is public too

Every commit message, every diff, every historical file version is
publicly visible. Do NOT put anything sensitive in a commit message
(e.g., "removing patent disclosure from ToS" is a terrible commit
message because it tells the world the ToS previously disclosed a
patent). Commit messages must also be IP-clean.

---

*Governance: `~/cairns-care-business/legal/trade_secret_protocol.md`.
Last updated: 2026-04-20.*
