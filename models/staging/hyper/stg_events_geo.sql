 SELECT user_pseudo_id, ANY_VALUE(geo) AS geo From {{ source('analytics_292628166', 'events_*') }}
  GROUP BY
  user_pseudo_id