# SKOOL-COMM – School-Parent Communication App

## Project Overview

Skool-Comm is a school-parent communication system designed for Wilgehof Primary School. It consists of a Flutter mobile application for parents and guardians, an ASP.NET Core web application for teachers and administrators, and a shared Supabase backend.

The system centralises school communication by allowing parents and guardians to view announcements, attendance records, behavioural points, reminders, school events and the year plan.Parents can also update their contact information and register their profiles. Registration is automatic and immediate upon signup.

Teachers and administrators use the web application to manage announcements, attendance and school events. Teachers record behavioural points, while administrators manage user accounts, events, and the year plan. The system also supports parent engagement tracking to monitor announcement views and event responses.

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

### Must-Have Features

- Secure registration, login and role-based access for parents, teachers and administrators.
- Automatic parent profile registration 
- User management by administrators.
- Announcement management.
- In-app reminders for parents.
- Recording and viewing learner attendance.
- Recording and viewing learner behavioural points.
- Managing and viewing school events and the year plan.
- Updating parent contact information.
- Digital record-keeping of school communication.
- Staff reports for attendance, behavioural points and parent engagement.

### Should-Have Features

- Parent engagement tracking for announcement views.
- Realtime updates and in-app notifications.

### Could-Have Features

- Links to uniform or stationery suppliers.
- Profile pictures and announcement attachments, subject to final approval and available time.

### Out of Scope for the Prototype

- Academic progress and marks recording or viewing.
- Online statements.
- External SMS, email and push-notification delivery.
- Live integration with the school's existing databases or systems.

The scope has been refined to keep the prototype achievable within the available semester.

---

## Group Members and Roles

| Group Member | Role |
|---|---|
| Avhasei Rambulana | Project Manager |
| Precious Mchunu | Database Administrator |
| Lesego Mochai | Communications Officer |
| Kwanele Mdolo | Technical Lead |
| Itshepeleng Karabo Lerato | Technical Lead |
| Nothabile Jokazi | Quality Assurance Tester |
| Tsietsi Sebogodi | Quality Assurance Tester |
| Lebohang Seekoei | Risk Manager |

---

## Repository Structure

```text
SKOOL-COMM/
├── apps/
│   ├── mobile/
│   └── web/
│       └── SkoolComm.Web/
├── docs/
│   ├── section-a-planning/
│   ├── section-b-design/
│   │   ├── README.md
│   │   ├── System-Architecture-Diagram.pdf
│   │   ├── ERD_diagram.pdf
│   │   ├── UML-Use-Case-Diagram.pdf
│   │   ├── Sequence-diagrams-ASP.NET.pdf
│   │   └── interface documentation.pdf
│   ├── section-c-development/
│   ├── meetings-and-reflections/
│   └── README.md
├── .gitignore
└── README.md
```

The structure above describes the intended organisation of the repository. Only files actually committed to GitHub should be considered available.

---

## Documentation

### Section A – Planning and Requirements

- [Software Requirements Specification (SRS)](docs/New_SRS_2%20%282%29.docx)
- [Feasibility Study](docs/Feasibility%20Study.docx)
- [Project Risk Register](docs/Project%20Risk%20Register%20Final.xlsb.xlsx)
- [Stakeholder Requirement and Scope Confirmation](docs/Stakeholder_Requirement_Scope_Confirmation%20%281%29.pdf)

### Section B – System Design

- [System Design Folder and Design Source Links](docs/section-b-design/README.md)
- [System Architecture Diagram](docs/section-b-design/System-Architecture-Diagram.pdf)
- [Entity Relationship Diagram (ERD)](docs/section-b-design/ERD_diagram.pdf)
- [UML Use Case Diagram](docs/section-b-design/UML-Use-Case-Diagram.pdf)
- [ASP.NET Sequence Diagrams](docs/section-b-design/Sequence-diagrams-ASP.NET.pdf)
- [Interface Documentation](docs/section-b-design/interface%20documentation.pdf)

### Meetings, Reflections and Evidence

- [Meeting Evidence](docs/Meeting_Evidence.pdf)
- [Meeting Plan](docs/Meeting%20plan.jpeg)
- [Stakeholder Meeting](docs/StakeholderMeeting.pdf)
- [Phase 1 Group Reflection](docs/Phase-1-Group-Reflection.pdf)

### Section C – Development Evidence

- [Supabase Screenshots](docs/Supabase_Screenshots.pdf)

---

## Project Status

**Current Phase:** Phase 2 – System Architecture and Design

Phase 2 activities include:
- System architecture design.
- UML use case and sequence diagrams.
- Database design and ERD.
- Software Requirements Specification updates.
- User interface design for Flutter and ASP.NET Core.
- Microsoft Project schedule updates.
- GitHub documentation organisation.
- Project progress tracker updates.

The next stage is system development, implementation, testing and the final demonstration.

---

The repository will be maintained throughout the project as development and documentation progress.

