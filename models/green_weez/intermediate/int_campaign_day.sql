select
    date_date
    ,SUM(ads_cost) as ads_cost
    ,SUM(impression) as ads_impressions
    ,SUM(click) as ads_clicks
from {{ ref('int_campaigns') }}
group by date_date
order by date_date desc