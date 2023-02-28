/****** Script for SelectTopNRows command from SSMS  ******/
-- create view IAPs as
--SELECT  USER_ID, event_name as ev_IAP , event_date
--	  , PRICE
--=CASE
--WHEN [event_name] like 'App_Purchase_001' THEN '5' 
--WHEN [event_name] like 'App_Purchase_002' THEN '10'
--WHEN [event_name] like 'App_Purchase_003' THEN '15'
--ELSE '0' 

--END
-- from [Jolify Games]..event

 SELECT event_date
      , SUM(CAST(Price AS decimal(8,2))) as income
 FROM [Jolify Games].[dbo].[IAPs]
  group by event_date
  order by event_date asc
