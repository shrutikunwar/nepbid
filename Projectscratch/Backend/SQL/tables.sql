-- use database
use online_bidding_system;

    -- Admin Table
        create table admin(id int auto_increment, Adminname varchar(30),AdminTelephone bigint,AdminNIC bigint, Adminusername varchar(30),Adminpassword varchar(30),primary key(id));

    
    -- Seller Table
        create table sellers(Seller_id int auto_increment , sname varchar(30) not null, scontact varchar(30) not null, saddress varchar(30), semail varchar(30) not null, spassword varchar(30) not null, primary key(Seller_id));

    -- Bidder Table
        create table Bidder(Bidderid int auto_increment, name varchar(30) , email varchar(30), contact bigint , password varchar(30) , primary key(Bidderid) );

    -- newproduct Table
        create table newproduct(productid int auto_increment, productname varchar(30), description varchar(30), starting_bp bigint, image varchar(30), category varchar(20), sellerid int, primary key(productid), foreign key(sellerid) references sellers(Seller_id) on delete cascade);

    -- bids Table
        create table bids(id int auto_increment, productid int , bidderid int, bidamount bigint,  status varchar(20), primary key(id), foreign key(bidderid) references Bidder(Bidderid) on delete cascade, foreign key(productid) references newproduct(productid) on delete cascade);