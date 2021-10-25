select productId, quantity, price, discountComplement, vendorId, status from ShoppingTripItems where id is null;

select * from ShoppingTrips;

insert into ShoppingTrips (total, date)
    values (-78, CURRENT_TIMESTAMP);

delete from ShoppingTrips where id < 11;

select max(id) from ShoppingTrips;

-------------------------------------

select * from Vendors;

-------------------------------------

select * from ShoppingTripItems;

delete from ShoppingTripItems where shoppingTripId < 11;

-------------------------------------

select * from Clients;

select * from Orders;

drop table Orders;

select * from OrderDetails;

drop table OrderDetails;

-------------------------------------

create table Orders(
    id serial not null,
    shoppingTripId integer not null,
    clientId integer not null,
    total numeric,
    primary key(id),
    constraint fk_shoppingTripId
        foreign key(shoppingTripId)
            references ShoppingTrips(id),
    constraint fk_clientId
        foreign key(clientId)
            references Clients(id)
);

create table OrderDetails(
    id serial not null,
    orderId integer not null,
    productId integer not null,
    quantity integer,
    price numeric,
    discount numeric,
    subTotal numeric,
    vendorId integer not null,
    status varchar(30),
    primary key(id),
    constraint fk_orderId
        foreign key(orderId)
            references Orders(id),
    constraint fk_productId
        foreign key(productId)
            references ShoppingListProducts(id),
    constraint fk_vendorId
        foreign key(vendorId)
            references Vendors(id)
);

------------------------------------------

select * from Clients;
select * from ShoppingLists;
select * from ShoppingListProducts;