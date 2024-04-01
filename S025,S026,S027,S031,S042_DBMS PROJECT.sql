create database olympics;
use olympics;
CREATE TABLE Countries ( 
  country_id varchar(255) PRIMARY KEY, 
  country_name VARCHAR(255) NOT NULL 
);
CREATE TABLE Athletes ( 
  athlete_id INT PRIMARY KEY, 
  athlete_name VARCHAR(255) NOT NULL, 
  country_id varchar(255), 
  event_id float 
);

CREATE TABLE Sports ( 
  sport_id INT PRIMARY KEY, 
  sport_name VARCHAR(255) NOT NULL 
);
CREATE TABLE Events ( 
  event_id float PRIMARY KEY, 
  event_name VARCHAR(255) NOT NULL, 
  event_date varchar(255) Not Null, 
  sport_id INT, 
  venue_id varchar(255) 
 );
 CREATE TABLE Venues ( 
  venue_id varchar(255) PRIMARY KEY, 
  venue_name VARCHAR(255) NOT NULL 
);
CREATE TABLE Performance ( 
  per_id INT PRIMARY KEY, 
  athlete_id INT, 
  event_id float, 
  venue_id varchar(255), 
  per_value varchar(255) 
);
CREATE TABLE Medals ( 
  medal_id varchar(255) PRIMARY KEY, 
  athlete_id int , 
  event_id float, 
  medal_type VARCHAR(255) NOT NULL 
);
INSERT INTO Countries VALUES ('US','USA');
INSERT INTO Countries VALUES ('JP', 'Japan');
INSERT INTO Countries VALUES ('CN' , 'China');
INSERT INTO Countries VALUES ('RU', 'Russia');
INSERT INTO Countries VALUES ('AU', 'Australia');
INSERT INTO Countries VALUES ('CA' ,'Canada');
INSERT INTO Countries VALUES ('FR', 'France');
INSERT INTO Countries VALUES ('GB', 'Great Britain');
INSERT INTO Countries VALUES ('DE', 'Germany');
INSERT INTO Countries VALUES ('IT', 'Italy');
INSERT INTO Countries VALUES ('BR', 'Brazil');
INSERT INTO Countries VALUES ('KR', 'South Korea');

INSERT INTO Athletes VALUES  (101, 'Simone Biles', 'US', 1.1);
INSERT INTO Athletes VALUES  (102, 'Katie Ledecky', 'US', 1.2);
INSERT INTO Athletes VALUES  (103, 'Caeleb Dressel', 'US', 1.1);
INSERT INTO Athletes VALUES  (104, 'Kosuke Hagino', 'JP', 4.1);
INSERT INTO Athletes VALUES  (105, 'Yui Ohashi', 'JP', 1.2);
INSERT INTO Athletes VALUES  (106, 'Zhang Yufei', 'CN',3.1);
INSERT INTO Athletes VALUES  (107, 'Li Fabin', 'CN',2.1);
INSERT INTO Athletes VALUES  (108, 'Anastasia Pavlyuchenkova', 'RU', 8.1);
INSERT INTO Athletes VALUES  (109, 'Evgeny Rylov', 'RU', 9.1);
INSERT INTO Athletes VALUES  (110, 'Ariarne Titmus', 'AU', 4.2);
INSERT INTO Athletes VALUES  (111, 'Emma McKeon', 'AU', 4.2);
INSERT INTO Athletes VALUES  (112, 'Maggie Mac Neil', 'CA', 6.1);

INSERT INTO Sports VALUES  (345, 'Swimming');
INSERT INTO Sports VALUES  (705, 'Gymnastics');
INSERT INTO Sports VALUES  (754, 'Diving');
INSERT INTO Sports VALUES  (908, 'Track and Field');
INSERT INTO Sports VALUES  (239, 'Cycling');
INSERT INTO Sports VALUES  (656, 'Basketball');
INSERT INTO Sports VALUES  (709, 'Soccer');
INSERT INTO Sports VALUES  (858, 'Volleyball');
INSERT INTO Sports VALUES  (939, 'Wrestling');
INSERT INTO Sports VALUES  (150, 'Weightlifting');
INSERT INTO Sports VALUES  (115, 'Fencing');
INSERT INTO Sports VALUES  (192, 'Boxing');

INSERT INTO Events VALUES  (1.1, '100m Freestyle','2022-07-22', 345, 'T1');
INSERT INTO Events VALUES  (1.2, '200m Individual Medley','2022-07-23', 345,'T1');
INSERT INTO Events VALUES  (3.1, '10m Platform','2022-07-24', 754 ,'T1');
INSERT INTO Events VALUES  (4.1, '400m Hurdles','2022-07-25', 908,'T3');
INSERT INTO Events VALUES  (4.2, 'Road Race','2022-07-26', 239, 'T5');
INSERT INTO Events VALUES  (2.1, 'Team All-Around','2022-07-27', 705,'T6');
INSERT INTO Events VALUES  (8.1, 'Beach Volleyball','2022-07-28', 858, 'T7');
INSERT INTO Events VALUES  (9.1, 'Greco-Roman 85kg','2022-07-29', 939 ,'T8');
INSERT INTO Events VALUES  (10.1, 'Clean and Jerk', '2022-07-30', 150 ,'T8');
INSERT INTO Events VALUES  (11.1, 'Individual Epee','2022-07-31', 115 ,'T11');
INSERT INTO Events VALUES  (12.1, 'Heavyweight','2022-08-01', 192 , 'T10');
INSERT INTO Events VALUES  (6.1, '3x3 Basketball','2022-08-02', 656, 'T12');

INSERT INTO Venues VALUES  ('T1', 'Tokyo Aquatics Centre');
INSERT INTO Venues VALUES  ('T2', 'Ariake Gymnastics Centre');
INSERT INTO Venues VALUES  ('T3', 'Tokyo Stadium');
INSERT INTO Venues VALUES  ('T4', 'Izu Velodrome');
INSERT INTO Venues VALUES  ('T5', 'Ariake Urban Sports Park');
INSERT INTO Venues VALUES  ('T6', 'Saitama Super Arena');
INSERT INTO Venues VALUES  ('T7', 'International Stadium Yokohama');
INSERT INTO Venues VALUES  ('T8', 'Makuhari Messe Hall A');
INSERT INTO Venues VALUES  ('T9', 'Makuhari Messe Hall B');
INSERT INTO Venues VALUES  ('T10', 'Kokugikan Arena');
INSERT INTO Venues VALUES  ('T11', 'Musashino Forest Sport Plaza');
INSERT INTO Venues VALUES  ('T12', 'Olympic Stadium');

INSERT INTO Performance VALUES (001, 101, 1.1, 'T1', '52.95');
INSERT INTO Performance VALUES (002, 102, 1.2, 'T1', '2:08.36');
INSERT INTO Performance VALUES (003, 103, 1.1, 'T1', '47.02');
INSERT INTO Performance VALUES (004, 104, 4.1, 'T3', '48.33');
INSERT INTO Performance VALUES (005, 105, 1.2, 'T1', '2:08.52');
INSERT INTO Performance VALUES (006, 106, 3.1, 'T1', '390.81');
INSERT INTO Performance VALUES (007, 107, 2.1, 'T6', '172.52');
INSERT INTO Performance VALUES (008, 108, 8.1, 'T7', '2-0');
INSERT INTO Performance VALUES (009, 109, 9.1, 'T8', null);
INSERT INTO Performance VALUES (010, 110, 4.2, 'T5', '3:30:23');
INSERT INTO Performance VALUES (011, 111, 4.2, 'T5', '3:51:96');
INSERT INTO Performance VALUES (012, 112, 6.1, 'T12', null);

INSERT INTO Medals VALUES  ('M1', 101, 1.1, 'Gold');
INSERT INTO Medals VALUES  ('M2', 102, 1.2, 'Silver');
INSERT INTO Medals VALUES  ('M3', 103, 1.1, 'Bronze');
INSERT INTO Medals VALUES  ('M4', 104, 4.1, 'Gold');
INSERT INTO Medals VALUES  ('M5', 105, 1.2, 'Silver');
INSERT INTO Medals VALUES  ('M6', 106, 3.1, 'Bronze');
INSERT INTO Medals VALUES  ('M7', 107, 2.1, 'Gold');
INSERT INTO Medals VALUES  ('M8', 108, 8.1, 'Silver');
INSERT INTO Medals VALUES  ('M9', 109, 9.1, 'Bronze');
INSERT INTO Medals VALUES  ('M11', 111, 4.2, 'Silver');
INSERT INTO Medals VALUES  ('M12', 112, 6.1, 'Bronze');

select * from Countries;
select * from Athletes;
select * from Sports;
select * from Events;
select * from Venues;
select * from Performance;
select * from Medals;

alter table Athletes add constraint FK_country_id  
foreign key(country_id) references Countries (country_id);

alter table Athletes add constraint FK_country_id2  
foreign key(event_id) references Events (event_id);

alter table  Events add constraint FK_sport_id 
foreign key(sport_id) references Sports(sport_id);

alter table  Events add constraint FK_venue_id 
foreign key(venue_id) references Venues(venue_id);

alter table Performance add constraint FK_athlete_id  
foreign key(athlete_id ) references Athletes(athlete_id );

alter table Performance add constraint FK_event_id 
foreign key(event_id) references Events(event_id);

alter table Performance add constraint FK_venue_id2 
foreign key(venue_id) references Venues(venue_id);

SELECT Athletes.athlete_name, Countries.country_name FROM Athletes JOIN Countries ON Athletes.country_id = Countries.country_id;

SELECT * FROM Sports ORDER BY sport_name DESC;

SELECT * FROM Athletes WHERE country_id = 'US';

SELECT Countries.country_name, COUNT(Athletes.athlete_id) as total_athletes FROM Countries JOIN Athletes ON Countries.country_id = Athletes.country_id GROUP BY Countries.country_name;

SELECT * FROM Events WHERE event_date = '2022-07-25';

SELECT Events.event_name FROM Events,Venues WHERE Venues.venue_name = 'Tokyo Stadium' and Events.venue_id = Venues.venue_id;

SELECT Athletes.athlete_name, Events.event_name, Events.event_date FROM Athletes, Events where Athletes.event_id = Events.event_id ORDER BY Events.event_date;

SELECT Events.event_name, Venues.venue_name FROM Events,Venues where Events.venue_id = Venues.venue_id;

SELECT Events.event_name, Sports.sport_name FROM Events JOIN Sports ON Events.sport_id = Sports.sport_id JOIN Venues ON Events.venue_id = Venues.venue_id 
WHERE Venues.venue_name = 'Saitama Super Arena';

SELECT venue_name, COUNT(*) AS num_events FROM Events JOIN Venues ON Events.venue_id = Venues.venue_id GROUP BY venue_name;

SELECT athlete_name FROM Athletes JOIN Events ON Athletes.event_id=Events.event_id JOIN Sports ON Events.sport_id=Sports.sport_id WHERE sport_name='Basketball' OR sport_name='Soccer';

SELECT athlete_name, event_name FROM Athletes JOIN Events ON Athletes.event_id=Events.event_id JOIN Countries ON Athletes.country_id=Countries.country_id WHERE country_name='China';

SELECT athlete_name, event_name FROM Athletes JOIN Events ON Athletes.event_id=Events.event_id WHERE event_date BETWEEN '2022-07-25' AND '2022-07-30';