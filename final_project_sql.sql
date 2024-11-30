#CREATE DATABASE final_project1;

#CREATE USER 'izack'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES
ON final_project1.*
TO "izack"@"localhost";

#DROP DATABASE final_project1;

#Create Baseball Database
CREATE TABLE baseball(
	bsbId INTEGER NOT NULL PRIMARY KEY,
    bsbName VARCHAR(40) NOT NULL,
    bsbPos VARCHAR(5) NULL,
    bsbClass VARCHAR(10),
    bsbHome VARCHAR(30) NOT NULL,
    bsbHigh VARCHAR(30) NOT NULL,
    bsbTransfer VARCHAR(5)
);

#Insert data into dorms
INSERT INTO baseball(bsbId, bsbName, bsbPos, bsbClass, bsbHome, bsbHigh, bsbTransfer)
VALUES (1, 'Alex Greb', 'OF', 'Junior', 'Seattle, Washington', 'Ballard', 'Yes'),
	   (2, 'Izack Takazawa', 'RHP', 'Sophmore', 'Honolulu, Hawaii', 'Iolani', 'Yes'),
       (3, 'Reyn Kapua', 'RHP', 'Sophmore', 'Honolulu, Hawaii', 'Mid-Pac', 'No'),
       (4, 'Trysten Mooney', 'C', 'Junior', 'Helena Montana', 'Capital', 'Yes')
       ;

 #Select * from baseball;
 
 #Create Basketball Database
 CREATE TABLE basketball(
	bkbId INTEGER NOT NULL PRIMARY KEY,
    bkbName VARCHAR(40) NOT NULL,
    bkbPos VARCHAR(5) NULL,
    bkbClass VARCHAR(10),
    bkbHome VARCHAR(30) NOT NULL,
    bkbHigh VARCHAR(30) NOT NULL,
    bkbTransfer VARCHAR(5)
);

#Insert data into dorms
INSERT INTO basketball(bkbId, bkbName, bkbPos, bkbClass, bkbHome, bkbHigh, bkbTransfer)
VALUES (1, 'Fletcher MacDonald', 'F', 'Junior', 'Wollongong, Australia', 'Newington College', 'Yes'),
	   (2, 'Kameron Ng', 'G', 'Senior', 'Kaneohe, Hawaii', 'Saint Francis', 'Yes'),
       (3, 'Jamir Thomas', 'G', 'Senior', 'Berkeley, California', 'Berkeley', 'Yes')
       ;
       
 #Select * from basketball;
 
#Insert coaches table

CREATE TABLE coaches (
    coachId INTEGER NOT NULL PRIMARY KEY,
    coachName VARCHAR(40) NOT NULL,
    coachRole VARCHAR(20) NOT NULL,
    coachTeam VARCHAR(10) NOT NULL -- 'Baseball' or 'Basketball'
);

INSERT INTO coaches (coachId, coachName, coachRole, coachTeam)
VALUES 
    (1, 'Chad Konishi', 'Head Coach', 'Baseball'),
    (2, 'Matt Inouye', 'Assistant Coach', 'Baseball'),
    (3, 'Keith Komeiji', 'Assistant Coach', 'Baseball'),
    (4, 'Chester Wilson', 'Assistant Coach', 'Baseball'),
    (5, 'Randy Yamashiro', 'Assistant Coach', 'Baseball'),
    (6, 'Eric Bovaird', 'Head Coach', 'Basketball'),
    (7, 'Dantley Walker', 'Associate Head Coach', 'Basketball'),
    (8, 'Roman Young', 'Assistant Coach', 'Basketball'),
    (9, 'Arthur King', 'Assistant Coach', 'Basketball');
 
  #Select * from coaches;
  
  #athlete_coaches table
CREATE TABLE athlete_coaches(
	bsbId INTEGER NULL,
    bkbId INTEGER NULL,
	coachId INTEGER NOT NULL,
    FOREIGN KEY (bsbId) REFERENCES baseball (bsbId),
    FOREIGN KEY (bkbId) REFERENCES basketball (bkbId),
    FOREIGN KEY (coachId) REFERENCES coaches (coachId)
);

INSERT INTO athlete_coaches (bsbId, bkbId, coachId)
VALUES 
    (1, NULL, 1), -- Alex Greb
    (1, NULL, 2),
    (1, NULL, 3),
    (1, NULL, 4),
    (1, NULL, 5),
    
	(2, NULL, 1), -- Izack Takazawa
    (2, NULL, 2),
    (2, NULL, 3),
    (2, NULL, 4),
    (2, NULL, 5),
	
    (3, NULL, 1), -- Reyn Kapua
    (3, NULL, 2),
    (3, NULL, 3),
    (3, NULL, 4),
    (3, NULL, 5),
    
	(4, NULL, 1), -- Trysten Mooney
    (4, NULL, 2),
    (4, NULL, 3),
    (4, NULL, 4),
    (4, NULL, 5),
    
    (NULL, 1, 6), -- Fletcher MacDonald
    (NULL, 1, 7),
    (NULL, 1, 8),
    (NULL, 1, 9),
    
    (NULL, 2, 6), -- Kameron Ng
    (NULL, 2, 7), 
    (NULL, 2, 8), 
    (NULL, 2, 9),
    
    (NULL, 3, 6), -- Jamir Thomas
    (NULL, 3, 7), 
    (NULL, 3, 8),
    (NULL, 3, 9);

#Select * from athlete_coaches;







