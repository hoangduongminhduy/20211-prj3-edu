-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
CREATE DATABASE IF NOT EXISTS db_15;

USE db_15;

--
-- Drop table `notification`
--
DROP TABLE IF EXISTS notification;

--
-- Drop table `point`
--
DROP TABLE IF EXISTS point;

--
-- Drop table `class`
--
DROP TABLE IF EXISTS class;

--
-- Drop table `student`
--
DROP TABLE IF EXISTS student;

--
-- Drop table `studentclass`
--
DROP TABLE IF EXISTS studentclass;

--
-- Drop table `subject`
--
DROP TABLE IF EXISTS subject;

--
-- Drop table `teacher`
--
DROP TABLE IF EXISTS teacher;

--
-- Set default database
--
USE db_15;

--
-- Create table `teacher`
--
CREATE TABLE teacher (
  guid char(36) NOT NULL,
  teacherID char(9) NOT NULL,
  password varchar(20) NOT NULL,
  fullName varchar(100) NOT NULL,
  birthday date DEFAULT NULL,
  gender char(3) DEFAULT NULL,
  phoneNumber varchar(11) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  department varchar(100) DEFAULT NULL,
  brief text DEFAULT NULL,
  PRIMARY KEY (guid)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 819,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Create index `teacherID` on table `teacher`
--
ALTER TABLE teacher
ADD INDEX teacherID (teacherID);

--
-- Create index `UK_teacher_teacherID` on table `teacher`
--
ALTER TABLE teacher
ADD UNIQUE INDEX UK_teacher_teacherID (teacherID);

--
-- Create table `subject`
--
CREATE TABLE subject (
  guid char(36) NOT NULL,
  subjectID char(7) NOT NULL,
  ratio int(11) NOT NULL,
  subjectName varchar(100) NOT NULL,
  description varchar(255) DEFAULT NULL,
  PRIMARY KEY (guid)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 2730,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Create index `subjectID` on table `subject`
--
ALTER TABLE subject
ADD INDEX subjectID (subjectID);

--
-- Create index `UK_subject_subjectID` on table `subject`
--
ALTER TABLE subject
ADD UNIQUE INDEX UK_subject_subjectID (subjectID);

--
-- Create table `studentclass`
--
CREATE TABLE studentclass (
  guid char(36) NOT NULL,
  studentclassID char(6) NOT NULL,
  studentclassName varchar(255) DEFAULT NULL,
  nbOfStudent int(11) DEFAULT NULL,
  K int(11) DEFAULT NULL,
  PRIMARY KEY (guid)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 819,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Create index `studentClassID` on table `studentclass`
--
ALTER TABLE studentclass
ADD INDEX studentClassID (studentclassID);

--
-- Create index `UK_studentclass_studentClassID` on table `studentclass`
--
ALTER TABLE studentclass
ADD UNIQUE INDEX UK_studentclass_studentClassID (studentclassID);

--
-- Create table `student`
--
CREATE TABLE student (
  guid char(36) NOT NULL,
  studentID char(9) NOT NULL,
  password varchar(20) NOT NULL,
  fullName varchar(100) NOT NULL,
  birthday date DEFAULT NULL,
  gender char(3) DEFAULT NULL,
  phoneNumber varchar(11) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  studentClassID char(6) DEFAULT NULL,
  PRIMARY KEY (guid)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 819,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Create index `studentID` on table `student`
--
ALTER TABLE student
ADD INDEX studentID (studentID);

--
-- Create index `UK_student_studentID` on table `student`
--
ALTER TABLE student
ADD UNIQUE INDEX UK_student_studentID (studentID);

--
-- Create foreign key
--
ALTER TABLE student
ADD CONSTRAINT FK_student_studentClassID FOREIGN KEY (studentClassID)
REFERENCES studentclass (studentclassID) ON DELETE NO ACTION;

--
-- Create table `class`
--
CREATE TABLE class (
  guid char(36) NOT NULL,
  classID char(6) NOT NULL,
  semester char(5) NOT NULL,
  teacherID char(9) NOT NULL,
  subjectID char(7) NOT NULL,
  classroomName varchar(9) NOT NULL,
  studentClassID char(6) NOT NULL,
  schedule varchar(100) NOT NULL,
  PRIMARY KEY (guid)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 819,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Create index `classID` on table `class`
--
ALTER TABLE class
ADD INDEX classID (classID);

--
-- Create index `UK_class_classID` on table `class`
--
ALTER TABLE class
ADD UNIQUE INDEX UK_class_classID (classID);

--
-- Create foreign key
--
ALTER TABLE class
ADD CONSTRAINT class_ibfk_1 FOREIGN KEY (studentClassID)
REFERENCES studentclass (studentclassID) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Create foreign key
--
ALTER TABLE class
ADD CONSTRAINT class_ibfk_2 FOREIGN KEY (subjectID)
REFERENCES subject (subjectID) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Create foreign key
--
ALTER TABLE class
ADD CONSTRAINT class_ibfk_3 FOREIGN KEY (teacherID)
REFERENCES teacher (teacherID) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Create table `point`
--
CREATE TABLE point (
  guid char(36) NOT NULL,
  studentID char(9) NOT NULL,
  midterm float NOT NULL,
  final float NOT NULL,
  classID char(6) NOT NULL DEFAULT ''
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 819,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Create foreign key
--
ALTER TABLE point
ADD CONSTRAINT FK_point_classID FOREIGN KEY (classID)
REFERENCES class (classID) ON DELETE NO ACTION;

--
-- Create foreign key
--
ALTER TABLE point
ADD CONSTRAINT point_ibfk_1 FOREIGN KEY (studentID)
REFERENCES student (studentID) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Create table `notification`
--
CREATE TABLE notification (
  guid char(36) NOT NULL,
  senderID char(9) NOT NULL,
  classID char(6) NOT NULL,
  sendTime datetime NOT NULL,
  title varchar(100) DEFAULT NULL,
  message varchar(255) NOT NULL,
  PRIMARY KEY (guid)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 819,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Create foreign key
--
ALTER TABLE notification
ADD CONSTRAINT notification_ibfk_1 FOREIGN KEY (classID)
REFERENCES class (classID) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Dumping data for table teacher
--
-- Table db_15.teacher does not contain any data (it is empty)

-- 
-- Dumping data for table subject
--
-- Table db_15.subject does not contain any data (it is empty)

-- 
-- Dumping data for table studentclass
--
-- Table db_15.studentclass does not contain any data (it is empty)

-- 
-- Dumping data for table student
--
-- Table db_15.student does not contain any data (it is empty)

-- 
-- Dumping data for table class
--
-- Table db_15.class does not contain any data (it is empty)

-- 
-- Dumping data for table point
--
-- Table db_15.point does not contain any data (it is empty)

-- 
-- Dumping data for table notification
--
-- Table db_15.notification does not contain any data (it is empty)

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;