With Hotels as
(Select * from dbo.[2018]
union
Select * from dbo.[2019]
Union
Select * from dbo.[2020])

Select * from hotels
join dbo.market_segment on hotels.market_segment = market_segment.market_segment
join dbo.meal_cost on Hotels.meal = meal_cost.meal