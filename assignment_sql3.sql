use day1;

select * from bank_inventory_pricing;


## Ans 1

select product,Price from bank_inventory_pricing
 order by price desc limit 1;
 
 ## Ans 2
 
select product,purchase_cost,estimated_sale_price,
(estimated_sale_price - purchase_cost) as profit from  bank_inventory_pricing;

## Ans 3

select count(product) from bank_inventory_pricing
 where purchase_cost is null;
 
 ## Ans 4
 
select product,sum(purchase_cost*quantity) from bank_inventory_pricing
 group by product;
 
 ## Ans 5
 
 select product,sum(purchase_cost*quantity) as Revenew 
 from bank_inventory_pricing group by product;
 