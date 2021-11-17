 SELECT user_pseudo_id, ANY_VALUE(device) AS device From {{ source('analytics_292628166', 'events_*') }}
  GROUP BY
  user_pseudo_id