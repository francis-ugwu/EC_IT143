--Q:  How can I extract the first name from a customer�s full name?

--A: Full name -> ContactName, where the format -> "FirstName LastName"
--Involves splitting the ContactName string into two parts -> First name and last name)
--Google search "How to extract first name and last name"
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name


WITH s1 --Use a Common Table Expression and compare first_name to first_name2
	 AS (SELECT t.ContactName
	          , LEFT(t.ContactName, CHARINDEX(' ' , t.ContactName + ' ') -1) AS first_name
	          ,dbo.udf_parse_first_name(t.ContactName) AS first_name2
          FROM dbo.t_w3_schools_customers AS t)
	SELECT s1.*
	  FROM s1
	WHERE s1.first_name <> s1.first_name2; 