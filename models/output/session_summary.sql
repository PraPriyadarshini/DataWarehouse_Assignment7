-- models/output/session_summary.sql

with u as (
    select * from {{ ref('user_session_channel') }}
),
st as (
    select * from {{ ref('session_timestamp') }}
)
select
    u.userId,
    u.sessionId,
    u.channel,
    st.ts
from u
join st on u.sessionId = st.sessionId
where st.ts is not null