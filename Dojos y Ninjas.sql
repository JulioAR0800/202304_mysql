INSERT INTO dojos (`NOMBRE:`) VALUES ('Dojo 1'), ('Dojo 2'), ('Dojo 3');

DELETE FROM dojos WHERE id IN (SELECT id FROM dojos ORDER BY id DESC LIMIT 3);

INSERT INTO dojos (`NOMBRE:`) VALUES ('Dojo 4'), ('Dojo 5'), ('Dojo 6');

INSERT INTO ninjas (`NOMBRE:`, dojo_id) VALUES ('Ninja 1', 1), ('Ninja 2', 1), ('Ninja 3', 1);

INSERT INTO ninjas (`NOMBRE:`, dojo_id) VALUES ('Ninja 4', 2), ('Ninja 5', 2), ('Ninja 6', 2);

INSERT INTO ninjas (`NOMBRE:`, dojo_id) VALUES ('Ninja 7', 3), ('Ninja 8', 3), ('Ninja 9', 3);

SELECT * FROM ninjas WHERE dojo_id = 1;

SELECT * FROM ninjas WHERE dojo_id = (SELECT MAX(id) FROM dojos);

SELECT * FROM dojos WHERE id = (SELECT dojo_id FROM ninjas ORDER BY id DESC LIMIT 1);
