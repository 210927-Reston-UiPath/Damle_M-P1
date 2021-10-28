select * from Clients;
select * from ShoppingLists;
select * from ShoppingListProducts;

select * from Orders;
select * from OrderDetails;

select * from ShoppingTrips;
select * from ShoppingTripItems;

select * from Vendors;
select * from VendorAccess;

---------------------------------

update Clients set email = 'dumblaymyhit@gmail.com'
    where id = 1;
update Clients set email = 'dumblaymyhit@gmail.com'
    where id = 2;
update Clients set email = 'dumblaymyhit@gmail.com'
    where id = 3;

---------------------------------

delete from Clients where id > 3;
delete from ShoppingListProducts where id > 8;

truncate table OrderDetails;
delete from Orders where id > 0;

truncate table ShoppingTripItems;

delete from ShoppingTrips where id > 16;