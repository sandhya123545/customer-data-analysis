USE project_customer_segmentation;
select * from customer limit 10;

## how is the shopping distribution according to the gender?
select gender,count(*) from customer group by gender;

##which gender did we sell more products to?
select gender,sum(quantity) as total_products_sold from customer group by gender order by total_products_sold desc;

##which gender generated more revenue?
select gender,sum(quantity*price) as total_revenue from customer group by gender order by total_revenue desc;

##Distribution of purchase categories relative to other columns
select category,count(*) as total_transactions from customer group by category order by total_transactions desc;
select category,gender,count(*) as total_transactions,sum(quantity) as total_products_sold from customer group by category,gender
 order by category,total_products_sold desc;
 
 select category,payment_method, count(*) as total_transactions from customer group by category,payment_method order by 
 category,total_transactions desc;
 
 select shopping_mall,category,sum(quantity) as total_products_sold from customer group by shopping_mall,category
 order by shopping_mall,total_products_sold desc;
 
 ##how is shopping distribution according to age?
 select age,count(*)as total_transactions from customer group by age order by age desc;
 
 ##which age cat did we sell more products to?
 select case
 when age between 18 and 25 then '18-25'
 when age between 26 and 35 then '26-35'
 when age between 36 and 45 then '36-45'
 when age between 46 and 55 then '45-55'
 else '56+'
 end as age_category,sum(quantity) as total_products_sold from customer group by age_category order by total_products_sold desc;
 
 ##which age category generated more revenue?
 select case
 when age between 18 and 25 then '18-25'
 when age between 26 and 35 then '26-35'
 when age between 36 and 45 then '36-45'
 when age between 46 and 55 then '46-55'
 else '56+'
 end as age_category,sum(quantity*price) as total_revenue from customer group by age_category order by total_revenue desc;

##does the payment method have a relation with other columns?
select gender,payment_method,count(*) as total_transactions from customer group by gender,payment_method
 order by total_transactions desc;
 
 select category,payment_method,count(*) as total_transactions from customer group by category,payment_method 
 order by total_transactions desc;
 
 select shopping_mall,payment_method,count(*) as total_transactions from customer group by shopping_mall,payment_method 
 order by total_transactions desc;
 
 select case 
 when age between 18 and 25 then '18-25'
 when age between 26 and 35 then '26-35'
 when age between 36 and 45 then '36-45'
 when age between 46 and 55 then '46-55'
 else '56+'
 end as age_category,payment_method,count(*) as total_transactions from customer group by age_category,payment_method 
 order by total_transactions desc;
 
 ##how is the distribution of the payment method
 select payment_method from customer;
 select payment_method,count(*) as total_transactions from customer group by payment_method order by total_transactions desc;
 
 