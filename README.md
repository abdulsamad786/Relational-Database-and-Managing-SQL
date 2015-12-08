# Relational-Database-and-Managing-SQL
Final Project for Relational Database, which is about creating a database NamesInc and providing six tables schema. The schema is provided 
in the following format:

Names Inc Schema
© 2013, 2014 Niket Patwardhan
Places
Info
Payments
Suppliers
Employees Departments
10/11/2014

Places:
• PlaceID (key)
• Latitude (Btree Index)
• Longitude (Btree Index)
• Elevation
• Population
• Type
• Country
• **AddressInfo
• **ASCIIName
Legend: ** Double asterick items optional

Info
• InfoID (key)
• Name (Btree Index)
• Language
• Status
• Standard
• PlaceID
*Status is “type of
name”
• SupplierID
• DateSupplied
• **Latitude
• **Longitude
• **Elevation
• **Population
• ** AddressInfo
• **Amount
(This is more like a relationship between place & supplier)


Supplier
• SupplierID (key)
• Name
• Country
• ReliabilityScore
• ContactInfo
•  **ProductivityScore

Payment
• SupplierID
• Date
• Amount
• PaymentID (key)

Department
• DeptID (key)
• DeptName
• DeptHeadID
• DeptHeadUserID
• DeptAA
• ParentDeptID
• ** Location
• ** DeptType

Employee
• EmpID (key)
• Name
• TaxID
• Country
• HireDate
• BirthDate
• Salary
• Bonus
• DeptID
• Salary > 0
• Bonus =< Salary
• **AddressInfo

Access Rights/Constraints
• All employees can see place and name
information
• Only HR employees can access all HR info.
• Only some HR employees can change the
information in the HR portion of the DB
• Managers can see their employee information
• Managers can update their employee
compensation.
• Every employee will be in some existing
department.




These were the queries required to be generated for the project:

Queries/Reports
1. Find the elevation and population of a Place
2. Find a place by a partial name.
3. Find a place in a latitude/longitude box (within a range of latitudes/longitudes)
4. Find a place by any of its names, listing its type, latitude, longitude, country, population and
elevation.
5. List all the alternate names of a place, along with language, type of name, and standard.
6. Find the supplier who supplied a particular name, along with other information about the
supplier.
7. Find how many more names are in each language this month (you can assume none are deleted –
ever!)
8. Find how much was paid out this month, total
9. Find how much was paid out this month, by supplier.
10. Show all employee information in a particular department.
11. Increase salary by 10% and set bonus to 0 for all employees in a particular department.
12. Show all current employee information sorted by manager name and employee name.
13. Show all supplier information sorted by country, including number of names supplied in current
month and potential suppliers.
14. Describe how you implemented the access restrictions on the next page.
15. Describe how you implement the constraints on the employee and department information.
© 2013, 10/11/2014 2014 Niket Patwardhan
