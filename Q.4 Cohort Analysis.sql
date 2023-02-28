
--CREATE TABLE retentions (
--    user_id VARCHAR(20) NOT NULL,
--    first_login DATE NOT NULL,
--    day1 INT DEFAULT 0,
--    day2 INT DEFAULT 0,
--    day3 INT DEFAULT 0,
--    PRIMARY KEY (user_id)
--);

--INSERT INTO retentions (user_id, first_login)
--SELECT user_id, MIN(event_date)
--FROM [Jolify Games].[dbo].[event]
--GROUP BY user_id;

--UPDATE retentions
--SET day1 = 1
--FROM retentions r
--JOIN event e ON r.user_id = e.user_id
--WHERE e.event_date = DATEADD(day, 1, r.first_login);

--UPDATE retentions
--SET day2 = 1
--FROM retentions r
--JOIN event e ON r.user_id = e.user_id
--WHERE e.event_date = DATEADD(day, 2, r.first_login);

--UPDATE retentions
--SET day3 = 1
--FROM retentions r
--JOIN event e ON r.user_id = e.user_id
--WHERE e.event_date = DATEADD(day, 3, r.first_login);

SELECT*
FROM retentions;
