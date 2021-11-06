
DROP TABLE IF EXISTS Departments CASCADE ;

DROP TABLE IF EXISTS Titles CASCADE;

DROP TABLE IF EXISTS Employees CASCADE;

DROP TABLE IF EXISTS Dept_Emp CASCADE;

DROP TABLE IF EXISTS Dept_Manager CASCADE;

DROP TABLE IF EXISTS Salaries CASCADE;

CREATE TABLE Departments (
    deptno VARCHAR(10)   NOT NULL,
    dept_name VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        deptno
     )
);

CREATE TABLE Titles (
    title_id VARCHAR(10)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE Employees (
    emp_no int   NOT NULL,
    emp_title_id VARCHAR(10)   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Dept_Emp (
    empno int   NOT NULL,
    dept_no VARCHAR(10)   NOT NULL
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR(10)   NOT NULL,
    emp_no int   NOT NULL
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_empno FOREIGN KEY(empno)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (deptno);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (deptno);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

