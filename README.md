# SKOOL-COMM – School-Parent Communication App

## Project Overview

Skool-Comm is a school-parent communication system designed for Wilgehof Primary School. It consists of a Flutter mobile application for parents and guardians, an ASP.NET Core web application for teachers and administrators, and a shared Supabase backend.

The system centralises school communication by allowing parents and guardians to view announcements, attendance records, behavioural points, reminders, school events and the year plan. Parents can also update their contact information and register their profiles for approval.

Teachers and administrators use the web application to manage announcements, attendance and school events. Teachers record behavioural points, while administrators manage user accounts and approve or reject parent profiles. The system also supports parent engagement tracking to monitor announcement views.

## Proposed Solution

### Flutter Mobile Application

The mobile application allows parents or guardians to:
- Register and log in.
- View school announcements and in-app reminders.
- View learner attendance records and behavioural points.
- View school events and the year plan.
- Update their contact information.
- View information for their linked learners.

### ASP.NET Core Web Application

The web application allows teachers and administrators to:
- Create, update and manage announcements.
- Record and manage learner attendance.
- Record learner behavioural points through the teacher role.
- Manage school events and the year plan.
- Track parent engagement with announcements.
- Generate reports according to the approved requirements.

Administrators can also manage user accounts and approve or reject parent profiles.

### Supabase Backend

Supabase provides the shared backend for both applications, including:
- Authentication and user identity management.
- PostgreSQL database.
- Row Level Security (RLS) to restrict access to authorised data.
- Realtime services for live updates and in-app notifications.
- Storage for approved files and attachments, if required by the final scope.

---

## Technology Stack

| Component | Technology |
|---|---|
| Mobile Application | Flutter (Dart) |
| Web Application | ASP.NET Core (C#) |
| Backend Platform | Supabase |
| Database | PostgreSQL |
| Authentication | Supabase Authentication |
| Source Control | GitHub |

---

## System Architecture

The Flutter mobile application and ASP.NET Core web application connect to the same Supabase backend.

- **Flutter:** Parents and guardians register, log in and view school information.
- **ASP.NET Core:** Teachers and administrators manage school information and user accounts.
- **Supabase:** Provides authentication, database services, access control and realtime updates.

The detailed architecture diagram is available in the [Section B – System Design](docs/section-b-design/README.md) folder.

---

## Prerequisites

Before setting up the project, install the following:

- **Flutter SDK:** Stable release.
- **.NET SDK:** .NET 10 SDK.
- **Git:** For version control and repository management.

Project-specific configuration, including Supabase settings, must be supplied separately. Do not commit passwords, secret keys or other credentials to GitHub.

---

## Project Scope

### Must

## Security Notice

Sensitive information such as passwords, private keys, service role keys and confidential credentials must not be committed to this repository.

Environment variables and sensitive configuration files should be excluded using `.gitignore`.
