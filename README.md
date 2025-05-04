# Task Management System

## Tech Stack

- **Programming Language:** Python 3
- **Framework:** Flask
- **Database:** PostgreSQL (managed using pgAdmin 4)
- **Database Driver:** psycopg2 (no SQLAlchemy used)
- **Frontend:** HTML + Bootstrap (for simple styling)


### To Restore the Database:
1. In pgAdmin, right-click **Databases** → **Create > Database** → name it `task_manager`.
2. Right-click the new database → **Restore**.
3. Select your backup file.
4. Hit **Restore**.


## Table of the database
CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    priority INTEGER NOT NULL,
    deadline DATE,
    status TEXT DEFAULT 'Pending'
);
