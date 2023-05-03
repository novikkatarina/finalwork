USE animals;

DROP TABLE IF EXISTS donkeys;
DROP TABLE IF EXISTS camels;
DROP TABLE IF EXISTS horses;
DROP TABLE IF EXISTS hamsters;
DROP TABLE IF EXISTS dogs;
DROP TABLE IF EXISTS cats;  
DROP TABLE IF EXISTS young_animals;
DROP TABLE IF EXISTS horses_donkeys;
DROP TABLE IF EXISTS comands;    

DROP TABLE IF EXISTS pack_animals;
DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS animals;


CREATE TABLE animals (
	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	animal_group varchar(255)
);
INSERT INTO animals (
	animal_group)

VALUES 
	('pets'),
	('pack_animals');




CREATE TABLE pets (
	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	animals varchar(50),
	animal_group_id INTEGER UNSIGNED NOT NULL,
	
	FOREIGN KEY (animal_group_id) REFERENCES animals (id)
);

INSERT INTO pets (
	animals, animal_group_id)

VALUES 

	('cats', 1),
	('dogs', 1),
	('hamsters', 1);









CREATE TABLE pack_animals (
	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	animals varchar(255),
	animal_group INTEGER UNSIGNED NOT NULL,
	
	FOREIGN KEY (animal_group) REFERENCES animals (id)
);

INSERT INTO pack_animals (
	animals, animal_group)

VALUES 

	('horses', 2),
	('camels', 2),
	('donkeys', 2);


CREATE TABLE comands (
	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	comands varchar(255)
);

INSERT INTO comands 
	(comands)
VALUES 

	('stop'),
	('come'),
	('sit'),
    ('no any');




CREATE TABLE cats (
	
	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(255),
	birthday DATETIME NOT NULL,
    comands INTEGER UNSIGNED NOT NULL,
	
	FOREIGN KEY (comands) REFERENCES comands (id) 
	
);

INSERT INTO cats(
	name, birthday, comands)
	
VALUES 

	('cat1', '2023-10-02 12:00:00',1), 
	('cat2', '2022-10-02 12:00:00',2),
	('cat2', '2022-02-02 12:00:00',3),
	('cat3', '2020-08-05 12:00:00',1),
	('cat3', '2018-10-02 12:00:00',3);




CREATE TABLE dogs (
	
	ID INTEGER PRIMARY KEY AUTO_INCREMENT,
	name varchar(255),
	birthday DATETIME NOT NULL,
    comands INTEGER UNSIGNED NOT NULL,
	
	FOREIGN KEY (comands) REFERENCES comands (id) 
	
);

INSERT INTO dogs (
	name, birthday, comands)
    VALUES

	('dog1', '2023-10-02 12:00:00',1), 
	('dog2', '2020-09-02 12:00:00',2),
	('dog2', '2020-09-02  12:00:00',3),
	('dog3', '2020-07-02 12:00:00',1),
	('dog3', '2018-07-02 12:00:00',3);








CREATE TABLE hamsters (
	
	ID INTEGER PRIMARY KEY AUTO_INCREMENT,
	name varchar(255),
	birthday DATETIME NOT NULL,
	comands INTEGER UNSIGNED NOT NULL,
    
	FOREIGN KEY (comands) REFERENCES comands (id) 
	
);

INSERT INTO hamsters (
	name, birthday, comands)
    VALUES 

	('hamster1', '2023-10-02 12:00:00',1), 
	('hamster2', '2019-10-02 12:00:00',2),
	('hamster2', '2019-10-02 12:00:00',3),
	('hamster3', '2020-10-02 12:00:00',1),
	('hamster3', '2018-10-02 12:00:00',3);



CREATE TABLE horses (
	
	ID INTEGER PRIMARY KEY AUTO_INCREMENT,
	name varchar(255),
	birthday DATETIME NOT NULL,
	comands INTEGER UNSIGNED NOT NULL,
    
	FOREIGN KEY (comands) REFERENCES comands (id) 
	
);

INSERT INTO horses (
	name, birthday, comands)
    VALUES 

	('horse1', '2023-10-02 12:00:00',1), 
	('horse2', '2020-01-02 12:00:00',2),
	('horse2', '2020-01-02 12:00:00',3),
	('horse3', '2018-10-02 12:00:00',1),
	('horse3', '2018-10-02 12:00:00',3);




CREATE TABLE camels (
	
	ID INTEGER  PRIMARY KEY AUTO_INCREMENT,
	name varchar(255),
	birthday DATETIME NOT NULL,
	comands INTEGER UNSIGNED NOT NULL,
    
	FOREIGN KEY (comands) REFERENCES comands (id) 
	
);

INSERT INTO camels (
	name, birthday, comands)
    VALUES 

	('camel1', '2023-10-02 12:00:00',1), 
	('camel2', '2019-10-02 12:00:00',2),
	('camel2', '2020-10-02 12:00:00',3),
	('camel3', '2018-10-02 12:00:00',1),
	('camel3', '2018-10-02 12:00:00',3);





CREATE TABLE donkeys (
	
	ID INTEGER PRIMARY KEY AUTO_INCREMENT,
	name varchar(255),
	birthday DATETIME NOT NULL,
	comands INTEGER  UNSIGNED NOT NULL,
    
	FOREIGN KEY (comands) REFERENCES comands (id) 
	
);

INSERT INTO donkeys (
	name, birthday, comands)
    VALUES 

	('donkey1', '2023-10-02 12:00:00', 4), 
	('donkey2', '2019-10-02 12:00:00', 4),
	('donkey3', '2020-08-02 12:00:00', 4);
