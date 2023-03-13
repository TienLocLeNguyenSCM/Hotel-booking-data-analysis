With Hotels as
(Select * from dbo.[2018]
union
Select * from dbo.[2019]
Union
Select * from dbo.[2020])

Select arrival_date_year, hotel, round(sum((stays_in_weekend_nights + stays_in_week_nights)*adr), 2) as revenue 
from Hotels
group by arrival_date_year, hotel