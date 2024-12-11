SELECT * FROM synthetic.sales_jan
UNION
SELECT * FROM synthetic.sales_feb;

-----Note only one monitor--------------
SELECT product_name, amount FROM synthetic.sales_jan
UNION
SELECT product_name, amount FROM synthetic.sales_feb;


-----OM man behålla allt--------------
SELECT product_name, amount FROM synthetic.sales_jan
UNION ALL
SELECT product_name, amount FROM synthetic.sales_feb;


-----eshterak--------------
SELECT product_name, amount FROM synthetic.sales_jan
INTERSECT
SELECT product_name, amount FROM synthetic.sales_feb;


-----Except   A be joz B--------------
SELECT product_name, amount FROM synthetic.sales_jan
EXCEPT
SELECT product_name, amount FROM synthetic.sales_feb;


-----eshterak(empty set because different dates in monitor)--------------
SELECT * FROM synthetic.sales_jan
INTERSECT
SELECT * FROM synthetic.sales_feb;
