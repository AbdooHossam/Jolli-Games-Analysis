with first_visit as (
select USER_ID, min(event_time) as first_visit_date

from [Jolify Games]..event
group by USER_ID)

,visit_co as
(select fv.user_id,device_id, event_name, ev.event_time,event_date, fv.first_visit_date
,case when ev.event_time != fv.first_visit_date then 1 else 0 end as repeat_visit
from [Jolify Games]..event ev
inner join first_visit fv  on ev.user_id= fv.user_id
)
SELECT
    event_date,
    COUNT(DISTINCT CASE WHEN event_name IN ('App_Purchase_001', 'App_Purchase_002', 'App_Purchase_003') THEN user_id END) AS Retention_visitor
FROM visit_co
GROUP BY event_date
ORDER BY event_date ASC;
  
