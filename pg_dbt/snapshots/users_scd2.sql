{% snapshot users_timestamp %}

    {{
        config(
            target_database='test_dbt',
            target_schema='snapshots',
            strategy='timestamp',
            unique_key='id',
            updated_at='updated_at',
        )
    }}

    SELECT * FROM {{ source('dbt', 'users') }}

{% endsnapshot %}