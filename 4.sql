DROP TABLE IF EXISTS all_animals;

CREATE TABLE all_animals (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birthday DATETIME NOT NULL,
    comands INTEGER UNSIGNED NOT NULL,
    animal_group VARCHAR(255) NOT NULL
);

INSERT INTO all_animals (name, birthday, comands, animal_group)
SELECT name, birthday, comands, 'cats' AS animal_group
FROM cats
UNION ALL
SELECT name, birthday, comands, 'dogs'
FROM dogs
UNION ALL
SELECT name, birthday, comands, 'hamsters'
FROM hamsters
UNION ALL
SELECT name, birthday, comands, 'horses'
FROM horses
UNION ALL
SELECT name, birthday, comands, 'donkeys'
FROM donkeys
UNION ALL
SELECT name, birthday, comands, 'camels'
FROM camels;
