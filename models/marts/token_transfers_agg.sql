{{ config(materialized='ephemeral')}}

select
    transaction_hash,
    count(*) as token_transfer_count
    -- from {{source('eth','token_transfers')}} 
    from {{ref ('stg_token_transfers')}} 
    group by transaction_hash