{{
    config(
        materialized="incremental", post_hook="delete from jim.uniper_exp.post_hook;"
    )
}}

select *
from {{ ref("post_hook") }}
