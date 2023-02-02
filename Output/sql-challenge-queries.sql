CREATE TABLE departments (
  dept_no VARCHAR(5) NOT NULL,
  dept_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (dept_no)
)

CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL ,
  title VARCHAR(255) NOT NULL,
  PRIMARY KEY (title_id)
)

CREATE TABLE employees (
  emp_no int NOT NULL,
  emp_title VARCHAR(255) NOT NULL references titles(title_id),
  birth_date VARCHAR(255) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  sex VARCHAR(255) NOT NULL,
  hire_date VARCHAR(10) NOT NULL,
  PRIMARY KEY (emp_no)
)

CREATE TABLE dept_emp (
  emp_no int NOT NULL references employees(emp_no),
  dept_no VARCHAR(5) NOT NULL references departments(dept_no)
)

CREATE TABLE dept_manager (
  dept_no VARCHAR(5) NOT NULL references departments(dept_no),
  emp_no int NOT NULL references employees(emp_no)
)

CREATE TABLE salaries (
  emp_no int NOT NULL references employees(emp_no),
  salary money NOT NULL
)


-- DATA ANALYSIS

-- Q1 - List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

-- Q2 - List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE RIGHT(hire_date,4) = '1986';

-- Q3 - List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no;

-- Q4 - List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no;

-- Q5 - List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND LEFT(last_name,1)='B';

-- Q6 - List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

-- Q7 - List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- Q8 - List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT 
  employees.last_name, 
  COUNT(employees.last_name) as unique_lastname
FROM employees
GROUP BY employees.last_name
ORDER BY employees.last_name;

pg_dump -s 'sql-challenge' 