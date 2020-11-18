CREATE TABLE employees (
	emp_no VARCHAR(64) PRIMARY KEY,
	emp_title_id VARCHAR(64),
	birth_date DATE,
	first_name VARCHAR(64),
	last_name VARCHAR(64),
	sex VARCHAR(64),
	hire_date DATE
);

CREATE TABLE departments (
	dept_no VARCHAR(64) PRIMARY KEY,
	dept_name VARCHAR(64)
);

CREATE TABLE salaries (
	emp_no VARCHAR(64),
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(64),
	dept_no VARCHAR(64),
	PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(64),
	emp_no VARCHAR(64),
	PRIMARY KEY(dept_no, emp_no)
);
