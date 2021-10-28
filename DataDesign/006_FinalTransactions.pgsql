select * from Clients;
select * from ShoppingLists;
select * from ShoppingListProducts;
select * from ShoppingTrips;
select * from ShoppingTripItems;
select * from Orders;
select * from OrderDetails;
select * from ShoppingListProducts;

select * from Vendors;
select * from VendorAccess;

---------------------------------
--Run the below transaction to reset the data base after the process has been tested.

truncate table OrderDetails;
delete from Orders where id > 24;

truncate table ShoppingTripItems;
delete from ShoppingTrips where id > 28;

delete from ShoppingLists where clientId > 3;
delete from ShoppingListProducts where id > 8;
delete from Clients where id > 3;

----------------------------------
--expense report join
select orderId, date, clientId, name, quantity, price, discount, subtotal, status, Orders.total
from orderdetails
inner join shoppinglistproducts on OrderDetails.productid = ShoppingListProducts.id
inner join Orders on OrderDetails.orderId = Orders.id
inner join ShoppingTrips on Orders.shoppingtripid = ShoppingTrips.id;

----------------------------------

insert into Vendors (name) values ('custom vendor');

----------------------------------

select orderId, name, quantity, price, discount, subtotal
from orderdetails
inner join shoppinglistproducts on OrderDetails.productid = ShoppingListProducts.id;

