Select * from Employee_Detail_tbl

insert into EMPLOYEE_DETAIL_TBL values
('VIKAS','AHLAWAT', 600000,'2013-02-15 11:16:28.290', 'IT', 'MALE'),
('NIKITA','JAIN', 530000, '2014-01-09 17:31:07.793', 'HR', 'FEMALE'),
('ASHISH','KUMAR', 1000000, '2014-01-09 10:05:07.793', 'IT', 'MALE'),
('NIKHIL','SHARMA', 480000, '2014-01-09 09:00:07.793', 'HR', 'MALE'),
('ANISH','KADIAN', 500000, '2014-01-09 09:31:07.793', 'PAYROLL', 'MALE')

--Ques 1- Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'--

SELECT * FROM EMPLOYEE_DETAIL_TBL WHERE FNAME LIKE '[^A-P]%'

--Ques 2- Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' 
--and contain 4 letters. The Underscore(_) Wildcard Character represents any single 
--character.
SELECT * FROM EMPLOYEE_DETAIL_TBL WHERE Gender LIKE '__LE'

--Ques 3- Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' 
--and contain 5 letters.
SELECT * FROM EMPLOYEE_DETAIL_TBL WHERE FNAME LIKE 'a____'

--Ques 4- Get all employee detail from EmployeeDetail table whose "FirstName" containing 
--'%'. ex:-"Vik%as"
SELECT * FROM EMPLOYEE_DETAIL_TBL WHERE FNAME LIKE '%[%]%'

--Ques 5- Get all unique "Department" from EmployeeDetail table.SELECT DISTINCT DEPARTMENT FROM EMPLOYEE_DETAIL_TBL--Ques 6- Get the highest "Salary" from EmployeeDetail table.SELECT MAX(Salary) FROM EMPLOYEE_DETAIL_TBL--Ques 7- Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013"SELECT CONVERT(VARCHAR(20),JOININGDATE,106) FROM EMPLOYEE_DETAIL_TBL--Ques 8- Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"SELECT CONVERT(VARCHAR(20),JOININGDATE,111) FROM EMPLOYEE_DETAIL_TBL--Ques 9- Show only time part of the "JoiningDate"SELECT CONVERT(VARCHAR(20),JOININGDATE,108) FROM EMPLOYEE_DETAIL_TBL--ques 10- Get only Year part of "JoiningDate".SELECT CONVERT(VARCHAR(20),JOININGDATE,113) FROM EMPLOYEE_DETAIL_TBL