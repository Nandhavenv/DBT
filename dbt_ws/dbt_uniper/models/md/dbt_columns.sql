select * from {{ source("ELEMENTARY", "DBT_COLUMNS") }}
