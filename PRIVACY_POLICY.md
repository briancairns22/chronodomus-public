---
layout: default
title: Privacy Policy
permalink: /privacy/
---

# Privacy Policy

**CairnsHx — Universal Patient-Owned Health Record**

**Last Updated: April 30, 2026**

---

Cairns Care LLC ("we," "us," "our") operates the CairnsHx platform. This Privacy Policy describes how we collect, use, protect, and share your information when you use our Service.

## 1. Information We Collect

### 1.1 Account Information
- Name, email address, date of birth
- Login credentials (passwords are hashed and salted; we never store plaintext passwords)
- Multi-factor authentication enrollment data
- Account preferences and settings

### 1.2 Health Records from Connected EHR Systems
When you connect your Electronic Health Record (EHR) systems via FHIR R4 APIs, we retrieve:
- Diagnoses and conditions
- Medications and prescriptions
- Allergies and intolerances
- Lab results and vital signs
- Immunization records
- Procedures and surgical history
- Clinical notes and encounter summaries
- Care team and provider information
- Insurance and coverage data

### 1.3 Patient-Entered Data
- Self-reported symptoms, conditions, and health observations
- Personal health notes and annotations
- Emergency contact information
- Advance directives and care preferences
- Caregiver designations and access permissions

### 1.4 Device Health Data
With your explicit consent, we may collect data from:
- **Apple HealthKit**: steps, heart rate, sleep, blood pressure, blood glucose, and other metrics you authorize
- Other device integrations as they become available

We only access the specific HealthKit data categories you authorize and never access data without your permission.

### 1.5 Usage and Device Data
- Device type, operating system, and browser information
- App version and feature usage analytics (anonymized)
- Error logs and crash reports (no health data included)
- IP address (used for security and fraud prevention only, not stored long-term)

## 2. How We Use Your Information

We use the information we collect to:

- **Aggregate and display your health records** in a unified, normalized timeline
- **Provide clinical intelligence** including medication interaction checking, care gap identification, and health trend analysis
- **Generate emergency wallet cards** with your critical health information (allergies, medications, conditions, emergency contacts)
- **Enable record sharing** with providers, caregivers, or others you designate
- **Maintain account security** through authentication, audit logging, and fraud prevention
- **Improve the Service** through anonymized usage analytics
- **Communicate with you** about your account, service updates, and security alerts

We **never** use your health data for advertising or marketing purposes.

## 3. How We Protect Your Information

### 3.1 Encryption
- **At rest**: All health data encrypted with **AES-256-GCM** encryption
- **In transit**: All network communication secured with **TLS 1.2** or higher
- **Backups**: Encrypted with the same AES-256-GCM standard

### 3.2 Authentication and Access Control
- **RS256 JWT** token-based authentication
- **Multi-factor authentication (MFA)** support
- Role-based access control with principle of least privilege
- Automatic session expiration and token rotation

### 3.3 Audit Logging
- All access to health records is logged with timestamp, user, action, and resource
- Audit logs are tamper-resistant and retained per HIPAA requirements
- You can request a copy of your audit log at any time

### 3.4 Infrastructure Security
- Regular security assessments and vulnerability scanning
- Incident response procedures in place
- Business Associate Agreements (BAAs) with all infrastructure vendors handling PHI

## 4. 42 CFR Part 2 Protections

CairnsHx provides enhanced protections for sensitive health information categories as required by **42 CFR Part 2** and related regulations:

- **Mental health** records
- **Substance use disorder** records
- **HIV/AIDS** status and related records
- **Genetic** information
- **Reproductive health** records

These categories are **firewalled by default**, meaning:

- They are stored in segregated, additionally protected data segments
- They are **excluded from general record sharing** unless you explicitly and specifically consent to share each category
- Sharing consent for these categories must be **separate from general sharing consent**
- You can revoke consent for any sensitive category at any time, effective immediately

## 5. Data Sharing

We share your health information **only with your explicit consent**. When you choose to share:

- **Consent is specific**: You choose exactly which data categories to share
- **Consent is time-limited**: Sharing permissions expire after the period you set
- **Consent is revocable**: You can revoke sharing access at any time, effective immediately
- **Access is logged**: All third-party access to your shared records is recorded in your audit log

We will disclose information without your consent only when required by law (e.g., court order, mandatory reporting requirements).

## 6. De-Identified Data

We may use de-identified health data (data from which all 18 HIPAA identifiers have been removed per the Safe Harbor method) for:

- Aggregate health trend research
- Product improvement and feature development
- Public health analytics

**This requires your explicit opt-in consent.** You may:

- Choose whether to participate through your account settings
- Withdraw your consent at any time, effective immediately for all future use
- View a summary of how de-identified data has been used

## 7. Third-Party Services

CairnsHx integrates with the following third-party services to provide core functionality:

| Service | Purpose | Data Exchanged |
|---------|---------|----------------|
| **VA Lighthouse API** | Retrieve VA health records | FHIR R4 health resources (with patient authorization via OAuth) |
| **NPPES NPI Registry** | Verify provider identities | Provider name, NPI number (public data) |
| **RxNorm / RxNav (NIH)** | Medication normalization and interaction checking | Medication names and RxCUI codes (no patient identifiers) |
| **ClinicalTrials.gov** | Clinical trial matching | Condition names only (no patient identifiers) |
| **OpenFDA** | Drug safety and recall alerts | Drug names (no patient identifiers) |

We do not share your individually identifiable health information with any of these services except as described above.

## 8. Data Retention and Deletion

### 8.1 Active Accounts
Health records are retained as long as your account is active and you continue to use the Service.

### 8.2 Dormant Accounts
If your account has had no login activity for **twelve (12) consecutive months**, we will classify it as dormant. Before any action is taken:
- We will send you **three (3) email notifications** at 10 months, 11 months, and 12 months of inactivity
- After the 12-month dormancy classification, your data will be retained for an **additional six (6) months** (18 months total from last activity) before permanent deletion begins
- You may reactivate your account at any time during the dormancy period by logging in
- If you do not reactivate, deletion will proceed as described in Section 8.3

### 8.3 Account Deletion — Your Right to Complete Data Removal
You may request deletion of your account and all associated data at any time. Upon receiving your deletion request:

1. **Confirmation**: We will send you a confirmation email within **24 hours** acknowledging your request
2. **Export opportunity**: You will have **14 days** from confirmation to export your complete health record in standard formats (FHIR R4 JSON, C-CDA XML, PDF, CSV) before deletion begins
3. **Complete deletion**: We will permanently and irreversibly delete **100% of your personally identifiable data** within **45 days** of your request (or 45 days after the 14-day export window, whichever is later). This includes:
   - All health records from connected EHR systems
   - All patient-entered data, notes, and annotations
   - All emergency wallet card data
   - All sharing permissions and consent records
   - All caregiver and proxy access records
   - Your account credentials and profile information
   - All device health data (HealthKit, wearable integrations)
4. **Audit log retention**: Per HIPAA regulations (45 CFR 164.530(j)), audit logs documenting who accessed your records will be retained for **six (6) years** from the date of your deletion request. These logs contain only timestamps, user IDs, and action types — they do **not** contain your health data.
5. **De-identified data**: If you previously opted into de-identified data research (Section 6), data that has already been de-identified and aggregated cannot be traced back to you and may remain in aggregate datasets. No new de-identified data will be generated from your records after deletion.
6. **Verification**: Upon completion of deletion, we will send you a final confirmation email certifying that 100% of your identifiable data has been permanently destroyed.

### 8.4 Backup Destruction
Deleted data may persist in encrypted backups for up to **30 additional days** after the 45-day deletion window. These backups are encrypted with AES-256-GCM and are automatically purged on a rolling 30-day cycle. After this period, no copy of your data exists in any Cairns Care LLC system.

## 9. Children's Privacy

CairnsHx is **not intended for children under 13 years of age**. We do not knowingly collect personal information from children under 13. If we discover that a child under 13 has provided us with personal information, we will delete it promptly.

For children aged 13-17, a parent or legal guardian must create and manage the account and consent to these terms on the minor's behalf, in compliance with **COPPA** (Children's Online Privacy Protection Act) and applicable state laws.

## 10. Your Rights

You have the right to:

- **Access**: View all health data we hold about you at any time
- **Export**: Download your complete health record in standard formats (FHIR R4 JSON, C-CDA, PDF)
- **Correct**: Request corrections to inaccurate health data
- **Delete**: Request deletion of your account and data (subject to HIPAA retention requirements)
- **Restrict sharing**: Control exactly who can access your records and what they can see
- **Audit**: Request a log of all access to your health records
- **Portability**: Transfer your data to another service at any time
- **Withdraw consent**: Revoke any previously granted consent at any time

To exercise any of these rights, use your account settings or contact us directly.

## 11. Changes to This Privacy Policy

We may update this Privacy Policy periodically. When we make material changes:

- We will notify you via **email** at least **30 days** before the changes take effect
- The updated policy will be posted with a new "Last Updated" date
- Continued use of the Service after the effective date constitutes acceptance

## 12. Contact Us

For questions or concerns about this Privacy Policy or our data practices:

**Cairns Care LLC**
State of Nevada
Email: briancairns22@gmail.com

For HIPAA-related inquiries or to file a complaint, you may also contact the **U.S. Department of Health and Human Services Office for Civil Rights** at [https://www.hhs.gov/ocr](https://www.hhs.gov/ocr).

## 13. Data Breach Notification

Cairns Care LLC follows the HIPAA Breach Notification Rule (45 CFR 164.400-414). In the event of a breach of your unsecured Protected Health Information (PHI), here is exactly what will happen:

### 13.1 What Counts as a Breach
A breach is any unauthorized acquisition, access, use, or disclosure of your health information that compromises its security or privacy. This includes but is not limited to: unauthorized access to our systems, accidental exposure of health records, loss or theft of devices containing your data, or unauthorized sharing of your records.

### 13.2 What We Will Do
1. **Investigate immediately**: Upon discovering a potential breach, we will conduct a thorough investigation within **24 hours** to determine the nature and scope of the incident
2. **Contain the breach**: We will take immediate technical steps to stop the unauthorized access and prevent further exposure
3. **Notify you directly**: We will send you a **written notification within 60 days** of discovering the breach (as required by HIPAA), by email and postal mail. This notification will include:
   - A plain-language description of **what happened** and when
   - The **types of information** that were involved (e.g., medications, diagnoses, lab results)
   - **Steps you should take** to protect yourself (e.g., monitoring credit reports if financial info was involved, contacting providers if clinical data was exposed)
   - What **we are doing** to investigate, mitigate harm, and prevent future breaches
   - **Contact information** for our Privacy Officer so you can ask questions
4. **Notify HHS**: We will report the breach to the U.S. Department of Health and Human Services as required by law
5. **Public notification**: If a breach affects 500 or more individuals, we will also notify prominent media outlets serving the affected area, as required by HIPAA

### 13.3 What You Can Do
- You may **request a copy of your audit log** at any time to see who has accessed your records
- You may **file a complaint** with Cairns Care LLC or the HHS Office for Civil Rights
- You may **revoke sharing permissions** immediately if you believe your shared data has been compromised
- You may **delete your account** at any time (see Section 8.3)

### 13.4 Our Commitment
We will never attempt to hide, minimize, or delay notification of a breach. Transparency is a core value. If your data is compromised, you will know.

## 14. Business Transfer — Your Rights If We Are Sold or Acquired

If Cairns Care LLC is sold, merged with another company, or substantially all of its assets are acquired by another entity:

### 14.1 Your Choices
You will have the following options, clearly communicated **at least 60 days before** any transfer of your data to a new entity:

1. **Continue with the new entity**: Your account and data transfer to the acquiring company under the same privacy protections described in this policy. The acquiring company must agree to honor this Privacy Policy or provide protections that are equally or more protective.
2. **Export and delete**: You may export your complete health record and request deletion of 100% of your data before the transfer occurs (following the process in Section 8.3). Your data will not be transferred to the acquiring company.
3. **Close your account**: You may close your account entirely. We will delete 100% of your data within 45 days and your data will not be part of any business transfer.

### 14.2 Our Obligations
- We will **never sell your individually identifiable health data** as a standalone asset. Your health records are not a product.
- Any acquiring entity must execute a **Business Associate Agreement (BAA)** and agree to comply with HIPAA before receiving any Protected Health Information
- If the acquiring entity's privacy practices are materially less protective than this policy, we will notify you and provide the export/delete option before any transfer
- De-identified, aggregate data (which cannot be traced to any individual) may be included in business assets without individual consent, as it contains no personally identifiable information

## 15. HIPAA Notice

Cairns Care LLC is committed to full compliance with the **Health Insurance Portability and Accountability Act (HIPAA)**, including the Privacy Rule, Security Rule, and Breach Notification Rule.

- We maintain a **Business Associate Agreement (BAA)** with every infrastructure vendor and subcontractor that handles Protected Health Information (PHI)
- We conduct regular **risk assessments** as required by the HIPAA Security Rule
- We maintain **policies and procedures** for breach identification, notification, and mitigation as described in Section 13
- Our workforce members receive **HIPAA training** and are bound by confidentiality obligations

If you believe your health information privacy has been violated, you have the right to file a complaint with Cairns Care LLC or directly with the HHS Office for Civil Rights.

---

*Copyright 2026 Cairns Care LLC. All rights reserved.*
