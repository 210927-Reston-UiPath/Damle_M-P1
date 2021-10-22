create table Vendors(
    id serial not null,
    name varchar(30),
    primary key(id)
);
insert into Vendors (name) values ('(no vendor)');

drop table Vendors;

-------------------------------------

create table VendorAccess(
    id integer not null,
    username varchar(30),
    password varchar(30),
    primary key(id, username, password),
    constraint fk_vendorId
        foreign key(id)
            references Vendors(id)
);

drop table VendorAccess;

-------------------------------------

create table Clients (
    id serial not null,
    firstName varchar(30),
    lastName varchar(30),
    email varchar(30),
    primary key(id)
);

drop table clients;

-------------------------------------

create table ShoppingLists(
    clientId integer not null,
    product varchar(30) not null,
    quantity integer not null,
    primary key(clientId, product, quantity),
    constraint fk_clientId
        foreign key(clientId)
            references Clients(id)
            on delete cascade
);

drop table ShoppingLists;

-------------------------------------

create table OrderReference(
    orderId serial,
    clientId integer not null,
    total numeric,
    primary key(orderId),
    constraint fk_clientId
        foreign key(clientId)
            references Clients(id)
);

drop table OrderReference;

-------------------------------------

create table OrderDetails(
    itemId serial not null,
    orderId integer not null,
    product varchar(30) not null,
    quantity integer not null,
    price numeric not null,
    discountNet numeric not null,
    vendorId integer not null,
    status varchar(30) not null,
    primary key(itemId),
    constraint fk_orderId
        foreign key(id)
            references OrderReference(orderId),
    constraint fk_vendorId
        foreign key(vendorId)
            references Vendors(id)
);

drop table OrderDetails;

-------------------------------------

select * from Vendors;
select * from VendorAccess;
select * from Clients;
select * from ShoppingLists;
select * from OrderReference;
select * from Orders;

-------------------------------------