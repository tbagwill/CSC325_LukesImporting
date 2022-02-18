/*
create database LukeImporting;

use LukeImporting; 

create table Employee (
	EmployeeID 				smallint unsigned auto_increment not null unique,
    FirstName 					varchar(16) not null,
    LastName 					varchar(24) not null,
    primary key (EmployeeID)
    ); 

alter table Employee auto_increment = 10001;

insert into Employee(EmployeeID, FirstName, LastName) 
values (null,  'Luke', 'Porter'), (null, 'Nathan', 'Adwater'), (null, 'Trenton', 'Dinko'), (null, 'Darin', 'Sumfield');

create table ReceivingClerk (
    fkClerkEmployeeID		smallint unsigned not null,
    primary key (fkClerkEmployeeID),
    foreign key (fkClerkEmployeeID) references Employee(EmployeeID)
);

create table PurchasingAgent (
    fkEmployeeID				smallint unsigned not null,	
    primary key (fkEmployeeID),
    foreign key (fkEmployeeID) references Employee(EmployeeID)
);

###############################################################

create table Store (
    StoreID 						smallint unsigned auto_increment not null unique,
    StoreName 					varchar(32) not null,
    primary key (StoreID)
);

alter table Store auto_increment = 00500;

insert into Store(StoreID, StoreName)
values (null, 'Jen and Berry\'s'), (null, 'Father Johnathon\'s'), (null, 'Big Al\'s Parts Place');

create table Shipper (
    ShipperID				smallint unsigned auto_increment not null unique,	
    ShipperName			varchar(24),
    primary key (ShipperID)
);

insert into Shipper(ShipperID, ShipperName)
values (null, 'UPS'), (null, 'Amazon'), (null, 'FedEx');
*/

/*
create table Shipment (
    ShipmentID				mediumint(10) unsigned not null unique,
    fkShipperID				smallint unsigned not null,
    WhenSent				datetime,
    WhenReceived		datetime,
    primary key (ShipmentID),
    foreign key (fkShipperID) references Shipper(ShipperID)
);
*/

#insert into Shipment(ShipmentID, fkShipperID, WhenSent, WhenReceived)
#values (0123456789, 00001, null, null), (9283476528, 00003, '2022-01-24 08:24:00', '2022-02-02 12:28:00'), (1728394232, 00002, '2022-02-14 10:17:00', null);
/*
create table ItemDescription (
    ItemID							smallint unsigned not null auto_increment unique,
    ItemName					varchar(24) not null unique,
    ItemDescription			varchar(120),
    primary key (ItemID)
);

insert into ItemDescription(ItemID, ItemName, ItemDescription)
values (null, 'TV Remote', 'Black Remote; Samsung TV; Model: 17.08.02'), (null, 'Projector Screen', null);



create table Purchase (
    PurDateTime			datetime not null default current_timestamp,
    HowPurchased		varchar(20),
    fkPurchasedBy		smallint unsigned,
    primary key (PurDateTime),
    foreign key (fkPurchasedBy) references PurchasingAgent(fkEmployeeID)
);





create table PurchasedItem (
    fkWhenPurchased		datetime,
    fkShipmentID				mediumint(10) unsigned,
    InsuredValue				decimal(9, 2),
    ArrivalCondition			varchar(16),
    primary key (fkWhenPurchased),
    foreign key (fkWhenPurchased) references Purchase(PurDateTime),
    foreign key (fkShipmentID) references Shipment(ShipmentID)
);
*/

