# SKOOL-COMM – School-Parent Communication App

## Project Information

**Project Name:** Skool-Comm – School-Parent Communication App
**Module:** ITC327W – Work Integrated Learning
**Institution:** Central University of Technology (CUT)
**Stakeholder:** Wilgehof Primary School
**Project Phase:** Phase 1 – Planning, Requirements and Feasibility

---

## Project Overview

Skool-Comm is an integrated mobile and web prototype designed to improve communication between Wilgehof Primary School and parents or guardians.

The project aims to provide a centralised platform where parents can access important school information, including academic progress, attendance information, announcements, reminders and the school year plan.

Teachers and school administrators will use a web-based dashboard to manage communication and learner information, while parents will use a Flutter mobile application to access relevant school updates.

---

## Problem Statement

Wilgehof Primary School currently uses multiple communication methods, including WhatsApp, Facebook, letters and phone calls.

This fragmented approach can result in:

* Parents missing important messages.
* Short notice about school events and meetings.
* No central communication record.
* No reminders for parents.
* No digital year plan.
* Manual recording of learner information.
* Difficulty for some parents, particularly elderly parents, when using existing communication platforms.

Skool-Comm aims to provide a centralised and easier-to-use solution for school-parent communication.

---

## Proposed Solution

The Skool-Comm prototype consists of three integrated components:

### Flutter Mobile Application

The mobile application will be used by parents or guardians to:

* View academic progress.
* View attendance information.
* View school events and announcements.
* Receive reminders.
* View the school year plan.
* Update contact information.

### ASP.NET Web Application

The web application will be used by teachers and administrators to:

* Create, update and delete announcements.
* Manage communication.
* Track parent engagement where applicable.
* Manage users.
* Manage learner and parent information.
* Generate reports.

### Supabase Backend

Supabase will provide the shared backend for both applications, including:

* Authentication.
* Database storage.
* Role-based access control.
* Communication records.
* Real-time synchronisation where applicable.

---

## Technology Stack

| Component            | Technology              |
| -------------------- | ----------------------- |
| Mobile Application   | Flutter (Dart)          |
| Web Application      | ASP.NET Core (C#)       |
| Backend and Database | Supabase                |
| Database             | PostgreSQL              |
| Authentication       | Supabase Authentication |
| Source Control       | GitHub                  |

---

## System Architecture

```text
                    ┌───────────────────────┐
                    │   Flutter Mobile App  │
                    │       Parents         │
                    └───────────┬───────────┘
                                │
                                │
                                ▼
                     ┌────────────────────┐
                     │      SUPABASE      │
                     │ Authentication     │
                     │ Database           │
                     │ Real-time Services │
                     │ Access Control     │
                     └─────────┬──────────┘
                               │
                               │
                               ▼
                    ┌───────────────────────┐
                    │  ASP.NET Web Dashboard │
                    │ Teachers & Administrators │
                    └───────────────────────┘
```

Both the Flutter mobile application and ASP.NET web application will connect to the same Supabase backend to share and manage project data.

---

## Project Scope

### Must-Have Features

* Academic progress viewing.
* Attendance viewing.
* School events and announcements.
* Create, update and delete announcements.
* Reminders.
* Year plan.
* Digital record-keeping.
* Secure authentication and authorised access.
* User management.

### Should-Have Features

* Parent engagement tracking.
* Learner points tracking.

### Could-Have Features

* Online statements.
* Uniform or stationery supplier link.

The project scope has been refined to ensure that the prototype remains achievable within the available semester.

---

## Group Members and Roles

| Group Member              | Role                     |
| ------------------------- | ------------------------ |
| Avhasei Rambulana         | Project Manager          |
| Precious Mchunu           | Database Administrator   |
| Lesego Mochai             | Communications Officer   |
| Kwanele Mdolo             | Technical Lead           |
| Itshepeleng Karabo Lerato | Technical Lead           |
| Nothabile Jokazi          | Quality Assurance Tester |
| Tsietsi Sebogodi          | Quality Assurance Tester |
| Lebohang Seekoei          | Risk Manager             |

---

## Repository Structure

```text
SKOOL-COMM
│
├── apps/
│   ├── flutter/
│   └── aspnet/
│
├── docs/
│
├── .gitignore
│
└── README.md
```

The repository will be updated throughout the project as development and documentation progress.

---

## Project Status

**Current Phase:** Phase 1 – Planning, Requirements and Feasibility

Completed Phase 1 activities include:

* Stakeholder identification and engagement.
* Requirements gathering.
* Current process and problem analysis.
* Software Requirements Specification.
* Requirements prioritisation.
* Requirements change management.
* Refined project scope.
* Feasibility study.
* Project risk register.
* Microsoft Project schedule.
* GitHub repository setup.
* Supabase project setup.

The project will next move into system architecture and design.

---

## Security Notice

Sensitive information such as passwords, private keys, service role keys and confidential credentials must not be committed to this repository.

Environment variables and sensitive configuration files should be excluded using `.gitignore`.
