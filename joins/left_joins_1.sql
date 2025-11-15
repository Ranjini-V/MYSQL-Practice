# Left Joins

USE practice ;

CREATE TABLE companies ( company_id INT, company_name VARCHAR(20), location VARCHAR(20)) ;
INSERT INTO companies VALUES (1, "TechNova", "Bangalore");
INSERT INTO companies VALUES (2, "DataWorks", "Pune");
INSERT INTO companies VALUES (3, "CodeCrafters", "Delhi");
INSERT INTO companies VALUES (4, "SkyNet", "Chennai");
SELECT * FROM companies ;

CREATE TABLE departments (dept_id INT, dept_name VARCHAR(20), company_id INT);
INSERT INTO departments VALUES (10, "HR", 1);
INSERT INTO departments VALUES (11, "Engineering", 1);
INSERT INTO departments VALUES (12, "Sales", 2);
INSERT INTO departments VALUES (13, "Marketing", 3);
INSERT INTO departments VALUES (14, "R&D", 3);
INSERT INTO departments VALUES (15, "Legal", NULL); 
SELECT * FROM departments ;














