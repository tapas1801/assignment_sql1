create database assign;

use assign;

create table prod_sales(cust_ID int,cust_name varchar(20),
						city varchar(20),prod_ID int,
                        parch_date date,Ph_NO int);

 create table prod_service(cust_ID int,service_date date,
						   service_city varchar(20),prod_ID int);
                           
insert into prod_sales
				values(101,'ram','kal',234,'2023-03-23',12345),
					  (104,'shyam','mum',456,'2023-07-03',19005),
                      (107,'abhi','chi',345,'2023-03-20',10004),
                      (102,'mia','sim',123,'2022-03-22',800345),
                      (104,'shyam','mum',678,'2023-1-02',19005),
                      (103,'sanny','kal',789,'2021-11-29',19885);
                      
insert into prod_service
				values(104,'2023-06-05','pune',678),
					  (101,'2023-07-04','kal',234),
                      (102,'2023-05-23','del',123),
                      (103,'2022-10-29','mum',789);
 
 # a> right join
 
 select  prsl.cust_ID,prsl.city,prsl.prod_ID,prsl.parch_date,prse.service_date,prse.service_city 
     from prod_sales prsl right join prod_service prse on prsl.prod_ID=prse.prod_ID; 
 
 #b> left join
 
  select  prsl.cust_ID,prsl.city,prsl.prod_ID,prsl.parch_date,prse.service_date,prse.service_city 
     from prod_sales prsl left join prod_service prse on prsl.prod_ID=prse.prod_ID;  
     
 # c>  inner join    
     
 select  prsl.cust_ID,prsl.city,prsl.prod_ID,prsl.parch_date,prse.service_date,prse.service_city 
     from prod_sales prsl inner join prod_service prse on prsl.prod_ID=prse.prod_ID;   
    
## d> outer join (since in question left join repeated )
   
 select  prsl.cust_ID,prsl.city,prsl.prod_ID,prsl.parch_date,prse.service_date,prse.service_city 
     from prod_sales prsl left join prod_service prse on prsl.prod_ID=prse.prod_ID union
 select  prsl.cust_ID,prsl.city,prsl.prod_ID,prsl.parch_date,prse.service_date,prse.service_city 
     from prod_sales prsl right join prod_service prse on prsl.prod_ID=prse.prod_ID;  
     
 create table 1st_sales(cust_ID int,cust_name varchar(20),
						city varchar(20),prod_ID int,
                        parch_date date,Ph_NO int);    
                        
  insert into 1st_sales
				values(101,'ram','kal',234,'2023-03-23',12345),
					  (104,'shyam','mum',456,'2023-07-03',19005),
                      (107,'abhi','chi',345,'2023-03-20',10004),
                      (102,'mia','sim',123,'2022-03-22',800345),
                      (103,'sanny','kal',789,'2021-11-29',19885);                      
                     
create table 2st_sales(cust_ID int,cust_name varchar(20),
						city varchar(20),prod_ID int,
                        parch_date date,Ph_NO int);  
insert into 2st_sales
				values(101,'ram','kal',904,'2023-04-27',12345),
					  (104,'shyam','mum',400,'2023-07-03',19005),
                      (105,'ddd','kan',800,'2022-01-23',56677),
                      (106,'eee','wan',700,'2022-08-23',56007);
# e> intersect

select * from 1st_sales where 1st_sales.cust_ID in(select 2st_sales.cust_ID from 2st_sales); 
 
 # f> union
 
select * from  1st_sales union select * from  2st_sales ; 

# g> union all

select * from  1st_sales union all select * from  2st_sales ; 
                   