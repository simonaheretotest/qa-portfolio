# INTUS Windows — Website QA Audit

**Auditor:** Simona Rokaitė-Jankienė  
**Scope:** intuswindows.com, my.intuswindows.com, bim.intuswindows.com  
**Audit date:** October 2026  
**Environment:** macOS Sequoia 15.1 · Safari 18.1 · Chrome 130 · Firefox 131 · Lighthouse 13.4.1

---

## Overview

Manual QA audit of the INTUS Windows public website and associated subdomains. The audit covers content accuracy, UI/UX consistency, accessibility, performance, SEO metadata, authentication flows, and cross-page terminology.

Issues are logged as GitHub Issues with severity labels, steps to reproduce, screenshots, and expected vs. actual behavior.

**Total issues found: 11**

---

## Severity Labels

| Label | Meaning |
|---|---|
| `critical` | Broken page, data loss, or completely non-functional feature |
| `high` | Significant user-facing defect — impacts conversion, trust, or SEO |
| `medium` | Content error, inconsistency, or UX friction |
| `low` | Minor typo, cosmetic issue, or SEO improvement |

---

## Issues by Page

| # | Page | Issue | Severity |
|---|---|---|---|
| 1 | /myintus | CTA buttons lead to different destinations | High |
| 2 | /myintus | "MyINTUS" and "My INTUS" used inconsistently across all pages | Medium |
| 3 | /careers | Typo: "Competive salary" in benefits list | Medium |
| 4 | /careers | Internal production note exposed in image alt text | Medium |
| 5 | /careers | Duplicate "Inside Sales Representative" job listing | Medium |
| 6 | /service | "Testings" in request type dropdown | Medium |
| 7 | /retrofit-windows | "Schedule Free Consultation" button leads to Lunch & Learn page | High |
| 8 | /retrofit-windows | State code "AR" duplicated on project card ("Bentonville, AR AR") | Low |
| 9 | /faq | "here" link in colors answer returns 404 | High |
| 10 | my.intuswindows.com | Password reset accepts unregistered emails and invalid formats | High |
| 11 | / (homepage) | Speed Index 9.0s — over 3× slower than benchmark | High |

---

## Testing Methods

- Manual browser testing (Safari, Chrome, Firefox)
- Lighthouse automated audit (Performance, Accessibility, SEO, Best Practices)
- Auth0 login and password reset flow testing
- Cross-page content and terminology review

---

## Out of Scope

- Authenticated portal features beyond login/password reset flow
- Mobile app (iOS/Android)
- Backend API endpoints
- help.intuswindows.com knowledge base content

---

## Project Board

All issues are tracked on the GitHub Project board:  
👉 https://github.com/users/simonaheretotest/projects/1
