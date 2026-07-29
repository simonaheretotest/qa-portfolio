# Bug Reports

Defects identified during QA internship testing across two 
commercial web applications. Logged in Jira and Azure DevOps.

---

## Project 1 — HR Recruitment Pipeline

Bugs logged in Jira during manual testing of a commercial 
HR recruitment and candidate management platform.

**Total bugs found:** 70+
**Shown below:** 3 selected examples

| File | Bug ID | Summary | Severity | Status |
|---|---|---|---|---|
| ROS-61 | ROS-61 | Oversized file attachment causes silent failure on candidate creation | High | Resolved |
| ROS-60 | ROS-60 | Removing attached file leaves blank contentless note | Medium | Resolved |
| ROS-38 | ROS-38 | Notes require separate tab click instead of being visible on overview | Low | Resolved |

**Tool:** Jira

---

## Project 2 — Document Management Platform

17 bugs logged in Azure DevOps during manual and exploratory 
testing of a Lithuanian staffing document management system.

**Files:**
- `Data-management-system-bug-report.xlsx`
  
**Tool:** Azure DevOps · Excel

---

## Bug patterns observed across both projects

- **Input validation failures** — system accepts invalid, negative
  or out-of-range values without blocking
- **Duplicate data not prevented** — system allows duplicate names,
  codes and series numbers
- **Raw backend errors exposed to users** — technical messages
  shown instead of user-friendly text
- **Silent failures** — actions appear to succeed but data is
  missing or incomplete
- **Missing functionality** — features that do not respond with
  no feedback to the user

---

## Tools used
Jira · Azure DevOps · Excel · Manual testing · Exploratory testing
