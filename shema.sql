CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR,
    id SERIAL PRIMARY KEY
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR,
    id SERIAL PRIMARY KEY
);

CREATE TABLE employees (
	emp_no VARCHAR PRIMARY KEY,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date VARCHAR
);

CREATE TABLE salaries (
	emp_no VARCHAR,
	salary VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR,
    id SERIAL PRIMARY KEY
);

CREATE TABLE titles (
	emp_no VARCHAR,
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR,
    id SERIAL PRIMARY KEY
);

