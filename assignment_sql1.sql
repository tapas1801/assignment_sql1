create database asgn;

use asgn;

create table store_sales(month varchar(20),
						 prod_name varchar(20),
                         sales int);

insert into store_sales
				values('Jan','Fruits',45000),
					  ('Jan','Vegetables',67000),
                      ('Jan','Dairy',55000),
                      ('Feb','Fruits',42000),
                      ('Feb','Vegetables',32000),
                      ('Feb','Dairy',52000),
					  ('March','Fruits',61000),
                      ('March','Vegetables',63000),
                      ('March','Dairy',92000);
                      
                 