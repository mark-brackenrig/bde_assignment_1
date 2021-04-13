(SELECT 'tip_received' as tip_received, count(*) as tip,
count(*) * 100.0 / (select count(*) from combined_data) as tip_percent
FROM combined_data
WHERE tip_amount > 0)
UNION
(SELECT 'no_tip' as tip_received, count(*) as tip,
count(*) * 100.0 / (select count(*) from combined_data) as tip_percent
FROM combined_data
WHERE tip_amount = 0)
