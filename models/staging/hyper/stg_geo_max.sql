SELECT ANY_VALUE(geo) AS geo, MAX(param.value.int_value) AS max_level
FROM {{ source('analytics_292628166', 'events_*') }},
UNNEST(event_params) AS param
WHERE event_name = "level_start"
AND param.key = "level"
GROUP BY user_pseudo_id