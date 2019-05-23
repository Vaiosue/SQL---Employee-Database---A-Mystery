CREATE TABLE employees
(
    emp_no INT PRIMARY KEY,
    birthdate DATE NULL,
    first_name VARCHAR NULL,
    last_name VARCHAR NULL,
    gender VARCHAR NULL,
    hire_date DATE NULL
);

CREATE TABLE departments
(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NULL
);

CREATE TABLE dept_manager
(
    dept_manager_id INT PRIMARY KEY NOT NULL,
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NULL,
    to_date DATE NULL, 
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp
(
    dept_emp_id INT PRIMARY KEY NOT NULL,
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NULL,
    to_date DATE NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries
(
    salary_id INT PRIMARY KEY NOT NULL,
    emp_no INT NOT NULL,
    salary FLOAT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles
(
    title_id INT PRIMARY KEY NOT NULL,
    emp_no INT NOT NULL,
    title VARCHAR NULL,
    from_date DATE NULL,
    to_date DATE NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
); 


