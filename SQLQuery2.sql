--1

CREATE DATABASE Universitate;
GO
ALTER DATABASE Universitate COLLATE SQL_Romanian_CP1250_CS_AS;
GO

-- 2 && 3

USE Universitate;

CREATE TABLE Orase (
	Id int IDENTITY(1,1) PRIMARY KEY,
	Denumire NVARCHAR(255) NOT NULL
);

CREATE TABLE Grupa (
	Id int IDENTITY(1,1) PRIMARY KEY,
	Denumire NVARCHAR(255) NOT NULL
);

CREATE TABLE Student (
	Id int IDENTITY(1,1) PRIMARY KEY,
	Grupa int FOREIGN KEY REFERENCES Grupa(Id),
	Oras int FOREIGN KEY REFERENCES Orase(Id),
	Nume NVARCHAR(255) NOT NULL,
	Prenume NVARCHAR(255) NOT NULL
);

CREATE TABLE Materie (
	Id int IDENTITY(1,1) PRIMARY KEY,
	Nume NVARCHAR(255) NOT NULL
);

CREATE TABLE Note (
	Id int IDENTITY(1,1) PRIMARY KEY,
	Student int FOREIGN KEY REFERENCES Student(Id),
	Materia int FOREIGN KEY REFERENCES Materie(Id),
	Nota int NOT NULL
);

GO

--4
INSERT INTO Orase(Denumire) VALUES ('Ploieşti');
INSERT INTO Orase(Denumire) VALUES ('Piteşti');
INSERT INTO Orase(Denumire) VALUES ('Constanţa');
INSERT INTO Orase(Denumire) VALUES ('Bucureşti');
INSERT INTO Orase(Denumire) VALUES ('Călăraşi'); 
INSERT INTO Orase(Denumire) VALUES ('Iaşi'); 
INSERT INTO Orase(Denumire) VALUES ('Slobozia'); 
INSERT INTO Orase(Denumire) VALUES ('Sibiu'); 
INSERT INTO Orase(Denumire) VALUES ('Cluj-Napoca'); 
INSERT INTO Orase(Denumire) VALUES ('Braşov'); 
INSERT INTO Orase(Denumire) VALUES ('Feteşti'); 
INSERT INTO Orase(Denumire) VALUES ('Satu-Mare'); 
INSERT INTO Orase(Denumire) VALUES ('Oradea'); 
INSERT INTO Orase(Denumire) VALUES ('Cernavodă');



INSERT INTO Grupa(Denumire) VALUES ('A');
INSERT INTO Grupa(Denumire) VALUES ('B');
INSERT INTO Grupa(Denumire) VALUES ('C');
INSERT INTO Grupa(Denumire) VALUES ('D');



INSERT INTO Materie(Nume) VALUES ('Geometrie');
INSERT INTO Materie(Nume) VALUES ('Algebră');
INSERT INTO Materie(Nume) VALUES ('Statistică'); 
INSERT INTO Materie(Nume) VALUES ('Trigonometrie'); 
INSERT INTO Materie(Nume) VALUES ('Muzică'); 
INSERT INTO Materie(Nume) VALUES ('Desen'); 
INSERT INTO Materie(Nume) VALUES ('Sport'); 
INSERT INTO Materie(Nume) VALUES ('Filozofie'); 
INSERT INTO Materie(Nume) VALUES ('Literatură'); 
INSERT INTO Materie(Nume) VALUES ('Engleză'); 
INSERT INTO Materie(Nume) VALUES ('Fizică'); 
INSERT INTO Materie(Nume) VALUES ('Franceză');
INSERT INTO Materie(Nume) VALUES ('Chimie');



INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (1, 1, 'Popescu', 'Mihai');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (1, 4, 'Ionescu', 'Andrei');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (1, 3, 'Ionescu', 'Andreea');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (1, 5, 'Dinu', 'Nicolae');
			
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (2, 14, 'Constantin', 'Ionuţ');	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (2, 6, 'Simion', 'Mihai');	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (2, 14, 'Constantinescu', 'Ana-Maria');	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (2, 6, 'Amăriuţei', 'Eugen');	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (2, 8, 'Ştirbei', 'Alexandru');	
	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (3, 10, 'Dumitru', 'Angela');	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (3, 13, 'Dumitrache', 'Ion');	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (3, 13, 'Şerban', 'Maria-Magdalena');	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (3, 9, 'Chelaru', 'Violeta');	
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (3, 9, 'Sandu', 'Daniel');	
								
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (4, 12, 'Marinache', 'Alin');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (4, 12, 'Panait', 'Vasile');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (4, 11, 'Popa', 'Mirela');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (4, 11, 'Dascălu', 'Daniel Ştefan');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (4, 11, 'Georgescu', 'Marian');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (4, 1, 'Dumitraşcu', 'Marius');
INSERT INTO Student(Grupa, Oras, Nume, Prenume) VALUES (4, 4, 'Dinu', 'Ionela');	



INSERT INTO Note(Student, Materia, Nota) Values(1, 13, 7);
INSERT INTO Note(Student, Materia, Nota) Values(1, 11, 4);
INSERT INTO Note(Student, Materia, Nota) Values(1, 12, 7);
INSERT INTO Note(Student, Materia, Nota) Values(1, 11, 6);


INSERT INTO Note(Student, Materia, Nota) Values(2, 2, 5);
INSERT INTO Note(Student, Materia, Nota) Values(2, 3, 9);
INSERT INTO Note(Student, Materia, Nota) Values(2, 5, 6);
INSERT INTO Note(Student, Materia, Nota) Values(2, 11, 9);
INSERT INTO Note(Student, Materia, Nota) Values(2, 13, 10);
INSERT INTO Note(Student, Materia, Nota) Values(2, 7, 8);


INSERT INTO Note(Student, Materia, Nota) Values(3, 7, 1);
INSERT INTO Note(Student, Materia, Nota) Values(3, 9, 2);
INSERT INTO Note(Student, Materia, Nota) Values(3, 12, 9);
INSERT INTO Note(Student, Materia, Nota) Values(3, 7, 5);
INSERT INTO Note(Student, Materia, Nota) Values(3, 9, 4);
INSERT INTO Note(Student, Materia, Nota) Values(3, 9, 7);


INSERT INTO Note(Student, Materia, Nota) Values(4, 13, 8);
INSERT INTO Note(Student, Materia, Nota) Values(4, 2, 9);
INSERT INTO Note(Student, Materia, Nota) Values(4, 3, 10);


INSERT INTO Note(Student, Materia, Nota) Values(5, 2, 10);
INSERT INTO Note(Student, Materia, Nota) Values(5, 7, 10);
INSERT INTO Note(Student, Materia, Nota) Values(5, 11, 8);


INSERT INTO Note(Student, Materia, Nota) Values(6, 11, 8);
INSERT INTO Note(Student, Materia, Nota) Values(6, 2, 8);
INSERT INTO Note(Student, Materia, Nota) Values(6, 7, 3);
INSERT INTO Note(Student, Materia, Nota) Values(6, 7, 3);
INSERT INTO Note(Student, Materia, Nota) Values(6, 7, 1);
INSERT INTO Note(Student, Materia, Nota) Values(6, 7, 1);
												

INSERT INTO Note(Student, Materia, Nota) Values(7, 7, 5);
INSERT INTO Note(Student, Materia, Nota) Values(7, 11, 8);
INSERT INTO Note(Student, Materia, Nota) Values(7, 2, 2);
INSERT INTO Note(Student, Materia, Nota) Values(7, 2, 5);


INSERT INTO Note(Student, Materia, Nota) Values(8, 2, 6);
INSERT INTO Note(Student, Materia, Nota) Values(8, 7, 10);
INSERT INTO Note(Student, Materia, Nota) Values(8, 12, 7);


INSERT INTO Note(Student, Materia, Nota) Values(9, 13, 9);
INSERT INTO Note(Student, Materia, Nota) Values(9, 11, 2);
INSERT INTO Note(Student, Materia, Nota) Values(9, 7, 1);
INSERT INTO Note(Student, Materia, Nota) Values(9, 11, 2);
INSERT INTO Note(Student, Materia, Nota) Values(9, 11, 5);
INSERT INTO Note(Student, Materia, Nota) Values(9, 7, 6);


INSERT INTO Note(Student, Materia, Nota) Values(10, 6, 9);
INSERT INTO Note(Student, Materia, Nota) Values(10, 8, 7);
INSERT INTO Note(Student, Materia, Nota) Values(10, 10, 9);


INSERT INTO Note(Student, Materia, Nota) Values(11, 6, 8);
INSERT INTO Note(Student, Materia, Nota) Values(11, 3, 2);
INSERT INTO Note(Student, Materia, Nota) Values(11, 8, 7);
INSERT INTO Note(Student, Materia, Nota) Values(11, 3, 6);


INSERT INTO Note(Student, Materia, Nota) Values(12, 10, 7);
INSERT INTO Note(Student, Materia, Nota) Values(12, 8, 4);
INSERT INTO Note(Student, Materia, Nota) Values(12, 6, 8);
INSERT INTO Note(Student, Materia, Nota) Values(12, 8, 4);
INSERT INTO Note(Student, Materia, Nota) Values(12, 8, 4);


INSERT INTO Note(Student, Materia, Nota) Values(13, 12, 1);
INSERT INTO Note(Student, Materia, Nota) Values(13, 6, 3);
INSERT INTO Note(Student, Materia, Nota) Values(13, 10, 10);
INSERT INTO Note(Student, Materia, Nota) Values(13, 12, 6);
INSERT INTO Note(Student, Materia, Nota) Values(13, 6, 1);


INSERT INTO Note(Student, Materia, Nota) Values(14, 6, 3);
INSERT INTO Note(Student, Materia, Nota) Values(14, 8, 9);
INSERT INTO Note(Student, Materia, Nota) Values(14, 12, 4);
INSERT INTO Note(Student, Materia, Nota) Values(14, 6, 8);
INSERT INTO Note(Student, Materia, Nota) Values(14, 12, 5);


INSERT INTO Note(Student, Materia, Nota) Values(15, 6, 7);
INSERT INTO Note(Student, Materia, Nota) Values(15, 11, 8);
INSERT INTO Note(Student, Materia, Nota) Values(15, 10, 5);


INSERT INTO Note(Student, Materia, Nota) Values(16, 7, 5);
INSERT INTO Note(Student, Materia, Nota) Values(16, 6, 7);
INSERT INTO Note(Student, Materia, Nota) Values(16, 3, 10);
INSERT INTO Note(Student, Materia, Nota) Values(16, 11, 8);
INSERT INTO Note(Student, Materia, Nota) Values(16, 9, 6);
INSERT INTO Note(Student, Materia, Nota) Values(16, 8, 9);


INSERT INTO Note(Student, Materia, Nota) Values(17, 10, 3);
INSERT INTO Note(Student, Materia, Nota) Values(17, 8, 6);
INSERT INTO Note(Student, Materia, Nota) Values(17, 6, 6);
INSERT INTO Note(Student, Materia, Nota) Values(17, 10, 6);


INSERT INTO Note(Student, Materia, Nota) Values(18, 11, 4);
INSERT INTO Note(Student, Materia, Nota) Values(18, 12, 9);
INSERT INTO Note(Student, Materia, Nota) Values(18, 3, 10);
INSERT INTO Note(Student, Materia, Nota) Values(18, 11, 2);
INSERT INTO Note(Student, Materia, Nota) Values(18, 11, 1);
INSERT INTO Note(Student, Materia, Nota) Values(18, 11, 3);
INSERT INTO Note(Student, Materia, Nota) Values(18, 11, 5);


INSERT INTO Note(Student, Materia, Nota) Values(19, 12, 10);
INSERT INTO Note(Student, Materia, Nota) Values(19, 10, 10);
INSERT INTO Note(Student, Materia, Nota) Values(19, 11, 8);


INSERT INTO Note(Student, Materia, Nota) Values(20, 7, 5);
INSERT INTO Note(Student, Materia, Nota) Values(20, 2, 6);
INSERT INTO Note(Student, Materia, Nota) Values(20, 13, 2);
INSERT INTO Note(Student, Materia, Nota) Values(20, 13, 2);
INSERT INTO Note(Student, Materia, Nota) Values(20, 13, 5);


INSERT INTO Note(Student, Materia, Nota) Values(21, 5, 9);
INSERT INTO Note(Student, Materia, Nota) Values(21, 9, 8);
INSERT INTO Note(Student, Materia, Nota) Values(21, 7, 8);


-- 5
SELECT COUNT(*)
FROM Orase;


-- 6
SELECT COUNT(DISTINCT(Materia))
FROM Note;


-- 7
SELECT Nume, Prenume
FROM Student
ORDER BY Nume, Prenume;


-- 8
SELECT Nume, Prenume
FROM Student
WHERE Prenume LIKE '% %' OR Prenume LIKE '%-%';


--9
SELECT Nume, Prenume
FROM Student;


--10
SELECT Denumire
FROM Orase
WHERE Id NOT IN (SELECT DISTINCT(Oras)
				FROM Student);


--11
SELECT Grupa
FROM Student
GROUP BY Grupa
HAVING COUNT(*) >= 5;


--12
SELECT TOP 1 Grupa
FROM Student
GROUP BY Grupa
ORDER BY COUNT(*) DESC;


--13
SELECT Nume
FROM Materie
Where Id NOT IN (SELECT DISTINCT(Materia)
				FROM Note);


--14
SELECT Student 
FROM (SELECT Student, COUNT(DISTINCT(Materia)) as NrMaterii FROM Note GROUP BY Student) A
WHERE NrMaterii > 3;


--15
SELECT Student, AVG(CAST(Nota AS FLOAT)) as Media
FROM Note
WHERE Id in (SELECT MAX(Id)
			FROM Note
			GROUP BY Student, Materia)
GROUP BY Student;


--16
SELECT Top 1 Grupa, AVG(A.Nota) as Medie
FROM Student
INNER JOIN (SELECT Student, AVG(CAST(Nota AS FLOAT)) Nota
			FROM Note
			WHERE Id in (SELECT MAX(Id)
						FROM Note
						GROUP BY Student, Materia)
			GROUP BY Student) A on A.Student = Student.Id
GROUP BY Grupa
ORDER BY Medie DESC;


--17
SELECT Student
FROM (SELECT Student, AVG(CAST(Nota AS FLOAT)) Nota
	FROM Note
	WHERE Id in (SELECT MAX(Id)
				FROM Note
				GROUP BY Student, Materia)
	GROUP BY Student) A
WHERE Nota >= 8.5;

--18
/*
 Aici am selectat doar studentii care au mai mult de o nota la Chimie
 Pentru ai selecta si pe ceilalti stergem partea cu Having
*/
SELECT Student
FROM Note
WHERE Student in (SELECT Student
				FROM (SELECT Student, MIN(Id) as Id
						FROM Note
						WHERE Materia = 13
						GROUP BY Student, Materia) B) 
	AND Student in (SELECT Student
					FROM (SELECT Student, MAX(Id) as Id
					FROM Note
					WHERE Materia = 13
					GROUP BY Student, Materia) A)
	AND Materia = 13
GROUP BY Student
HAVING COUNT(Materia) > 1 AND MIN(Nota) < 5 AND MAX(Nota) >= 5;


-- 19
SELECT Student
FROM (SELECT top 1 Student, Materia, Count(Nota) as NrNoteMaterie
	FROM Note
	GROUP BY Student, Materia
	ORDER BY NrNoteMaterie DESC) A;


-- 20
SELECT Student, Materia, Count(Nota) as NrNoteMaterie
FROM Note
GROUP BY Student, Materia
ORDER BY Student;

-- 21
SELECT Student
FROM Note
WHERE Id in (SELECT MAX(Id)
			FROM Note
			GROUP BY Student, Materia)
	AND Nota < 5
GROUP BY Student;


--22
INSERT INTO Grupa(Denumire) VALUES ('E');

UPDATE
	Student
SET
	Grupa = 5
WHERE
	Id in (SELECT Student
			FROM Note
			WHERE Id in (SELECT MAX(Id)
					FROM Note
					GROUP BY Student, Materia)
				AND Nota < 5
			GROUP BY Student)


--23
DECLARE @StudentId INT;
SELECT TOP 1 @StudentId = Student
FROM Note
WHERE Id in (SELECT MAX(Id)
			FROM Note
			GROUP BY Student, Materia)
GROUP BY Student
ORDER BY AVG(CAST(Nota AS FLOAT)) ASC;

DELETE FROM Note
WHERE Student = @StudentId;

DELETE FROM Student
WHERE Id = @StudentId;

-- SAU

DELETE FROM Note
WHERE Student = (SELECT top 1 Student
				FROM Note
				WHERE Id in (SELECT MAX(Id)
							FROM Note
							GROUP BY Student, Materia)
				GROUP BY Student
				ORDER BY AVG(CAST(Nota AS FLOAT)) ASC);

alter table Note nocheck constraint all

DELETE FROM Student
WHERE Id = (SELECT top 1 Student
			FROM Note
			WHERE Id in (SELECT MAX(Id)
						FROM Note
						GROUP BY Student, Materia)
			GROUP BY Student
			ORDER BY AVG(CAST(Nota AS FLOAT)) ASC);

alter table Note check constraint all


--24
SELECT Nume as Familia, STRING_AGG(Prenume, ', ') as Fratii
FROM  Student
GROUP BY Nume
HAVING COUNT(*) > 1

-- DE MENTIONAT CA DACA VREUM SA AFISAT NUMELE RESPECTIV IN LOC DE ID AR TREBUI SA FACEM UN JOIN PE TABELA RESPECTIVA