use Dbms_course;
DROP TABLE if EXISTS genere;
create table genere (
    g_id int AUTO_INCREMENT primary key,
    name VARCHAR(100) unique
)
INSERT into genere(name)VALUES
('comedy'),('horror'),('emotion');

SELECT*from genere;