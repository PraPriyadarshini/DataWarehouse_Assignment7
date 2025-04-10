-- models/input/user_session_channel.sql

with user_session_channel_cte as (
    select
        userId,
        sessionId,
        channel
    from USER_DB_HORNET.raw.user_session_channel
)

select *
from user_session_channel_cte