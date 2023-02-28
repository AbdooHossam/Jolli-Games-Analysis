SELECT
    CASE
        WHEN A.age BETWEEN 0 AND 18 THEN '0-18'
        WHEN A.age BETWEEN 19 AND 24 THEN '19-24'
        WHEN A.age BETWEEN 25 AND 30 THEN '25-30'
        WHEN A.age BETWEEN 31 AND 40 THEN '31-40'
        WHEN A.age BETWEEN 41 AND 55 THEN '41-55'
    END AS age_group,
    A.gender,
    SUM( P.price) AS income
FROM event E
JOIN Account A ON E.device_id = A.device_id
JOIN Product P ON E.event_name = P.event_name
WHERE E.event_name IN ('App_Purchase_001', 'App_Purchase_002', 'App_Purchase_003')
GROUP BY A.age, A.gender 
ORDER BY age_group, gender;
