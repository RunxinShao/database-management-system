# Homework 7: Relational Algebra and Triggers - Solution

**Course:** Database Management Systems (DBMS)
**Assignment:** Homework 7
**Due Date:** March 13
**Total Points:** 100 (50 points per exercise)

---

## Overview

This homework consists of two exercises:
1. **Exercise 1 (50 points):** Relational Algebra queries for a Hospital Management System
2. **Exercise 2 (50 points):** SQL Trigger implementation for student class promotion logging

---

## Files Included

1. `Exercise1_Relational_Algebra.txt` - Complete relational algebra solutions
2. `Exercise2_Trigger.sql` - SQL script with table creation and trigger implementation
3. `README.md` - This file (assignment overview and solutions summary)

---

## Exercise 1: Relational Algebra (50 points)

### Database Schema

**Hospital Management System** with the following relations:
- `DOCTORS(ID, name, salary, phone, dname)`
- `DOCTOR_SPECIAL(DID, special)`
- `OPERATIONS(DID, Pnum, type, cond, date)`
- `PATIENTS(Pnum, name, age, phone, address, CDID)`
- `ADMITTED_PATIENTS(Pnum, date, room, cond)`
- `REGULAR_PATIENTS(Pnum, datevisit, prescription, payment)`
- `DEPARTMENTS(name, location, facility)`

### Query Solutions

#### Query 1: Average Doctors' Salary per Department

```
γ dname, AVG(salary) (DOCTORS)
```

**Explanation:** Uses grouping operator to calculate average salary grouped by department name.

---

#### Query 2: Patients Operated on by "Dr. Smith" on "10-23-2022"

```
π PATIENTS.name (
    σ DOCTORS.name='Dr. Smith' ∧ OPERATIONS.date='10-23-2022' (
        DOCTORS ⋈ DOCTORS.ID=OPERATIONS.DID OPERATIONS ⋈ OPERATIONS.Pnum=PATIENTS.Pnum PATIENTS
    )
)
```

**Explanation:**
- Selects Dr. Smith from DOCTORS
- Filters operations for the specific date
- Joins DOCTORS → OPERATIONS → PATIENTS
- Projects patient names

---

#### Query 3: Doctors Who Have No Patients

```
π name (DOCTORS) - π DOCTORS.name (DOCTORS ⋈ ID=DID OPERATIONS ⋈ Pnum=Pnum PATIENTS)
```

**Explanation:**
- Gets all doctor names
- Finds doctors who have performed operations on patients
- Uses set difference to find doctors with no patients

---

## Exercise 2: SQL Trigger (50 points)

### Requirements

Create two tables:
1. `student_mast` - stores student information (STUDENT_ID, NAME, ST_CLASS)
2. `stu_log` - logs changes (user_id, description)

Create an **AFTER UPDATE** trigger that logs each class promotion.

### Solution Highlights

**Trigger Name:** `log_student_promotion`

**Trigger Logic:**
```sql
CREATE TRIGGER log_student_promotion
AFTER UPDATE ON student_mast
FOR EACH ROW
BEGIN
    IF OLD.ST_CLASS != NEW.ST_CLASS THEN
        INSERT INTO stu_log (description)
        VALUES (CONCAT(NEW.STUDENT_ID, ' | student promoted from class ',
                       OLD.ST_CLASS, ' to ', NEW.ST_CLASS));
    END IF;
END
```

**Key Features:**
- Fires AFTER each row update on `student_mast`
- Checks if ST_CLASS changed using `OLD` and `NEW` references
- Inserts formatted log message into `stu_log`
- Auto-increments user_id in stu_log table

### Test Case Example

**Before Update:**
| STUDENT_ID | NAME  | ST_CLASS |
|------------|-------|----------|
| 1          | Alice | 7        |
| 2          | Bob   | 8        |

**SQL Command:**
```sql
UPDATE student_mast SET ST_CLASS = ST_CLASS + 1;
```

**After Update (student_mast):**
| STUDENT_ID | NAME  | ST_CLASS |
|------------|-------|----------|
| 1          | Alice | 8        |
| 2          | Bob   | 9        |

**After Update (stu_log):**
| USER_ID | DESCRIPTION                              |
|---------|------------------------------------------|
| 1       | 1 \| student promoted from class 7 to 8 |
| 2       | 2 \| student promoted from class 8 to 9 |

---

## How to Use

### Exercise 1
Open `Exercise1_Relational_Algebra.txt` to view all three relational algebra queries with detailed explanations.

### Exercise 2
1. Open `Exercise2_Trigger.sql` in your SQL client (MySQL, MariaDB, etc.)
2. Execute the entire script to:
   - Create tables
   - Create trigger
   - Run test data insertion
   - Execute update and view results
3. Verify the trigger works by checking the stu_log table output

---

## Assumptions

### Exercise 1
1. **Department Name (dname):** Assumed DOCTORS.dname is a foreign key referencing DEPARTMENTS.name
2. **Patient Operations:** Assumed OPERATIONS.Pnum correctly links to PATIENTS.Pnum
3. **Doctor-Patient Relationship:** A doctor "has patients" if they have performed operations on them (via OPERATIONS table)
4. **Date Format:** Date comparison in relational algebra assumes exact string match for '10-23-2022'

### Exercise 2
1. **Database System:** Solution written for MySQL/MariaDB syntax
2. **Auto-increment:** user_id in stu_log uses AUTO_INCREMENT for automatic sequential IDs
3. **Trigger Scope:** Trigger only logs when ST_CLASS changes (includes IF condition check)
4. **Description Format:** Uses pipe separator (|) matching the example: "ID | student promoted from class X to Y"
5. **No Deletion/Insertion Logging:** Only UPDATE operations are logged as per requirements

---

## Database Syntax Notes

The SQL trigger is written in **MySQL/MariaDB** syntax. If using a different database system:

- **PostgreSQL:** Replace `AUTO_INCREMENT` with `SERIAL`, adjust delimiter and trigger syntax
- **SQL Server:** Use different trigger syntax (no DELIMITER, different BEGIN/END structure)
- **Oracle:** Use PL/SQL syntax with `:OLD` and `:NEW` notation

---

## Additional Notes

- All relational algebra solutions include both compact and step-by-step notations for clarity
- SQL script includes comprehensive comments and testing framework
- Optional cleanup commands are included but commented out
- Both exercises provide complete, working solutions ready for submission

---

**Submission Checklist:**
- [x] Exercise 1: All 3 relational algebra queries completed
- [x] Exercise 2: Tables created with correct schema
- [x] Exercise 2: Trigger created and tested
- [x] Documentation and explanations provided
- [x] Solutions verified with test cases

---

*End of Solution Document*
