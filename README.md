# SKOOL-COMM - Primary School Parent-Teacher Portal

A mobile and web platform designed to streamline secure, real-time communication between primary school teachers and parents.

---

## 🛠️ Tech Stack & Architecture

### **Architecture Overview**
This project relies on a centralized **Supabase (PostgreSQL)** backend that provides direct authentication, data persistence, and Row Level Security (RLS).

* **Mobile App (Parents & Teachers):** Built with **Flutter (Dart)** using MVVM architecture for cross-platform iOS & Android delivery.
* **Web Portal (School Administrators):** Built with **C# ASP.NET Core** for administrative workflows, user provisioning, and analytics.
* **Backend Services:** **Supabase** (Auth, Database, Storage, and Realtime Engine).

---
### **Technology Breakdown**

| Layer | Technology | Key Function / Packages |
| :--- | :--- | :--- |
| **Mobile Client** | Flutter (Dart) | UI, State Management (`provider`), `supabase_flutter` |
| **Web Admin Client** | ASP.NET Core (C#) | Admin Panel, Razor Pages/Blazor, `Supabase-csharp` |
| **Database** | PostgreSQL (Supabase) | Relational Storage, Triggers, Views |
| **Security & Auth** | Supabase Auth + RLS | JWT Auth, Role-Based Access Control via Row Level Security |
| **Realtime Engine** | Supabase Realtime | WebSockets for instant chat & push updates |

---

### **System Architecture Diagram**


┌─────────────────────────┐               ┌─────────────────────────┐
│       Flutter App       │               │   ASP.NET Web Admin     │
│   (Parents & Teachers)  │               │     (School Admin)      │
└────────────┬────────────┘               └────────────┬────────────┘
             │                                         │
             │   HTTPS REST & WebSockets (Real-time)    │
             │   (Protected by PostgreSQL RLS)         │
             ▼                                         ▼
┌───────────────────────────────────────────────────────────────────┐
│                       SUPABASE PLATFORM                           │
│  ┌──────────────────┐  ┌──────────────────┐  ┌─────────────────┐  │
│  │  Supabase Auth   │  │ Realtime Engine  │  │ PostgreSQL DB   │  │
│  │ (JWT Tokens/RLS) │  │  (WebSockets)    │  │  + RLS Rules    │  │
│  └──────────────────┘  └──────────────────┘  └─────────────────┘  │
└───────────────────────────────────────────────────────────────────┘

---

## 🚀 Key Features

* **Role-Based Portals:** Distinct interfaces and permissions for Admin, Teachers, and Parents.
* **Student Activity Updates:** Real-time progress reports, attendance notes, and event scheduling.
* **Privacy Controls:** Masked contact information to ensure teacher-parent privacy boundaries.

---

## 📦 Getting Started

### Prerequisites

Ensure you have the following installed locally:
* [SDK / Framework Version, e.g., Flutter SDK >= 3.x ]
* [Package Manager, e.g., Node.js / Dart / Git]
