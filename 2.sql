DROP TABLE IF EXISTS young_animals;

CREATE TABLE young_animals (
	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255),
	birthday DATETIME NOT NULL,
	comands INTEGER UNSIGNED NOT NULL,
    age INTEGER,
    
	FOREIGN KEY (comands) REFERENCES comands (id) 
);

INSERT INTO young_animals (name, birthday, comands, age)
SELECT cats.name, cats.birthday, cats.comands, TIMESTAMPDIFF(MONTH, birthday, curdate())
FROM cats
WHERE name IN (
    SELECT name
    FROM cats
    WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
    GROUP BY name
    HAVING COUNT(*) = 1
)
AND TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;
INSERT INTO young_animals (name, birthday, comands, age)
SELECT DISTINCT dogs.name, dogs.birthday, dogs.comands, TIMESTAMPDIFF(MONTH, birthday, curdate()) 
FROM dogs
WHERE name IN (
    SELECT name
    FROM dogs
    WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
    GROUP BY name
    HAVING COUNT(*) = 1
)
AND TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;INSERT INTO young_animals (name, birthday, comands, age)

SELECT hamsters.name, hamsters.birthday, hamsters.comands, TIMESTAMPDIFF(MONTH, birthday, curdate()) 
FROM hamsters
WHERE name IN (
    SELECT name
    FROM hamsters
    WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
    GROUP BY name
    HAVING COUNT(*) = 1
)
AND TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

INSERT INTO young_animals (name, birthday, comands, age)
SELECT horses.name, horses.birthday, horses.comands, TIMESTAMPDIFF(MONTH, birthday, curdate())
FROM horses
WHERE name IN (
    SELECT name
    FROM horses
    WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
    GROUP BY name
    HAVING COUNT(*) = 1
)
AND TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

INSERT INTO young_animals (name, birthday, comands, age)
SELECT camels.name, camels.birthday, camels.comands, TIMESTAMPDIFF(MONTH, birthday, curdate()) 
FROM camels
WHERE name IN (
    SELECT name
    FROM camels
    WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
    GROUP BY name
    HAVING COUNT(*) = 1
)
AND TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

INSERT INTO young_animals (name, birthday, comands, age)
SELECT donkeys.name, donkeys.birthday, donkeys.comands, TIMESTAMPDIFF(MONTH, birthday, curdate()) 
FROM donkeys
WHERE name IN (
    SELECT name
    FROM donkeys
    WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
    GROUP BY name
    HAVING COUNT(*) = 1
)
AND TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;