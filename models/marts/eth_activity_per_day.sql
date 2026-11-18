

-- SELECT 
--     date, 
--     transaction_category,
--     count(*) as tx_count,
--     sum(value)/1e18 as sum_eth_value

-- FROM {{ ref('transactions_enriched') }} 

-- group by 
-- date, 
-- transaction_category

-- using the macro for conversion
SELECT 
    date, 
    transaction_category,
    count(*) as tx_count,
    {{ ethereum_conversion('value') }} as sum_eth_value

FROM {{ ref('transactions_enriched') }} 

group by 
date, 
transaction_category
