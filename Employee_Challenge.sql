--Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955.

--Deliverable 1: The Number of Retiring Employees by Title

--1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT e.emp_no,
		e.first_name,
		e.last_name,
--2. Retrieve the title, from_date, and to_date columns from the Titles table.
		t.title,
		t.from_date,
		t.to_date
--3. Create a new table using the INTO clause.
INTO retirees_titles
--4. Join both tables on the primary key.
FROM employees AS e
	INNER JOIN titles AS t
		ON (e.emp_no = t.emp_no)
--5. Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955.
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--5.5 Then, order by the employee number.
ORDER BY emp_no ASC;

SELECT * FROM retirees_titles;

-- 6/7/8. SAVE AND EXPORT?

--9. Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
--10. Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
  rt.first_name,
  rt.last_name,
  rt.title
--12. Create a Unique Titles table using the INTO clause.
INTO unique_titles
FROM retirees_titles AS rt
--13. Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.
ORDER BY emp_no, to_date DESC;

--14/15. SAVE AND EXPORT

--16. Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
--17. First, retrieve the number of titles from the Unique Titles table.
-- ^ Then, create a Retiring Titles table to hold the required information.
FROM unique_titles as ut
--19. Group the table by title, then sort the count column in descending order.
GROUP BY title
ORDER BY COUNT(title) DESC;

--20/21. SAVE AND EXPORT

-- Deliverable 2: The Employees Eligible for the Mentorship Program

--1. Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
--2. Retrieve the from_date and to_date columns from the Department Employee table.
	de.from_date,
	de.to_date,
--3. Retrieve the title column from the Titles table.
	t.title
--4. Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--5. Create a new table using the INTO clause.
INTO mentorship_table
--6. Join the Employees and the Department Employee tables on the primary key.
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
--7. Join the Employees and the Titles tables on the primary key.
			INNER JOIN titles AS t
				ON (e.emp_no = t.emp_no)
--8.Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
WHERE (e.birth_date BETWEEN '1962-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
--9. Order the table by the employee number.
ORDER BY emp_no;

--10/11. SAVE AND EXPORT
