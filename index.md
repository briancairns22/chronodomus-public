---
layout: default
title: CairnsHx — Universal Patient-Owned Health Record
permalink: /
---

# CairnsHx

**Universal Patient-Owned Personal Health Record**

CairnsHx helps you see all your health records in one place — VA and civilian. View medications, lab results, conditions, and allergies from every provider. Share records securely with new doctors. Carry emergency medical info in Apple or Google Wallet. Track VA disability claims evidence.

Built by a 100% disabled Veteran and UCSF nursing student. Free for all Veterans.

**Cairns Care LLC** | State of Nevada

---

## Documentation

- [Terms of Service](/terms/)
- [Privacy Policy](/privacy/)
- [Frequently Asked Questions](/faq/)
- [How to Sign Up](/signup/)
- [VA Lighthouse API Use Cases](/va-lighthouse-use-cases/)

## Contact

- Email: [briancairns22@gmail.com](mailto:briancairns22@gmail.com)
- Company: Cairns Care LLC, State of Nevada
- Website: [cairnshx.com](https://cairnshx.com)

## Features

- Aggregate health records from VA and civilian providers via FHIR R4
- Emergency medical identity in Apple/Google Wallet (NFC, QR)
- Share records with providers via time-limited secure links
- Enhanced privacy protections for sensitive record categories per 42 CFR Part 2
- Medication reconciliation and safety alerts
- Insurance benefit guidance
- VA disability claims evidence packaging
- Caregiver dashboard with disease-specific guidance
- Post-discharge safety monitoring with wound tracking

## Platforms

iOS (iPhone, iPad), macOS, Web Browser. Android planned.

## Compliance

- HIPAA compliant with AES-256-GCM encryption at rest, TLS 1.2+ in transit
- 42 CFR Part 2 automatic segmentation for sensitive record categories
- Section 508 accessible
- SDVOSB eligible (Service-Disabled Veteran-Owned Small Business)
- WOSB eligible (Woman-Owned Small Business — 51% Member, Jade Cairns)

## Architecture posture

- All third-party EHR access is **patient-mediated** via SMART-on-FHIR R4 OAuth (Epic, Oracle Cerner, Athena, eClinicalWorks, VA Lighthouse, etc.)
- **No server-side trust-framework pulls. No HTML scraping.** Each user authenticates directly against their EHR; CairnsHx never sees portal passwords.
- Read-only scopes only at general availability.
