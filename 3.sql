
DELETE FROM camels
WHERE id>0;

CREATE TABLE horses_donkeys (
	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255),
	birthday DATETIME NOT NULL,
	comands INTEGER UNSIGNED NOT NULL,
    
	FOREIGN KEY (comands) REFERENCES comands (id) 
);

INSERT INTO horses_donkeys (name, birthday, comands)
SELECT name, birthday, comands FROM horses
WHERE id > 0
UNION ALL
SELECT name, birthday, comands FROM donkeys
WHERE id > 0;

DROP TABLE horses;
DROP TABLE donkeys;
