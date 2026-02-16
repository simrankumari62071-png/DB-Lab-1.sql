 SQL> CREATE TABLE Student (
  2      StudentID  CHAR(13) PRIMARY KEY,
  3      Name VARCHAR(50) NOT NULL,
  4      DateOfBirth DATE,
  5      Gender CHAR(1),
  6      ContactNumber VARCHAR(15),
  7      DepartmentID INT,
  8      FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
  9  );

Table created.

SQL> CREATE TABLE Faculty (
  2      FacultyID  CHAR(11) PRIMARY KEY,
  3      Name VARCHAR(50) NOT NULL,
  4      Designation VARCHAR(30),
  5      Email VARCHAR(50),
  6      DepartmentID INT,
  7      FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
  8  );

Table created.

SQL> CREATE TABLE Course (
  2      CourseID  CHAR(5) PRIMARY KEY,
  3      CourseName VARCHAR(50) NOT NULL,
  4      Credits INT,
  5      DepartmentID INT,
  6      FacultyID INT,
  7      FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
  8      FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
  9  );

Table created.

SQL> CREATE TABLE Enrollment (
  2      EnrollmentID  CHAR(10) PRIMARY KEY,
  3      StudentID INT,
  4      CourseID INT,
  5      Semester VARCHAR(10),
  6      Grade VARCHAR(5),
  7      FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
  8      FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
  9  );


Table created.