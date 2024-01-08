select
  {{ cents_to_dollars(var("cent")) }} as amount_usd
from dual
