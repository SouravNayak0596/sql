

Select FirstName, LastName, Age, Salary,
CASE
when jobtitle = 'Salesman' Then Salary +(Salary*.10)
When Jobtitle = 'Accountant' then Salary +(Salary*0.05)
When jobtitle = 'HR' then Salary + (Salary*0.01)
Else Salary + (Salary*0.03)
End as Salary_After_Raise
from EmployeeDemographics
  Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
