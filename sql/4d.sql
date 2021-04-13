(SELECT 'tip_over10' as tip_received, count(*) as tip,
count(*) * 100.0 / (select count(*) from combined_data where tip_amount>0) as tip_percent
FROM combined_data
WHERE tip_amount >= 10)
UNION
(SELECT 'tip_under10' as tip_received, count(*) as tip,
count(*) * 100.0 / (select count(*) from combined_data where tip_amount>0) as tip_percent
FROM combined_data
WHERE tip_amount < 10
AND tip_amount>0)
