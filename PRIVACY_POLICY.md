# Privacy Policy

**continuED — Universal Patient-Owned Health Record**

**Last Updated: March 23, 2026**

---

Cairns Care LLC ("we," "us," "our") operates the continuED platform. This Privacy Policy describes how we collect, use, protect, and share your information when you use our Service.

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

continuED provides enhanced protections for sensitive health information categories as required by **42 CFR Part 2** and related regulations:

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

continuED integrates with the following third-party services to provide core functionality:

| Service | Purpose | Data Exchanged |
|---------|---------|----------------|
| **VA Lighthouse API** | Retrieve VA health records | FHIR R4 health resources (with patient authorization via OAuth) |
| **NPPES NPI Registry** | Verify provider identities | Provider name, NPI number (public data) |
| **RxNorm / RxNav (NIH)** | Medication normalization and interaction checking | Medication names and RxCUI codes (no patient identifiers) |
| **ClinicalTrials.gov** | Clinical trial matching | Condition names only (no patient identifiers) |
| **OpenFDA** | Drug safety and recall alerts | Drug names (no patient identifiers) |

We do not share your individually identifiable health information with any of these services except as described above.

## 8. Data Retention

- **Active accounts**: Health records are retained as long as your account is active
- **Account deletion**: Upon your request, we initiate deletion of your data
- **HIPAA retention**: Per HIPAA regulations (45 CFR 164.530(j)), certain records and audit logs may be retained for up to **six (6) years** after the last date the record was created or in effect
- **Permanent deletion**: After the retention period expires, data is permanently and irreversibly destroyed
- **Export before deletion**: You may export your complete health record before requesting account deletion

## 9. Children's Privacy

continuED is **not intended for children under 13 years of age**. We do not knowingly collect personal information from children under 13. If we discover that a child under 13 has provided us with personal information, we will delete it promptly.

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

## 13. HIPAA Notice

Cairns Care LLC is committed to full compliance with the **Health Insurance Portability and Accountability Act (HIPAA)**, including the Privacy Rule, Security Rule, and Breach Notification Rule.

- We maintain a **Business Associate Agreement (BAA)** with every infrastructure vendor and subcontractor that handles Protected Health Information (PHI)
- We conduct regular **risk assessments** as required by the HIPAA Security Rule
- We maintain **policies and procedures** for breach identification, notification, and mitigation
- Our workforce members receive **HIPAA training** and are bound by confidentiality obligations

If you believe your health information privacy has been violated, you have the right to file a complaint with Cairns Care LLC or directly with the HHS Office for Civil Rights.

---

*Copyright 2026 Cairns Care LLC. All rights reserved.*
