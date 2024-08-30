CREATE TABLE Students (

    /* defining the database tables and the type of values that will be stord in it */

    Student_id INT PRIMARY KEY AUTO_INCREMENT ,
    Name VARCHAR(20) NOT NULL,
    Major VARCHAR(20) UNIQUE DEFAULT('Undesided')
);

/* Start counting the student id from specific number */
ALTER TABLE Students AUTO_INCREMENT = 1000;

/* Describle what is inside the table */
DESCRIBE Students;

/* Deleting the table */
DROP TABLE Students;

/* Adding Coloume to the table */
ALTER TABLE Students ADD GPA DECIMAL(3,2);


/* Deleting specific column inside the table */
ALTER TABLE Students DROP COLUMN GPA ;


/* insert values inside the table */
INSERT INTO Students(Name,Major,GPA) VALUES( 'Mohamed', 'Engineering',3.15);  

/* we can write insert like this */
INSERT INTO Students(Name,GPA) VALUES( 'Mousa',4.00);

INSERT INTO Students(Name,Major,GPA) VALUES( 'Ahmed', 'Medical',3.76);

INSERT INTO Students(Name,Major,GPA) VALUES( 'Osama', 'ART',1.15);
INSERT INTO Students(Name,Major,GPA) VALUES( 'Mostafa', 'Computer science',2.11);
INSERT INTO Students(Name,Major,GPA) VALUES( 'Smr', 'Finance',2.55);
INSERT INTO Students(Name,Major,GPA) VALUES( 'Sarah', 'Communication',3.45);
INSERT INTO Students(Name,Major,GPA) VALUES( 'MOMO', 'Sals',2.35);

SELECT * FROM Students;


/* Updating Rows inside the DB */
-- this change all Engineering inside the column into Eng
UPDATE Students 
SET Major = 'Eng'
WHERE Major = 'Engineering';

-- what if i want to change just one Row value inside the Major Column
UPDATE Students 
SET Major = 'Med'
WHERE Student_id = 3;

DELETE FROM Students
WHERE Name = 'Sarah';


