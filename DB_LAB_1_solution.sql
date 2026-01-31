SQL> CREATE TABLE student (
  2  Roll No INT,
  3  Name VARCHAR(50),
  4  Dept VARCHAR(20),
  5  Age INT,
  6  Phone VARCHAR(15)
  7  );
Roll No INT,
        *
ERROR at line 2:
ORA-00907: missing right parenthesis


SQL> CREATE TABLE student (
  2  RollNo INT,
  3  Name VARCHAR(50),
  4  Dept VARCHAR(20),
  5  Age INT,
  6  Phone VARCHAR(15)
  7  );

Table created.

SQL> DESC student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course (
  2  CourseID INT,
  3  CourseName VARCHAR(50),
  4  Credits INT
  5  );

Table created.

SQL> DESC student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> ALTER TABLE Student
  2  ADD City VARCHAR(20);

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(20)

SQL> ALTER TABLE Student
  2  ADD Semester INT;

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(20)
 SEMESTER                                           NUMBER(38)

SQL> ALTER TABLE Student
  2  RENAME COLUMN Phone to MobileNo;

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(20)
 SEMESTER                                           NUMBER(38)

SQL> DROP TABLE Course;

Table dropped.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(20)
 SEMESTER                                           NUMBER(38)

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(20)
 SEMESTER                                           NUMBER(38)

SQL> DESC Course;
ERROR:
ORA-04043: object Course does not exist


SQL> INSERT INTO Student VALUES (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (23701,'SIMRAN','CSE','23','8709566078','Munger',5);
VALUES (23701,'SIMRAN','CSE','23','8709566078','Munger',5)
*
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> INSERT INTO Student VALUES (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (23701,'SIMRAN','CSE',25,'8709566078','Munger',5);
VALUES (23701,'SIMRAN','CSE',25,'8709566078','Munger',5)
*
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> INSERT INTO Student (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (23701,'SIMRAN','CSE',25,'8709566078','Munger',5);

1 row created.

SQL> INSERT INTO Student (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (23706,'ANKITA MISHRA','CSE',25,'7488257986','GOPA
  3
SQL> INSERT INTO Student (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (23706,'ANKITA MISHRA','CSE',25,'7488257986','gopalganj',5);

1 row created.

SQL> INSERT INTO Student (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (23748,'MAYANK RAJ','CSE',25,'7667164472','madhubani',5);

1 row created.

SQL>  INSERT INTO Student (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2   VALUES (23705,'aditi','CSE',25,'7667567436','Munger',5);

1 row created.

SQL> cSQL>
SQL> INSERT INTO Student (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (23721,'SHIVANI KUMARI','CSE',25,'8252132586','Gopalgaj',5);

1 row created.

SQL> SELECT * FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY                   SEMESTER
-------------------- ---------- --------------- -------------------- ----------
     23701 SIMRAN
CSE                          25 8709566078      Munger                        5

     23706 ANKITA MISHRA
CSE                          25 7488257986      gopalganj                     5

     23748 MAYANK RAJ
CSE                          25 7667164472      madhubani                     5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY                   SEMESTER
-------------------- ---------- --------------- -------------------- ----------
     23705 aditi
CSE                          25 7667567436      Munger                        5

     23721 SHIVANI KUMARI
CSE                          25 8252132586      Gopalgaj                      5


SQL> SELECT RollNo, Name FRROM Student;
SELECT RollNo, Name FRROM Student
                          *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> SELECT RollNo, Name FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
     23701 SIMRAN
     23706 ANKITA MISHRA
     23748 MAYANK RAJ
     23705 aditi
     23721 SHIVANI KUMARI

SQL> SELECT * FROM Student
  2  WHERE Dept = 'CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY                   SEMESTER
-------------------- ---------- --------------- -------------------- ----------
     23701 SIMRAN
CSE                          25 8709566078      Munger                        5

     23706 ANKITA MISHRA
CSE                          25 7488257986      gopalganj                     5

     23748 MAYANK RAJ
CSE                          25 7667164472      madhubani                     5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY                   SEMESTER
-------------------- ---------- --------------- -------------------- ----------
     23705 aditi
CSE                          25 7667567436      Munger                        5

     23721 SHIVANI KUMARI
CSE                          25 8252132586      Gopalgaj                      5


SQL> SELECT * FROM Student
  2  WHERE Age > 20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY                   SEMESTER
-------------------- ---------- --------------- -------------------- ----------
     23701 SIMRAN
CSE                          25 8709566078      Munger                        5

     23706 ANKITA MISHRA
CSE                          25 7488257986      gopalganj                     5

     23748 MAYANK RAJ
CSE                          25 7667164472      madhubani                     5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY                   SEMESTER
-------------------- ---------- --------------- -------------------- ----------
     23705 aditi
CSE                          25 7667567436      Munger                        5

     23721 SHIVANI KUMARI
CSE                          25 8252132586      Gopalgaj                      5


SQL> UPDATE Student
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 23701;

1 row updated.

SQL> UPDATE Student
  2  SET City = 'patna'
  3  WHERE Name = 'SIMRAN';

1 row updated.

SQL> UPDATE Student
  2  SET Age = Age + 1;

5 rows updated.

SQL> DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(20)
 SEMESTER                                           NUMBER(38)

SQL> DELETE FROM Student
  2  WHERE RollNo = 23701;

1 row deleted.

SQL> DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(20)
 SEMESTER                                           NUMBER(38)

SQL> DELETE FROM Student;

4 rows deleted.

SQL> DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(20)
 SEMESTER                                           NUMBER(38)


SQL>
