#create database LukeImporting;
#use LukeImporting; 

/*
create table Employee (
	EmployeeID 			smallint unsigned auto_increment not null unique,
    FirstName 			varchar(16) not null,
    LastName 			varchar(24) not null,
    DepartmentID 		tinyint unsigned not null,
    primary key (EmployeeID)
    );
*/  

#alter table Employee auto_increment = 10001;

#insert into Employee(EmployeeID, FirstName, LastName, DepartmentID) 
#values (null,  'Luke', 'Porter', 0), (null, 'Nathan', 'Adwater', 1), (null, 'Trenton', 'Dinko', 2);

/*
    create table ReceivingClerk (
    fkEmployeeID		smallint unsigned not null,
    fkDepartmentID		tinyint unsigned not null,
    primary key (fkEmployeeID),
    foreign key (fkEmployeeID) references Employee(EmployeeID)
    );
*/
/*
    create table PurchasingAgent (
    fkEmployeeID		smallint unsigned not null,	
    fkDepartmentID		tinyint unsigned not null,
    primary key (fkEmployeeID),
    foreign key (fkEmployeeID) references Employee(EmployeeID)
    );
*/

###############################################################

/*
    create table Store (
    StoreID 			smallint unsigned auto_increment not null unique,
    StoreName 			varchar(32) not null,
    primary key (StoreID)
    );
*/

#alter table Store auto_increment = 00500;

#insert into Store(StoreID, StoreName)
#values (null, 'Jen and Berry\'s'), (null, 'Father Johnathon\'s'), (null, 'Big Al\'s Parts Place');

/*
    create table ItemDescription (
    ItemID				smallint unsigned not null auto_increment unique,
    ItemName			varchar(24) not null unique,
    Description			varchar(120),
    primary key (ItemID)
    );
*/
/*
    create table PurchasedItem (
    fkItemID			smallint unsigned,
    fkPurchasingAgent	smallint unsigned,
    InsuredValue		decimal(9, 2),
    ArrivalCondition	varchar(16),
    primary key (fkItemID),
    foreign key (fkItemID) references ItemDescription(ItemID),
    foreign key (fkPurchasingAgent) references PurchasingAgent(fkEmployeeID)
    );
*/
/*
    create table Purchase (
    PurDateTime			datetime not null,
    HowPurchased		varchar(20),
    fkItemID			smallint unsigned,				
    primary key (PurDateTime),
    foreign key (fkItemID) references PurchasedItem(fkItemID)
    );
*/
/*
    create table Shipper (
    ShipperID			smallint unsigned not null unique,	
    ShipperName			varchar(24),
    primary key (ShipperID)
    );
*/
/*
    create table Shipment (
    ShipmentID			smallint unsigned not null unique,
    fkShippedBy			smallint unsigned not null,
    SentDateTime		datetime not null,
    ReceivedDateTime	datetime not null,
    fkReceivedBy		smallint unsigned,
    primary key (ShipmentID),
    foreign key (fkShippedBy) references Shipper(ShipperID),
    foreign key (fkReceivedBy) references ReceivingClerk(fkEmployeeID)
    );
*/

/*
insert into Employee(EmployeeID, FirstName, LastName, DepartmentID) 
values (null,  'Luke', 'Porter', 0), (null, 'Nathan', 'Adwater', 1), (null, 'Trenton', 'Dinko', 2);

insert into Store 
values (null, 'Jen and Berry\'s'), (null, 'Father Johnathon\'s'), (null, 'Big Al\'s Parts Place');
*/

select *
from store;
