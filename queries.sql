1a. Find the Top Acquirers in Renewable Energy - Deal Value

select buyer_id, name, max(deal_value) as maximum_deal_value
from companies
inner join transactions
on companies.company_id = transactions.buyer_id
group by companies.name, transactions.buyer_id
order by maximum_deal_value
----------------------------------------------------------------------------------------------------
1b. Find the Top Acquirers in Renewable Energy - Number of acquisitions

select buyer_id, name, count(*) as total_acquisitions
from companies
inner join transactions
on companies.company_id = transactions.buyer_id
group by companies.name, transactions.buyer_id
order by total_acquisitions
----------------------------------------------------------------------------------------------------
2. Show M&A Trends Over Time

SELECT YEAR(deal_date) AS year, COUNT(*) AS deals, SUM(deal_value) AS total_value
FROM transactions
GROUP BY YEAR(deal_date)
ORDER BY year DESC
----------------------------------------------------------------------------------------------------
3. Find the Most Expensive Acquisitions

select company_id, name, energy_type, max(deal_value) as Max_deal_value
from companies
inner join transactions
on companies.company_id = transactions.buyer_id
group by companies.company_id, companies.name, energy_type
order by Max_deal_value desc

OR

SELECT transaction_id, c1.name AS buyer, c2.name AS seller, deal_value, energy_type
FROM transactions t
JOIN companies c1 ON t.buyer_id = c1.company_id
JOIN companies c2 ON t.seller_id = c2.company_id
ORDER BY deal_value DESC
----------------------------------------------------------------------------------------------------
4. Energy Type Analysis: Breakdown of deals by solar, wind, hydro, etc.

select energy_type, count(*) AS number_of_deals, sum(deal_value) as Total_deal_value
from transactions
group by energy_type
----------------------------------------------------------------------------------------------------
5. Top Investors in M&A Deals

SELECT investor, COUNT(*) AS investments, SUM(amount) AS total_invested
FROM financing
GROUP BY investor
ORDER BY total_invested DESC