---
layout: default
title: VA Lighthouse API Use Cases
permalink: /va-lighthouse-use-cases/
---

# VA Lighthouse API — Use Cases for CairnsHx

**Application:** CairnsHx Veteran PHR
**Operator:** Cairns Care LLC, State of Nevada
**Developer of record:** Brian Cairns (100% service-connected disabled Veteran)
**Last updated:** April 30, 2026

---

## Summary

CairnsHx is a patient-mediated Personal Health Record (PHR) that helps Veterans see, share, and act on their health records — across VA and civilian care — in one place. Every VA Lighthouse API call below is initiated by an authenticated Veteran through OAuth 2.0 against VA.gov SSO (ID.me, Login.gov, or My HealtheVet). CairnsHx makes no server-side trust-framework pulls and does not scrape any VA-facing surface.

All access is **read-only** at general availability. No write-back is performed in V1 except for Veteran-initiated submissions to the Benefits Intake API for the Veteran's own disability claim.

---

## 1. Patient Health API (FHIR R4)

**VA Lighthouse endpoint set:** Patient, Observation, Condition, MedicationRequest, MedicationStatement, Immunization, Procedure, Encounter, AllergyIntolerance, DocumentReference.

**Use case.** A Veteran authenticates with VA.gov SSO and authorizes CairnsHx to read their VA health record. CairnsHx fetches the standard FHIR R4 resource set listed above and presents it to the Veteran in a single, unified timeline alongside any civilian EHR records the Veteran has separately connected (Epic, Oracle Cerner, Athenahealth, etc.).

**Why the Veteran benefits.** Most Veterans receive care at the VA *and* in the community. Today they must log into multiple portals to assemble a complete picture of their medications, conditions, allergies, immunizations, and labs. CairnsHx eliminates this fragmentation by letting the Veteran see VA and civilian records side-by-side, normalized to FHIR R4 and deduplicated where possible.

**Scopes requested.** `patient/Patient.read patient/Observation.read patient/Condition.read patient/MedicationRequest.read patient/MedicationStatement.read patient/Immunization.read patient/Procedure.read patient/Encounter.read patient/AllergyIntolerance.read patient/DocumentReference.read launch/patient openid fhirUser offline_access`

**PKCE:** required.

**Data flow.** Veteran-initiated OAuth → CairnsHx receives access token bound to the Veteran's VA identity → token-bearing FHIR fetch over TLS 1.2+ → records stored AES-256-GCM at rest in the Veteran's account → displayed in CairnsHx UI to the Veteran. No third-party access without explicit, time-limited, revocable consent from the Veteran.

---

## 2. Veteran Verification / Veteran Service History & Eligibility API

**Use case.** When a Veteran connects their VA account, CairnsHx confirms (a) Veteran status and (b) service-connected disability rating. These attributes are surfaced inside the Veteran's own profile and used to:

1. Display the Veteran's service-connected status in the user's profile and emergency wallet card.
2. Tag records relevant to a service-connected condition for the Veteran's own organization.
3. Enable the disability-claims evidence-packaging feature (see API #4 below).

**Why the Veteran benefits.** Veterans frequently need to demonstrate service-connected status to community providers (e.g., for VA Community Care referrals, accommodations, or claims-related evidence). Verifying this through the official VA API once — instead of asking the Veteran to upload a DD-214 or a benefits letter — improves accuracy and reduces friction.

**Scopes requested.** `veteran_status.read disability_rating.read service_history.read` (per the API's documented OAuth scope set).

**Data flow.** Verification result is cached in the Veteran's account, refreshed on a documented cadence, and displayed only to the authenticated Veteran. Verification status is **never** disclosed to a third party without the Veteran's explicit, specific, time-limited consent.

---

## 3. Community Care Eligibility API

**Use case.** A Veteran's complete record includes care the VA purchases in the community under VA Community Care. CairnsHx uses this API to surface, for the authenticated Veteran, the Community Care episodes that VA already has on file — so the Veteran's CairnsHx timeline reflects every encounter the VA paid for, not only encounters that occurred at a VA facility.

**Why the Veteran benefits.** Veterans typically do not know which of their community visits the VA has been billed for or has on record. Surfacing this gives the Veteran a complete view and makes it easier to (a) reconcile bills, (b) follow up on referrals, and (c) avoid duplicate testing across VA and community providers.

**Scopes requested.** `community_care.read` (per the API's documented OAuth scope set).

**Data flow.** Patient-mediated, read-only. Records are fused into the unified timeline alongside Patient Health API output, with provenance preserved (each record is tagged with its originating source).

---

## 4. Benefits Claims / Benefits Intake API

**Use case.** When a Veteran is preparing supplemental evidence for a disability claim, CairnsHx assembles a packet from the Veteran's own records (VA and civilian) that supports the claim — for example, conditions documented over time, medication histories, and provider notes — and gives the Veteran the option to submit the assembled packet to the VA via the Benefits Intake API.

The submission is always Veteran-initiated. The Veteran reviews the assembled package, edits if desired, and presses submit. CairnsHx submits the packet on the Veteran's behalf with the Veteran's explicit, in-session authorization.

**Why the Veteran benefits.** Most disability-claims documentation lives across multiple EHRs that Veterans cannot easily extract or assemble. CairnsHx automates this assembly and routes the submission through the official VA pathway, replacing email, fax, or in-person submissions with a structured upload.

**Scopes requested.** `benefits_claims.write` (per the API's documented OAuth scope set), limited to the authenticated Veteran's own claim.

**Data flow.** Veteran-initiated. Read of the Veteran's record (CairnsHx + VA) → packet assembly → Veteran review and consent → write to Benefits Intake API → confirmation receipt stored in the Veteran's CairnsHx account. CairnsHx never submits on behalf of the Veteran without explicit, in-session authorization.

---

## 5. Facilities API

**Use case.** CairnsHx uses the Facilities API to display the Veteran's nearest VA medical centers, clinics, and Vet Centers, and to support routing decisions inside the application — for example, when a Veteran is reviewing a Community Care episode and wants to find the closest VA facility for follow-up.

**Why the Veteran benefits.** Veterans frequently need to locate the VA facility that holds a particular record or where a follow-up appointment should be scheduled. Surfacing accurate, official VA facility data (rather than scraping it or relying on stale third-party data) avoids confusion and reduces missed appointments.

**Scopes requested.** Public/read-only facility data (no PHI). No OAuth scope at PHI level required.

**Data flow.** Public data fetched server-side and cached briefly for performance. No Veteran identifier is sent to the Facilities API.

---

## Cross-cutting controls (apply to every API above)

1. **Veteran-purpose middleware.** Every fetch to a VA Lighthouse endpoint passes through a request-scoped check that asserts (a) the request originates from a Veteran-authenticated session, (b) the request carries a declared purpose-of-use ∈ {treatment, disability_claim, personal_access}, (c) the fetch scope falls within the enrolled OAuth scope set for the calling client, and (d) the fetch event is logged to the audit log.

2. **Audit logging.** Every read and every write is logged with timestamp, Veteran identifier, action, resource, source API, and outcome. Audit logs are retained per HIPAA (45 CFR 164.530(j)) for six years.

3. **Encryption.** All data in transit is TLS 1.2+. All Veteran data at rest is AES-256-GCM. Field-level encryption is applied to identifying fields.

4. **No data sharing without consent.** No Veteran data is shared with any third party without the Veteran's explicit, specific, time-limited, revocable consent. Sensitive categories (mental health, substance use, HIV/AIDS, genetic, reproductive) are firewalled by default and require separate consent to share.

5. **No advertising. No data brokerage.** CairnsHx does not advertise inside the application and never sells Veteran data.

6. **Patient-mediated only.** CairnsHx makes no server-side, trust-framework, or back-channel pulls of Veteran data. Every connection is initiated by an authenticated Veteran.

7. **Read-only at GA.** All APIs above are accessed read-only at general availability, with the sole exception of the Benefits Intake API (write of a Veteran-initiated, Veteran-reviewed submission packet).

---

## Production redirect URI

**Production redirect URI:** `https://cairnshx.com/smart/callback/va`

(Sandbox redirect URI was registered as a placeholder during development and will be updated to the production URI above prior to production promotion.)

---

## Contact

**Cairns Care LLC**
State of Nevada
Email: [briancairns22@gmail.com](mailto:briancairns22@gmail.com)
Website: [https://cairnshx.com](https://cairnshx.com)
