-- Insert departments
INSERT INTO departments (department_name, location) 
VALUES
	('Sales',           'New York'),
	('Human Resources', 'Chicago'),
	('Information Technology', 'San Francisco'),
	('Finance',         'New York'),
	('Marketing',       'Los Angeles'),
	('Operations',      'Chicago');

SELECT * FROM departments;

-- Insert employees
INSERT INTO employees (full_name, department_id, job_title, hire_date, salary) 
VALUES
	('Alice Johnson',   1, 'Sales Manager',       '2018-03-15', 85000),
	('Bob Smith',       1, 'Sales Executive',     '2020-07-01', 55000),
	('Carol White',     2, 'HR Manager',          '2017-11-20', 78000),
	('David Brown',     2, 'HR Executive',        '2021-02-10', 50000),
	('Eva Martinez',    3, 'IT Manager',          '2016-06-05', 95000),
	('Frank Wilson',    3, 'Software Engineer',   '2019-09-18', 88000),
	('Grace Lee',       3, 'Systems Analyst',     '2022-01-25', 72000),
	('Henry Taylor',    4, 'Finance Manager',     '2015-04-30', 92000),
	('Isabella Anderson',4,'Financial Analyst',   '2020-08-14', 68000),
	('James Thomas',    5, 'Marketing Manager',   '2018-12-01', 82000),
	('Karen Jackson',   5, 'Marketing Executive', '2021-05-19', 54000),
	('Leo Harris',      6, 'Operations Manager',  '2017-07-22', 80000),
	('Mia Clark',       6, 'Operations Analyst',  '2022-03-08', 60000);

SELECT * FROM employees; 

-- Insert budget (2022, 2023, 2024)
INSERT INTO budget (department_id, fiscal_year, allocated_amount) 
VALUES
	(1, 2022, 500000), (2, 2022, 200000), (3, 2022, 600000),
	(4, 2022, 300000), (5, 2022, 350000), (6, 2022, 280000),
	(1, 2023, 550000), (2, 2023, 210000), (3, 2023, 650000),
	(4, 2023, 320000), (5, 2023, 370000), (6, 2023, 300000),
	(1, 2024, 580000), (2, 2024, 220000), (3, 2024, 700000),
	(4, 2024, 340000), (5, 2024, 400000), (6, 2024, 320000);

SELECT * FROM budget; 

-- Insert expenses
INSERT INTO expenses (department_id, expense_date, category, amount, description) 
VALUES
	(1,'2023-01-10','Travel',        12000, 'Client visits Q1'),
	(1,'2023-02-15','Software',       8500, 'CRM subscription'),
	(1,'2023-03-20','Marketing',     22000, 'Campaign launch'),
	(1,'2023-05-05','Travel',        15000, 'Conference attendance'),
	(1,'2023-08-18','Office Supplies', 3200,'Stationery & equipment'),
	(1,'2023-11-30','Marketing',     18000, 'Year-end promotions'),
	(2,'2023-02-01','Training',      11000, 'HR certification program'),
	(2,'2023-04-15','Software',       5500, 'HRMS software license'),
	(2,'2023-07-10','Office Supplies', 2100,'Onboarding kits'),
	(2,'2023-10-20','Training',       9500, 'Leadership workshop'),
	(3,'2023-01-25','Hardware',      45000, 'Server upgrades'),
	(3,'2023-03-10','Software',      32000, 'Cloud services annual'),
	(3,'2023-06-15','Hardware',      28000, 'Laptop replacements'),
	(3,'2023-09-05','Training',       8000, 'Tech certifications'),
	(3,'2023-12-01','Software',      15000, 'Security tools renewal'),
	(4,'2023-02-20','Software',       7500, 'Accounting software'),
	(4,'2023-05-30','Training',       6000, 'Finance team workshop'),
	(4,'2023-08-12','Consulting',    20000, 'Audit consulting fees'),
	(4,'2023-11-15','Office Supplies', 1800,'Year-end supplies'),
	(5,'2023-01-15','Marketing',     35000, 'Digital ad campaigns'),
	(5,'2023-04-20','Travel',         9000, 'Industry expo'),
	(5,'2023-07-25','Marketing',     28000, 'Social media push'),
	(5,'2023-10-10','Software',       6500, 'Design tools license'),
	(6,'2023-03-05','Equipment',     18000, 'Warehouse equipment'),
	(6,'2023-06-20','Maintenance',   12500, 'Facility maintenance'),
	(6,'2023-09-15','Travel',         7000, 'Supplier meetings'),
	(6,'2023-12-10','Equipment',     14000, 'Fleet vehicle service'),
	(1,'2024-01-12','Travel',        14000, 'Q1 client visits'),
	(1,'2024-03-18','Marketing',     25000, 'Product launch campaign'),
	(1,'2024-06-22','Software',       9000, 'CRM upgrade'),
	(2,'2024-02-08','Training',      13000, 'HR skills development'),
	(2,'2024-05-14','Software',       6000, 'Payroll system update'),
	(3,'2024-01-30','Hardware',      52000, 'Data center expansion'),
	(3,'2024-04-10','Software',      38000, 'Cloud migration'),
	(3,'2024-07-20','Training',      10000, 'AI & ML training'),
	(4,'2024-03-05','Consulting',    25000, 'Tax advisory services'),
	(4,'2024-06-18','Software',       8500, 'ERP system license'),
	(5,'2024-02-14','Marketing',     42000, 'Brand refresh campaign'),
	(5,'2024-05-25','Travel',        11000, 'Marketing summit'),
	(6,'2024-01-20','Equipment',     22000, 'New machinery'),
	(6,'2024-04-15','Maintenance',   16000, 'Annual facility overhaul');

SELECT * FROM expenses; 
