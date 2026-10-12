# SKOOL-COMM – School-Parent Communication App

## Project Information

**Project Name:** Skool-Comm – School-Parent Communication Application
**Module:** ITC327W – Work Integrated Learning
**Institution:** Central University of Technology (CUT)
**Stakeholder:** Wilgehof Primary School
**Project Phase:** Phase 2 – System Architecture and Design

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
* Demerit recording is done manually by educators

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

## Prerequisites

Before you begin setting up the project, ensure you have the following installed and configured on your local machine:

(Mobile App) Flutter SDK: Latest Stable Channel
(Web App) .NET 10 SDK: The .NET 10 runtime and software development kit
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
│   ├── Meeting_Evidence.pdf
│   ├── README.md
│   ├── Supabase_Screenshots.pdf
│   └── Phase-1-Group-Reflection.pdf
│
├── .gitignore
│
└── README.md
```text

The repository will be updated throughout the project as development and documentation progress.

---

## Project Status

**Current Phase:** Phase 2 – System Architecture and Design


Completed Phase 2 activities include:

* System Architecture Design.
* UML Design -  Use Case Diagram and Sequence Diagrams.
* Database Design: Entity Relationship Diagram (ERD).
* Updated Software Requirements Specification.
* User Interface design and design alignment (Flutter and ASP.NET).
* Microsoft Project schedule updates.
* GitHub documentation updates.
* Progress Tracker Updates

The project will next move into system development, implementation and final demonstration.

---

## Security Notice

Sensitive information such as passwords, private keys, service role keys and confidential credentials must not be committed to this repository.

Environment variables and sensitive configuration files should be excluded using `.gitignore`.
