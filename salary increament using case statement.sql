--Select *
--from EmployeeDemographics
--Full outer join WareHouseEmployeeDemographics
--on EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

--select FirstName,LastName,Age,
--Case
--When age = 38 then 'Stanley'
--When Age > 30 Then 'Old'
--When Age between 27 and 30 Then 'Young'
--Else 'Baby'
--END
--from EmployeeDemographics
--Where Age is not Null
--Order by Age

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