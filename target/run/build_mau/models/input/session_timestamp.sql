
  create or replace   view USER_DB_HORNET.analytics.session_timestamp
  
   as (
    -- models/input/session_timestamp.sql

with session_timestamp as (
    select
        sessionId,
        ts
    from USER_DB_HORNET.raw.session_timestamp
)

select *
from session_timestamp
  );

