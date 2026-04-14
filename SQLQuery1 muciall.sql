create database assimnt_depi_1

USE assimnt_depi_1;

CREATE TABLE Musician (
    Musician_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Street VARCHAR(100),
    City VARCHAR(50),
    Phone_Number VARCHAR(20)
);

CREATE TABLE Instrument (
    Instrument_Key INT PRIMARY KEY,
    Instrument_Name VARCHAR(100)
);

CREATE TABLE Album (
    Album_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Copy_Right VARCHAR(100)
);

CREATE TABLE Song (
    Song_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Album_ID INT,
    FOREIGN KEY (Album_ID) REFERENCES Album(Album_ID)
);

CREATE TABLE Play (
    Musician_ID INT,
    Instrument_Key INT,
    PRIMARY KEY (Musician_ID, Instrument_Key),
    FOREIGN KEY (Musician_ID) REFERENCES Musician(Musician_ID),
    FOREIGN KEY (Instrument_Key) REFERENCES Instrument(Instrument_Key)
);
CREATE TABLE Perform (
    Musician_ID INT,
    Song_ID INT,
    PRIMARY KEY (Musician_ID, Song_ID),
    FOREIGN KEY (Musician_ID) REFERENCES Musician(Musician_ID),
    FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID)
);



CREATE TABLE Produce (
    Musician_ID INT,
    Album_ID INT,
    PRIMARY KEY (Musician_ID, Album_ID),
    FOREIGN KEY (Musician_ID) REFERENCES Musician(Musician_ID),
    FOREIGN KEY (Album_ID) REFERENCES Album(Album_ID)
);

INSERT INTO Musician (Musician_ID, Name, Street, City, Phone_Number)
VALUES
(1, 'Ahmed Ali', 'Tahrir St', 'Cairo', '01012345678'),
(2, 'Mohamed Hassan', 'Nile St', 'Giza', '01198765432'),
(3, 'Sara Youssef', 'Alex Rd', 'Alexandria', '01255544321');



INSERT INTO Musician (Musician_ID, Name, Street, City, Phone_Number)
VALUES (4, 'mahmoude ramy', 'dokkia st', 'cairo', '012549594958') ,
(5, 'mohmed mom', 'Nile st', 'cairo', '01144584865'),
(6, 'hassan nour', 'agouza st', 'giza', '01002365147'),
(7, 'mathat salah', 'zmailk st', 'cairo', '01115236974'),
(8, 'omer hossam', 'haram st', 'giza', '01523588520'),
(9, 'amr ahmed', 'fisel st', 'cairo', '01225634289'),
(10, 'zen ali', 'dokkia st', 'giza', '01223652036');

select * from Musician 

INSERT INTO Instrument (Instrument_Key, Instrument_Name)
VALUES
(11, 'hassan'),
(12, 'ali'),
(13, 'ahmed'),
(14, 'hossam');

select * from Instrument

INSERT INTO Album (Album_ID, Title, Copy_Right)
VALUES 
(1, 'Nile Echoes', 'Valeo Egypt'),
(2, 'Midnight Rhythms', 'Valeo Egypt'),
(3, 'Desert Winds', 'Valeo Egypt'),
(4, 'Cairo Jazz Sessions', 'Valeo Egypt'),
(5, 'The Golden Era', 'Valeo Egypt');

select * from Album

INSERT INTO Song (Song_ID, Title, Author, Album_ID)
VALUES
(1, 'Dream Night', 'Ahmed Ali', 1),
(2, 'Lost Love', 'Sara Adel', 1),
(3, 'Old Memories', 'Mohamed Hassan', 2),
(4, 'City Lights', 'Omar Khaled', 2),
(5, 'Final Goodbye', 'Lina Mostafa', 3);

select * from song

INSERT INTO Play (Musician_ID, Instrument_Key)
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2);

select * from Play

INSERT INTO Perform (Musician_ID, Song_ID)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5);

select * from Perform

INSERT INTO Produce (Musician_ID, Album_ID)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(2, 2);

select * from Produce
