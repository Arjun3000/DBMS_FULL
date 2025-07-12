use Dbms_course;
DROP TABLE if EXISTS actor;
CREATE TABLE actor(
    id int AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) not null,
    movie decimal not null,
    place VARCHAR(100) default 'india',
    g_id int,
    foreign key (g_id) references genere(g_id)
    )
INSERT into actor(name,movie,g_id) VALUES
('arjun',12,1),('bharat',13,2);

SELECT * from actor;


SELECT
actor.id,
actor.name as actor_name,
actor.movie as movie_count,
genere.name

FROM actor

JOIN 

genere on actor.g_id = genere.g_id;





