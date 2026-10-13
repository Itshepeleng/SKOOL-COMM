# SKOOL-COMM – School-Parent Communication App

## Project Overview

Skool-Comm is a school-parent communication system designed for Wilgehof Primary School. It consists of a Flutter mobile application for parents and guardians, an ASP.NET Core web application for teachers and administrators, and a shared Supabase backend.

The system aims to centralise school communication by allowing parents and guardians to view announcements, attendance records, behavioural points, reminders, school events and the year plan. Parents can also update their contact information and register their profiles for approval.

Teachers and administrators use the web application to manage school announcements, attendance and school events, while teachers record behavioural points. Administrators manage user accounts and approve or reject parent profiles. The system also supports parent engagement tracking to help the school monitor whether announcements have been viewed.

## Proposed Solution

The Skool-Comm prototype consists of three integrated components.

### Flutter Mobile Application

The mobile application will allow parents or guardians to:

- Register and log in securely.
- View school announcements and reminders.
- View learner attendance records.
- View learner behavioural points.
- View school events and the year plan.
- Update their contact information.
- View relevant school updates for their linked learners.

### ASP.NET Core Web Application

The web application will allow teachers and administrators to:

- Create, update and manage school announcements.
- Record and manage learner attendance.
- Record learner behavioural points through the teacher role.
- Manage school events and the year plan.
- Track parent engagement with announcements.
- Generate reports where required by the approved requirements.

Administrators will also be able to manage user accounts and approve or reject parent profiles.

### Supabase Backend

Supabase will provide the shared backend for both applications, including:

- Authentication and user identity management.
- PostgreSQL database storage.
- Row Level Security (RLS) to help protect authorised access to data.
- Storage for approved files and attachments, where required.
- Realtime services for live updates where applicable.
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

### Must Have
- Secure parent and staff registration and login.
- Parent profile registration and administrator approval or rejection.
- Linking approved parent profiles to the correct learners.
- Viewing learner attendance records.
- Viewing learner behavioural points.
- Viewing school announcements and reminders.
- Viewing school events and the year plan.
- Creating and managing school announcements.
- Recording and managing learner attendance.
- Recording and managing learner behavioural points through the teacher role.
- Managing school events and the year plan.
- Tracking parent engagement with announcements.
- Updating parent contact information.
- Managing user accounts and access permissions.
- Role-based access control to protect learner and parent information.
- In-app updates and notifications where supported by the approved design.

### Should Have

- Realtime updates where supported by the shared Supabase backend.

### Could Have
- A link to an external school uniform or stationery supplier, if time permits.

### Out of Scope for the Current Prototype
- Viewing academic results.
- Online school statement viewing or payment processing.
- SMS and email notifications.
- Direct messaging between parents and staff.
- AI-powered features.
- External payment-system integrations.


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
