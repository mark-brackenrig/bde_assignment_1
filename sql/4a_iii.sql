select b1.trips,b2.hour, b1.month,b1.year from
(select max(b.trips) as trips, b.month, b.year  from 
    (SELECT COUNT(*) as trips, HOUR(pickup_date) as hour,MONTH(pickup_date) as month, YEAR(pickup_date) as year
FROM combined_data
GROUP BY HOUR(pickup_date),MONTH(pickup_date), YEAR(pickup_date)) as b
Group by b.month, b.year) as b1
inner join (SELECT COUNT(*) as trips, HOUR(pickup_date) as hour,MONTH(pickup_date) as month, YEAR(pickup_date) as year
FROM combined_data
GROUP BY  HOUR(pickup_date),MONTH(pickup_date), YEAR(pickup_date)) as b2 
on (b1.trips, b1.month,b1.year)=(b2.trips, b2.month,b2.year)
ORDER BY b2.year desc,  b2.month desc