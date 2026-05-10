-- Create departments table
CREATE TABLE departments (
    department_id   SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location        VARCHAR(200)
);

-- Create employees table
CREATE TABLE employees (
    employee_id     SERIAL PRIMARY KEY,
    full_name       VARCHAR(150) NOT NULL,
    department_id   INT REFERENCES departments(department_id),
    job_title       VARCHAR(100),
    hire_date       DATE,
    salary          NUMERIC(10,2)
);

-- Create budget table
CREATE TABLE budget (
    budget_id       SERIAL PRIMARY KEY,
    department_id   INT REFERENCES departments(department_id),
    fiscal_year     INT NOT NULL,
    allocated_amount NUMERIC(12,2) NOT NULL
);

-- Create expenses table
CREATE TABLE expenses (
    expense_id      SERIAL PRIMARY KEY,
    department_id   INT REFERENCES departments(department_id),
    expense_date    DATE NOT NULL,
    category        VARCHAR(100),
    amount          NUMERIC(10,2) NOT NULL,
    description     TEXT
);
