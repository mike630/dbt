WITH raw_hosts AS (
    SELECT
        *
    FROM
        {{ source('airbnb', 'hosts') }}
)
SELECT
    created_at,
    ID AS host_id,
    is_superhost,
    name as host_name,
    updated_at
FROM
    raw_hosts
