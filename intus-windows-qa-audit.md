# INTUS Windows — Website QA Audit

**Auditor:** Simona Rokaitė-Jankienė  
**Scope:** intuswindows.com, my.intuswindows.com, bim.intuswindows.com  
**Audit date:** October 2026  
**Environment:** macOS Sequoia 15.1 · Safari 18.1 · Chrome 130 · Firefox 131

---

## Overview

Manual QA audit of the INTUS Windows public website and associated subdomains. The audit covers content accuracy, UI/UX consistency, accessibility, SEO metadata, authentication flows, and cross-page terminology.

Issues are logged as GitHub Issues with severity labels, steps to reproduce, screenshots, and expected vs. actual behavior.

---

## Severity Labels

| Label | Meaning |
|---|---|
| `critical` | Broken page, data loss, or completely non-functional feature |
| `high` | Significant user-facing defect — impacts conversion or trust |
| `medium` | Content error, inconsistency, or UX friction |
| `low` | Minor typo, cosmetic issue, or SEO improvement |

---

## Issues by Page

| Page | Issues |
|---|---|
| /myintus | CTA buttons lead to different destinations |
| /careers | Typo "Competive salary" · Internal alt text exposed publicly |
| /service | "Testings" in request type dropdown |
| /retrofit-windows | Consultation button goes to wrong page · "Bentonville, AR AR" duplicate state code |
| /faq | Broken "here" link returns 404 |
| /about-us | "LEED Green" is not a valid certification level |
| /gc-and-installers | Page body completely empty |
| /architects-and-engineers | "NYC and NYC" repeated in testimonial |
| my.intuswindows.com | Password reset sends to unregistered email |
| bim.intuswindows.com | OG social image hosted on third-party domain |

---

## Out of Scope

- Authenticated portal features beyond login/password reset flow
- Mobile app (iOS/Android)
- Performance / load testing
- Backend API endpoints
- help.intuswindows.com knowledge base content
