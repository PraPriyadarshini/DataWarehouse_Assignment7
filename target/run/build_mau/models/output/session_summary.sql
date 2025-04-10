
  create or replace   view USER_DB_HORNET.analytics.session_summary
  
   as (
    -- models/output/session_summary.sql

with u as (
    select * from USER_DB_HORNET.analytics.user_session_channel
),
st as (
    select * from USER_DB_HORNET.analytics.session_timestamp
)
select
    u.userId,
    u.sessionId,
    u.channel,
    st.ts
from u
join st on u.sessionId = st.sessionId
where st.ts is not null
  );

