---NULL 0 ''
CREATE TABLE table1 (id1 nvarchar(10))
CREATE TABLE table2 (id2 nvarchar(10))

INSERT INTO table1 VALUES  (NULL)
('1'),
('1'),
('1'),
(NULL),
('3'),
('3'),
('2')

INSERT INTO table2 VALUES (NULL)
('1'),
('1'),
(NULL),
('4'),
('4')

select * from table1

select * from table2

--INNER JOIN
SELECT * FROM table1 t1
JOIN table2 t2 
ON t1.id1 = t2.id2

--LEFT JOIN [INNER JOIN + NonMatching rows from left side]
SELECT * FROM table1 t1
LEFT JOIN table2 t2 
ON t1.id1 = t2.id2

select * from table1

inner join matching  6
right join non matching 4
left join non matching rows 5


--RIGHT JOIN [INNER JOIN + NonMatching rows from right side]
SELECT * FROM table1 t1
RIGHT JOIN table2 t2 
ON t1.id1 = t2.id2


select * from table1
select * from table2
--FULL JOIN
SELECT * FROM table1 t1
FULL JOIN table2 t2 
ON t1.id1 = t2.id2

inner join= 2*3 = 6
left join = 4
right join = 3
