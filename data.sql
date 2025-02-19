-- INSERT TABLE statements for data.sql

INSERT INTO companies VALUES(1, 'Tesla Energy', 'Solar', 'USA', 500000000)
INSERT INTO companies VALUES(2, 'NextEra Energy', 'Wind', 'USA', 1000000000)
INSERT INTO companies VALUES(3, 'Vestas', 'Wind', 'Denmark', 750000000)
INSERT INTO companies VALUES(4, 'Enel Green Power', 'Solar', 'Italy', 800000000)

INSERT INTO transactions VALUES(101, 2, 3, '05-12-2023', 250000000, 'Wind')
INSERT INTO transactions VALUES(102, 1, 4, '02-20-2024', 300000000, 'Solar')

INSERT INTO projects VALUES(201, 1, 100, 'USA', 'Operational')
INSERT INTO projects VALUES(202, 2, 200, 'USA', 'Under Construction')
INSERT INTO projects VALUES(203, 3, 150, 'Denmark', 'Planned')

INSERT INTO financing VALUES(301, 101, 'BlackRock', 100000000, '05-15-2023')
INSERT INTO financing VALUES(302, 102, 'Goldman Sachs', 150000000, '02-22-2024')