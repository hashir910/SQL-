Select *
From Employees


--Q1.Show the names and salaries of all employees, but only those who work in the 'Sales' department.

Select 
	Name,
	Salary
From Employees
Where Department='Sales'

--Q2.List all the different departments that exist in the company — no repeats.

Select Distinct Department
From Employees

--Q3.Show all employee details sorted from the highest salary to the lowest.
Select *
From Employees
Order by Salary Desc

--Q4.Find out how many employees work in each department.

Select 
	Department,
	count(Department)as Employees_in_each_depart
From Employees
Group by Department

-- verifying the answers
Select 
	Name
From Employees
Where Department='Finance'

--Q5.Show the 5 employees who earn the most money.
Select Top (5) * 
From Employees
Order by Salary Desc

--Q6.Find the departments where the average salary paid is more than 45000 — you only care about departments, not individual employees.

Select 
	Department,
	avg(Salary) as Average_salary
From Employees
Group by Department
having avg(Salary)>45000


--Q7.Show all employees who earn more than 40000, ordered by their joining date (earliest first).

Select *
From Employees
Where Salary>40000

--Q8.Find the different cities employees are based in, where more than one employee lives in that city.

Select 
	City,
	Count(*) --count all
From Employees
Group By City
having count(city)>1

--9.List employee names and their departments, but skip anyone whose salary is below 25000.

Select *
From Employees
Where Salary > 25000

--10.Show the 3 most recently joined employees.

Select Top (3) *
From Employees
order by JoiningDate Desc


--Q11.For each department, show the total salary being paid — but only display departments where that total exceeds 200000.

Select 
	Department,
	Sum(salary)
From Employees
Group by Department
having sum(salary)>200000

--Q12.Find how many employees joined the company in each year.

Select 
	Year(JoiningDate),
	count(*)
From Employees
Group By year(JoiningDate)

--Q13.Show all employee records for people named exactly "Ahmed" or living in "Lahore".

Select 
	*
From Employees
Where Name='Ahmed' Or City='Lahore'

--Q14.List all unique job cities, sorted alphabetically.
Select Distinct City
From Employees
Order by City Asc

/*--Q15.You want the average salary per department,
but only for departments that have more than 4 employees,
and you want the results sorted from highest average to lowest*/

Select 
	Department,
	Count(*),
	AVG(Salary)
From Employees
Group By Department
Having Count(*)>4
Order by Avg(Salary) DESC
--Q16.Find the employee(s) with the single highest salary in the entire company.

Select Top(1) with Ties *
From Employees
Order by Salary Desc

--Q17.Show all employees who have no manager assigned (i.e., they're at the top of the hierarchy).

Select *
From Employees
Where ManagerID is Null

--Q18. Find the top 3 cities that have the highest total number of employees.
Select Top 3
	City,
	Count(*)
From Employees
Group by City
Order by Count(City) Desc


--Q19. List all employees earning between 30000 and 70000, sorted by department, and within each department by salary descending.

Select 
 Department,
 Salary
From Employees
Where Salary Between 30000 and 70000
Order by Department ASC, Salary DESC

--Q20. Find which departments have fewer than 3 employees.

Select 
	Department,
	Count(Department)
From Employees
Group by Department
Having Count(Department)<3