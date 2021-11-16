with geos as (
    SELECT distinct user_pseudo_id FROM `hyperfirebasetest.analytics_292628166.events_20211114`
)

select * from geos