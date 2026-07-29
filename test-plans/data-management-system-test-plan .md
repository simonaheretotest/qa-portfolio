# Test Plan — Document Management System

| | |
|---|---|
| **Project** | Document Management System |
| **Author** | Simona Rokaite |
| **Date** | July 28th, 2026 |

---

## 1. What is this project

This system is an internal platform for managing staffing documents — user contracts, project assignments, location scheduling, tax rates and financial reports. Testing is being conducted prior to an update.

---

## 2. What I will test

### In scope

- Users - creating, editing, searching, role management
- User Documents - document creation, status transitions, signing workflow
- Cities - CRUD (create, read, update, delete) operations and validation
- Signatures - creation, assignment, data integrity
- Document Templates - creation, series codes, archiving behaviour
- Reports - generation, date validation, empty period handling
- Tax Rates - updating values, input validation, cross-module impact
- Projects - creation, filtering, search, project codes
- Project Locations - adding locations, address search, hourly rates
- Project Schedule - participant assignment, capacity limits, week navigation
- General - role-based access control, login, logout, session timeout

### Out of scope

- Performance and load testing
- API testing
- Automated testing
- Email delivery verification beyond status check
- Mobile device testing

---

## 3. What I am trying to achieve

- Verify that core workflows function end to end for the Admin role
- Confirm that form validation rejects invalid, negative and out-of-range inputs
- Verify that role-based access control blocks non-Admin users from admin modules
- Check that data changed in one module is correctly reflected in related modules
- Document all findings clearly enough for developers to reproduce and fix

---

## 4. How I will test

**Approach:** Manual black-box testing

**Techniques:**
- **Structured test case execution** - test cases written in Qase before execution, covering positive, negative and boundary scenarios
- **Exploratory testing** - unscripted investigation of complex modules, particularly Schedule and Locations
- **Error guessing** - targeting known weak spots such as empty fields, duplicate data, boundary values, negative numbers and special characters
- **Role-based testing** - logging in as different user roles to verify access restrictions

**Priority order:** Critical and High priority test cases executed first.

---

## 5. Test environment

| Item | Details |
|---|---|
| Browser | Chrome / Safari |
| Operating system | macOS |
| Test data | Pre-existing system data plus records created during testing |
| Bug tracking | Azure DevOps |
| Test case management | Qase |

---

## 6. Entry criteria

I will begin testing when:

- [ ] Application is deployed and accessible in the test environment
- [ ] I have Admin-level access to all modules
- [ ] Test cases are written and reviewed in Qase
- [ ] Azure DevOps project is set up for bug logging

---

## 7. Exit criteria

Testing will be complete when:

- [ ] All planned test cases have been executed
- [ ] All Critical and High severity defects have been logged
- [ ] No Blocker defects remain unresolved
- [ ] Test summary report has been written

---

## 8. Risks

| Risk | Impact | Mitigation |
|---|---|---|
| No formal requirements document | May misunderstand expected behaviour | Flag unclear cases for PM/BA clarification |
| Test environment shared with development | Unstable builds may affect results | Pause testing during active deployments |
| Address search API dependency | May block location testing | Log as blocker immediately, test rest of module |

---

## 9. Deliverables

- Test cases in Qase
- Bug reports in Azure DevOps
- This test plan
- Test summary report after execution

---

## 10. People involved

| Role | Person |
|---|---|
| QA Tester | Simona Rokaite |
| Development | Thruster development team |
| Project oversight | MJ |
