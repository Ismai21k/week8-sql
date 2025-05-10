#  Library Management System

##  Project Description

The **Library Management System** is a relational database project designed to streamline and automate the core functions of a library. It helps manage book records, authors, publishers, member registrations, borrowing and returning transactions, and late return fines. The system is structured using SQL and follows best practices in database normalization and entity relationships.

---

##  Features

- Manage book inventory with available copies tracking
- Record and track member borrow/return history
- Maintain structured data for authors, publishers, and categories
  
---

## How to Set Up / Run the Project

### Prerequisites:
- SQL-compatible RDBMS (e.g., MySQL, PostgreSQL, SQLite)
- SQL client or interface (e.g., phpMyAdmin, DBeaver, MySQL Workbench)

### Steps:
1. Clone this repository or download the `.sql` file.
2. Open your SQL database client.
3. Create a new database (e.g., `library_db`).
4. Import or run the `library_schema.sql` file provided in this repo.

---



## Entity Relationship Diagram (ERD)

![Library Management ERD](./erd.png)

> This ERD includes `Books`, `Authors`, `Publishers`, `Categories`, `Members`, `Loans`.

---


## 📁 Project Structure

library-management-system/
├── README.md
├── answer.sql       -- Full database schema
└── erd.png                  -- ERD diagram
