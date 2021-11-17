SELECT user_pseudo_id, ANY_VALUE(event_name) as events, ANY_VALUE(event_timestamp) as t From {{ source('analytics_292628166', 'events_*') }}
GROUP BY user_pseudo_id, event_timestamp
ORDER BY user_pseudo_id, event_timestamp