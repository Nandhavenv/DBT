select * from {{ source("ELEMENTARY", "DBT_MODELS") }}
