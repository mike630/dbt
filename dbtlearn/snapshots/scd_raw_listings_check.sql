{% snapshot scd_raw_listings_check %}
{{
    config(
        target_schema='DEV',
        unique_key='id',
        strategy='check',
        check_cols= ['PRICE'],
        invalidate_hard_deletes=True
    )
}}

SELECT 
    * 
FROM 
    {{ source('airbnb', 'listings') }}

{% endsnapshot %}