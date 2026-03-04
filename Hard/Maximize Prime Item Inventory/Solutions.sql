with batch_size AS
(
  select item_type,sum(square_footage)as batch_sq_ft,
  count(*)as item_count
  from inventory
  group by item_type
),
prime_cal AS
(
  select item_type,
  floor(500000/batch_sq_ft)as prime_batches,
  floor(500000/batch_sq_ft)*item_count as prime_items,
  (500000-floor(500000/batch_sq_ft)*batch_sq_ft)as remaining_sq_ft
  from batch_size
  where item_type='prime_eligible'
),
non_prime_cal AS
(
  select floor(p.remaining_sq_ft/b.batch_sq_ft)as non_prime_batches,
  floor(p.remaining_sq_ft/b.batch_sq_ft)*item_count as non_prime_items
  from prime_cal p 
  join batch_size b ON
  b.item_type='not_prime'
)
select 'prime_eligible' as item_type,prime_items as items_count
from prime_cal
union ALL
select 'not_prime' as item_type,non_prime_items as items_count
from non_prime_cal;