# muscia-Entity-Relationship-Diagram-ERD-
Entity Relationship Diagram examples with solutions.
# ERD
<img width="786" height="614" alt="musical" src="https://github.com/user-attachments/assets/f4cd9b52-8bc5-477f-a87d-14200805ef45" />
# MAPPING
<img width="430" height="367" alt="bc" src="https://github.com/user-attachments/assets/ff396972-1b09-4565-b8a8-00d8e393c7ff" />

Problem 1
Musicana Records has decided to store information on musicians who perform on their albums in a database. 
The company has wisely chosen to hire you as a database designer.
•	Each musician that is recorded at Musicana has an ID number, a name, an address 
(street, city) and a phone number.
•	Each instrument that is used in songs recorded at Musicana has a unique name and 
a musical key (e.g., C, B-flat, E-flat).
•	Each album that is recorded at the Musicana label has a unique title, a copyright date, 
and an album identifier.
•	Each song recorded at Musicana has a unique title and an author.
•	Each musician may play several instruments, and a given instrument may be played by several musicians.
•	Each album has a number of songs on it and song must appear on one ablum.
•	Each song is performed by one or more musicians, and a musician may perform a number of songs.
•	Each album has exactly one musician who acts as its producer. A producer may produce several albums.

Design a conceptual schema for Musicana. Be sure to indicate all keys and cardinality 
constraints and any assumptions that you make.
	1. Entities & Attributes
🎤 Musician
MusicianID (PK)
Name
Street
City
Phone
🎸 Instrument
InstrumentName (PK)
MusicalKey
💿 Album
AlbumID (PK)
Title (UNIQUE)
CopyrightDate
🎵 Song
SongTitle (PK)
Author
🔗 2. Relationships & Cardinality
1. Plays (Musician ↔ Instrument)
Relationship: Many-to-Many (M:N)
Description:
A musician may play multiple instruments
An instrument may be played by multiple musicians

👉 Representation:

Musician (M) —— Plays —— (M) Instrument
2. Contains (Album ↔ Song)
Relationship: One-to-Many (1:M)
Description:
An album contains multiple songs
Each song belongs to exactly one album

👉 Representation:

Album (1) —— Contains —— (M) Song
3. Performs (Musician ↔ Song)
Relationship: Many-to-Many (M:N)
Description:
A musician performs multiple songs
Each song is performed by one or more musicians

👉 Representation:

Musician (M) —— Performs —— (M) Song

⚠️ Constraint:

Minimum participation on the Song side = 1 (Total Participation)
4. Produces (Musician ↔ Album)
Relationship: One-to-Many (1:M)
Description:
Each album has exactly one producer (a musician)
A musician may produce multiple albums
