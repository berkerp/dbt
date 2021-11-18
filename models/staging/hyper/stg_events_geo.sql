SELECT ANY_VALUE(event_name) as events, ANY_VALUE(geo) AS geo From {{ source('analytics_292628166', 'events_*') }}
GROUP BY event_name
ORDER BY event_name