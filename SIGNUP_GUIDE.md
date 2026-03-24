# How to Sign Up for continuED

**Your complete guide to getting started with continuED**

---

## Overview

Getting started with continuED takes about 5-10 minutes. By the end of this guide, you will have:

1. Created your account
2. Connected your health record systems
3. Set up your emergency wallet card

---

## Step 1: Download the App

Choose your platform:

- **iPhone / iPad**: Download from the App Store *(search "continuED Health")*
- **Mac**: Download from the Mac App Store or our website
- **Web**: Visit [app.continued.health](https://app.continued.health) in any modern browser

*[Screenshot: App Store listing — placeholder]*

---

## Step 2: Create Your Account

1. Open continuED and tap **"Create Account"**
2. Enter your **name**, **email address**, and **date of birth**
3. Create a **strong password** (minimum 12 characters, including uppercase, lowercase, number, and special character)
4. Set up **multi-factor authentication (MFA)** — you can use:
   - Authenticator app (recommended — Google Authenticator, Authy, 1Password, etc.)
   - SMS verification code
5. Verify your email address by clicking the link sent to your inbox
6. Accept the [Terms of Service](TERMS_OF_SERVICE.md) and [Privacy Policy](PRIVACY_POLICY.md)

*[Screenshot: Account creation screen — placeholder]*

---

## Step 3: Verify Your Identity

To connect to health record systems, we need to verify your identity:

1. After account creation, you will be prompted to complete **identity verification**
2. Confirm your **legal name** and **date of birth** as they appear in your health records
3. Optionally add your **address** and **phone number** to improve matching accuracy across health systems

Identity verification ensures that when you connect an EHR system, the records returned are yours.

*[Screenshot: Identity verification screen — placeholder]*

---

## Step 4: Connect Your Health Record Systems

This is where continuED comes to life. Connect one or more of your health systems:

1. From the home screen, tap **"Connect Health System"** (or navigate to Settings > Connected Systems)
2. **Search** for your healthcare provider, hospital, or health system by name
3. Tap the system to begin the connection
4. You will be redirected to that system's **login page** — sign in with your existing patient portal credentials
5. **Authorize** continuED to access your health records
6. Your records will begin syncing — this typically takes 30 seconds to 2 minutes depending on the volume of records

Repeat for each health system you use.

*[Screenshot: Health system search and connection flow — placeholder]*

### Supported EHR Systems

continuED connects to health systems that support **FHIR R4** patient access APIs, including:

| Health System / EHR | Status |
|---------------------|--------|
| **VA (Department of Veterans Affairs)** | Fully supported via VA Lighthouse API |
| **Epic MyChart** | Fully supported |
| **Cerner / Oracle Health** | Fully supported |
| **Allscripts** | Supported |
| **Athenahealth** | Supported |
| **eClinicalWorks** | Supported |
| **Meditech** | Supported |
| **NextGen** | Supported |
| **Greenway Health** | Supported |
| **DrChrono** | Supported |
| **CMS Medicare (Blue Button 2.0)** | Fully supported |

> **Note**: Under the 21st Century Cures Act and ONC rules, all certified EHR systems are required to provide FHIR R4 patient access APIs. If your health system is not listed, it may still be supported — search for it in the app.

### Connecting VA Records

If you are a Veteran:

1. Select **"Department of Veterans Affairs"** from the health system list
2. You will be redirected to **VA.gov** to sign in
3. Sign in with your **Login.gov**, **ID.me**, or **My HealtheVet** credentials
4. Authorize continuED to access your VA health records
5. Your VA records will sync, including conditions, medications, allergies, labs, immunizations, and notes

*[Screenshot: VA Lighthouse connection flow — placeholder]*

---

## Step 5: Set Up Your Emergency Wallet Card

Once your records have synced, set up your emergency card:

1. Navigate to **Emergency Card** from the home screen or sidebar
2. Review the auto-populated information:
   - Active medications
   - Known allergies
   - Key diagnoses
   - Emergency contacts
3. **Add or edit** emergency contacts if needed
4. Optionally add:
   - **Advance directive** status and location
   - **Organ donor** status
   - **Blood type** (if available in your records)
   - **Primary care provider** contact information
5. Tap **"Generate Card"**
6. Choose your format:
   - **Apple Wallet** — adds to your iPhone's Wallet app
   - **Print** — generates a wallet-sized PDF to print and carry
   - **QR Code** — creates a secure, scannable code for emergency responders

*[Screenshot: Emergency card setup and preview — placeholder]*

---

## Troubleshooting Common Connection Issues

### "Health system not found"
- Try searching by the **hospital or clinic name** rather than the health system brand
- Try searching by your **provider's name**
- Some smaller clinics use a parent organization's EHR — try searching for the parent health network

### "Authentication failed"
- Verify you are using your **patient portal credentials** (not your insurance login or a different system)
- If you have not activated your patient portal, you may need to do so through your provider's website first
- Try resetting your password on the health system's portal directly

### "No records found"
- Ensure the **name and date of birth** on your continuED account exactly match what your health system has on file
- Some health systems take 24-48 hours to make new records available via FHIR APIs after a visit
- If the issue persists, contact the health system's patient support to verify your FHIR access is enabled

### "Connection timed out"
- Check your internet connection
- Some health systems experience intermittent downtime — try again in 30 minutes
- If the issue persists, contact us at briancairns22@gmail.com

### "Partial records received"
- Some health systems restrict certain record types from FHIR APIs
- Records from before the health system's FHIR implementation date may not be available electronically
- Contact your provider's Health Information Management (HIM) department to request older records be added

---

## What's Next?

After completing setup, explore:

- **Timeline View** — See your complete health history in chronological order
- **Medications** — Review all active medications with interaction checking
- **Care Team** — View all your providers in one place
- **Sharing** — Share specific records with a new provider or caregiver
- **Clinical Trials** — Discover trials relevant to your conditions
- **Insights** — Track trends in your lab values, vitals, and health metrics

---

*Need help? Contact us at briancairns22@gmail.com.*

*Copyright 2026 Cairns Care LLC. All rights reserved.*
