-- models/input/session_timestamp.sql

with session_timestamp as (
    select
        sessionId,
        ts
    from {{ source('raw', 'session_timestamp') }}
)

select *
from session_timestamp