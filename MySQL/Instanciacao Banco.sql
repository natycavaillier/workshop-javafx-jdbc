CREATE DATABASE coursejdbc;
USE coursejdbc;

CREATE TABLE department (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(60) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE seller (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(60) NOT NULL,
  Email varchar(100) NOT NULL,
  BirthDate datetime NOT NULL,
  BaseSalary double NOT NULL,
  DepartmentId int(11) NOT NULL,
  PRIMARY KEY (Id),
  FOREIGN KEY (DepartmentId) REFERENCES department (id)
);

INSERT INTO department (Name) VALUES 
  ('Computers'),
  ('Electronics'),
  ('Fashion'),
  ('Books');

INSERT INTO seller (Name, Email, BirthDate, BaseSalary, DepartmentId) VALUES 
  ('Gabriela Sena','gabriela@gmail.com','1998-04-21 00:00:00',1000,1),
  ('Ellie Cavaillier','ellie@gmail.com','1979-12-31 00:00:00',3500,2),
  ('Patricia Ribeiro','patricia@gmail.com','1988-01-15 00:00:00',2200,1),
  ('Gelton Abreu','gelton@gmail.com','1993-11-30 00:00:00',3000,4),
  ('Dede Abreu','dede@gmail.com','2000-01-09 00:00:00',4000,3),
  ('Rafael Ribeiro','rafael@gmail.com','1997-03-04 00:00:00',3000,2),
  ('Natalia Cavaillier','natalia@gmail.com','2000-09-11 00:00:00',3000,2);
  
  SELECT * FROM department;
  SELECT * FROM seller;