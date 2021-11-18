SELECT user_pseudo_id, ANY_VALUE(event_name) as level_name, ANY_VALUE(event_timestamp) as t From {{ source('analytics_292628166', 'events_*') }}
WHERE event_name LIKE 'level%'
GROUP BY user_pseudo_id, event_timestamp
ORDER BY user_pseudo_id, event_timestamp