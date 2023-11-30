--Drop tables (if need be)
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE departments;
DROP TABLE salaries;
DROP TABLE employees;
DROP TABLE titles;

--Verifying tables made and data imported
SELECT *
FROM --table name--
LIMIT 20;

--Creating needed tables for importing csvs
CREATE TABLE departments (
	dept_no VARCHAR(300) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(300)
);

CREATE TABLE titles (
	title_id VARCHAR(300) PRIMARY KEY NOT NULL,
	title VARCHAR(300)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(300) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(300),
	last_name VARCHAR(300),
	sex VARCHAR(300),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(300) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(300) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);