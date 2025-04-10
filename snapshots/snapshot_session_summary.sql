{% snapshot snapshot_session_summary %}
    {{
       config(
            target_schema='analytics',     
            unique_key='sessionId',
            strategy='timestamp',
            updated_at='ts'
       )
    }}

    select *
    from {{ ref('session_summary') }}

{% endsnapshot %}
