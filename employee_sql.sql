--Drop tables (if need be)
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

--Creating needed tables for importing csvs
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR
);
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT
);
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);
CREATE TABLE salaries (
	emp_no INT,
	salary INT
);
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);