with configuration as (
    select 
        *
    from {{ source('ubble_production', 'configuration') }}
), 

identification as (
    select 
        *
    from {{ source('ubble_production', 'identification') }}
)

select 
    * 
from identification
left join configuration on identification.configuration_id = configuration.id