USE Dbms_course;
DROP TABLE IF EXISTS batter;
CREATE TABLE batter(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    runs DECIMAL NOT NULL,
    age INT CHECK (age<=40),
    isactive VARCHAR(20) DEFAULT 'active');

INSERT INTO batter(name,runs,age) VALUES
('kohli',20000,36),('rohit',4000,38),('dhawan',2000,39);

SELECT*FROM batter
WHERE name IN('kohli');

UPDATE batter
SET runs = 10000
WHERE name = 'rohit';

use Dbms_course;
show tables;

DELETE FROM batter
WHERE name = 'dhawan';


SELECT runs FROM batter;

SELECT COUNt(*) AS total_batters FROM batter;
SELECT AVG(runs) as avg_runs FROM batter;
SELECT MAX(runs) as maxrun from batter;

SELECT isactive, max(runs) as COUNt
from batter
GROUP BY isactive
having min(age)<37;

SELECT name as 'players' ,  runs as  'total'
from batter;
SELECT * from batter
SELECT sum(runs) as totalruns from batter;