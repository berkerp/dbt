with geos as (
    SELECT distinct user_pseudo_id FROM `hyperfirebasetest.analytics_292628166.events_*`
)

select * from geos