# Frequently Asked Questions

**continuED — Universal Patient-Owned Health Record**

---

## General

### What is continuED?

continuED is a **universal, patient-owned Personal Health Record (PHR)** platform. It connects to your existing health systems (hospital portals, VA, clinics) and pulls all of your medical records into one unified, portable record that you own and control. Instead of logging into five different patient portals to piece together your health history, continuED gives you a single, complete view — with clinical intelligence features like medication interaction checking, emergency wallet cards, and care gap identification.

### Is continuED free?

continuED offers a **free tier** that includes core record aggregation and basic features. Premium features — including advanced clinical intelligence, unlimited EHR connections, and priority support — are available through a paid subscription. Pricing details are available at signup.

### Who built continuED?

continuED is built by **Cairns Care LLC**, a Nevada-based company founded by Brian Cairns, a DNP (Doctor of Nursing Practice) student specializing in Psychiatric Mental Health at UCSF. The platform was designed from a clinical perspective by someone who understands both the technology and the healthcare system's shortcomings in patient data access.

### Does continuED replace my doctor?

**No.** continuED is an informational tool that helps you organize and understand your health records. It does not diagnose conditions, prescribe treatments, or provide medical advice. Always consult your healthcare provider for medical decisions. Clinical intelligence features (like medication interaction alerts) are informational and should be discussed with your care team.

---

## Health Records

### How does continuED get my health records?

continuED connects to your healthcare providers' EHR (Electronic Health Record) systems using **FHIR R4**, the national standard for health data exchange. When you authorize a connection, we retrieve your records through the same secure APIs that patient portals use. You authenticate directly with each health system — we never ask for your portal passwords.

### Does continuED work with VA records?

**Yes.** continuED integrates with the **VA Lighthouse API**, the Department of Veterans Affairs' official FHIR-based health data platform. If you are a Veteran receiving care through the VA, you can connect your VA health records to continuED with your VA.gov login credentials.

### Can I use continuED if I'm not a Veteran?

**Absolutely.** continuED is a universal PHR — it works with any healthcare system that supports FHIR R4 connections, including Epic MyChart, Cerner/Oracle Health, and hundreds of other health systems. VA integration is one of many supported connections, not a requirement.

### What if I find an error in my records?

If you notice inaccurate information in records pulled from an EHR system, you should contact the originating healthcare provider to request a correction — they are the source of record. Within continuED, you can **annotate** records with corrections or notes, and you can flag discrepancies for your own reference. For patient-entered data, you can edit or correct it directly at any time.

---

## Privacy and Security

### Is my data safe?

Yes. Security is foundational to continuED:

- All data is encrypted at rest with **AES-256-GCM** (the same standard used by the U.S. government for classified information)
- All data in transit is protected by **TLS 1.2+**
- Authentication uses **RS256 JWT tokens** with multi-factor authentication
- Every access to your records is **audit logged**
- We maintain **Business Associate Agreements (BAAs)** with all infrastructure vendors

See our full [Privacy Policy](PRIVACY_POLICY.md) for details.

### Is continuED HIPAA compliant?

**Yes.** Cairns Care LLC maintains full HIPAA compliance including:

- Administrative, physical, and technical safeguards per the HIPAA Security Rule
- Privacy policies and procedures per the HIPAA Privacy Rule
- Breach notification procedures per the HIPAA Breach Notification Rule
- Business Associate Agreements with all vendors handling Protected Health Information
- Regular risk assessments and workforce training

### What about my mental health records?

continuED provides **enhanced protections** for sensitive health information under **42 CFR Part 2**, including mental health, substance use disorder, HIV/AIDS, genetic, and reproductive health records. These categories are:

- **Firewalled by default** — stored in segregated, additionally protected segments
- **Excluded from general sharing** — require separate, specific consent to share
- **Individually controllable** — you decide which sensitive categories to include or exclude from any sharing action

Your most sensitive records receive the highest level of protection, automatically.

### Can my data be sold?

**No.** Your individually identifiable health data is **never sold**. Period. We will never sell your health information to advertisers, data brokers, pharmaceutical companies, or any other third party.

De-identified data (with all identifying information removed) may be used for research or product improvement, but **only with your explicit opt-in consent**, and you can withdraw that consent at any time.

---

## Sharing and Access

### Can I share records with my doctor?

**Yes.** continuED lets you share specific portions of your health record with anyone you choose — providers, specialists, caregivers, or family members. Sharing is:

- **Category-specific**: Choose exactly what to share (e.g., medications and allergies, but not mental health records)
- **Time-limited**: Set an expiration on shared access
- **Revocable**: Remove access instantly at any time
- **Audited**: See exactly who accessed what and when

### Can my caregiver access my records?

Yes. continuED supports **caregiver delegation**, allowing you to grant a trusted person access to your health records. You control:

- Which record categories the caregiver can view
- Whether the caregiver can manage appointments or communications on your behalf
- How long the caregiver access lasts
- Caregiver access can be revoked at any time

### What is the emergency wallet card?

The emergency wallet card is a **digital and printable card** containing your critical health information — current medications, active allergies, key diagnoses, emergency contacts, and advance directive status. It is designed for emergency situations where you may be unable to communicate your health history. The card can be:

- Stored in Apple Wallet or Google Wallet
- Printed as a physical card for your wallet
- Accessed via a secure QR code by emergency responders
- Updated automatically as your health record changes

---

## Account Management

### How do I delete my account?

You can delete your account at any time through your account settings. Upon deletion:

1. Your account is immediately deactivated
2. Your data enters a soft-delete state
3. Per HIPAA requirements, certain records and audit logs may be retained for up to six years
4. After the retention period, all data is permanently destroyed

You can **export your complete health record** before deletion.

### How do I export my data?

From your account settings, you can export your complete health record in multiple formats:

- **FHIR R4 JSON** — the standard interoperable format, importable into other health systems
- **C-CDA (XML)** — the Consolidated Clinical Document Architecture format used by many EHRs
- **PDF** — a human-readable summary of your complete health record

Exports include all record categories, annotations, and patient-entered data.

---

## Platform and Compatibility

### What devices does continuED work on?

continuED is available on:

- **iOS** (iPhone and iPad) — native SwiftUI app
- **macOS** — native desktop app
- **Web** — Progressive Web App accessible from any modern browser
- Android support is planned for a future release

All platforms sync in real time, so your records are always up to date regardless of which device you use.

### How is continuED different from Apple Health?

Apple Health is a device-level health data repository focused on fitness and wellness data from your devices and apps. continuED is fundamentally different:

| Feature | Apple Health | continuED |
|---------|-------------|-----------|
| **Clinical records** | Limited FHIR support | Full EHR aggregation across multiple systems |
| **Record normalization** | Raw data from each source | Unified, deduplicated, normalized timeline |
| **Clinical intelligence** | None | Medication interactions, care gaps, trend analysis |
| **Sharing** | None (device-local) | Granular, time-limited, category-specific sharing |
| **Emergency card** | Medical ID (basic) | Comprehensive wallet card with QR access |
| **Sensitive record protections** | None | 42 CFR Part 2 firewall for mental health, substance use, etc. |
| **Data portability** | Apple ecosystem only | FHIR R4, C-CDA, PDF export to any system |

continuED can **import data from Apple HealthKit** (with your permission) to incorporate device health metrics alongside your clinical records.

---

## Troubleshooting

### My EHR connection isn't working. What should I do?

If you are having trouble connecting a health system:

1. **Verify your credentials** — Make sure you are using the correct login for that health system's patient portal
2. **Check the health system's status** — Some systems have maintenance windows; try again later
3. **Ensure the system supports FHIR R4** — Not all health systems have enabled patient-facing FHIR APIs yet
4. **Contact support** — If the issue persists, reach out to us at briancairns22@gmail.com with the name of the health system and any error messages you see

---

*Have a question not answered here? Contact us at briancairns22@gmail.com.*

*Copyright 2026 Cairns Care LLC. All rights reserved.*
