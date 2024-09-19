select 
    "State Name" as state_name,
    "Data Value" as deaths
from cdc.deaths
where "State Name" not in ('United States', 'New York City')
and Year = 2024
and Month = 'April'
and Indicator = 'Number of Drug Overdose Deaths'
group by all
order by state_name