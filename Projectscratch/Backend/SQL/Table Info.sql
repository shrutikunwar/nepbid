-- Admin Table extraction

        -- 1. fetch all data from admin
            select * from admin;

        -- 2. truncate admin table
            truncate table admin;

        -- 3. drop admin table
            drop table admin;

        -- 4. varigy the admin user
            select * from admin where Adminusername = ? and Adminpassword = ?;

        -- 5. fetch admin password
            select Adminpassword from admin where id=?;

        -- 6. update the admin password
            update admin set Adminpassword= ?  where id = ? ;





-- Bidder Table extraction

        -- 1. fetch all data from Bidder
            select * From bidder;
    
        -- 2. truncate Bidder table
            truncate table Bidder;

        -- 3 . drop the table Bidder
            Drop table Bidder;

        -- 4. fetch the bidder password
            select password from bidder where bidderid=?;

        -- 5. update the bidder password
            update bidder set password=? where bidderid=?;

        -- 6. check bidder is present or not
            select * from bidder where bidderid = ? and password =?;





-- Seller Table extraction 
                desc sellers;

        -- 1. fetch all data from sellers table
            select * from sellers;
        
        -- 2. truncate sellers table
            truncate table sellers;

        -- 3. drop sellers table
            drop table sellers;

        -- 4. select some of the fileds  from the bidder
            SELECT Bidderid,name,email,contact FROM Bidder;

        -- 5. fetch sellers password from id
            select spassword from sellers where Seller_id=?;

        -- 6. update sellers password
            update sellers set spassword =? where Seller_id=?;

        -- 7. check seller is present or not
            select * from sellers where Seller_id = ? and spassword =?;


-- Product table extraction
            Desc newproduct;
            
            -- 1. fetch all the data from the new product table
                select * from newproduct;

            -- 2. find seller id and product name using product id
                select productname, sellerid from newproduct where productid=?
                
            
            -- 3. truncate new product table
                truncate table newproduct;

            -- 4. drop table newproduct;
                    drop table newproduct;

            -- 5. extract all products of a seller
                    select count(*) from newproducts where sellerid=?;

            -- 6. Search product name
                select productname, description, starting_bp,image from newproduct where productname LIKE 'c';
            

-- Bids Table extraction 
                desc bids;

                -- 1. fetch all the data from the bids table
                    select * from bids;

                -- 2. truncate table bids
                    truncate table bids;

                -- 3. drop table bids
                    drop table bids;

                -- 4. fetch last product allotted
                    SELECT productid FROM bids WHERE status = 'alloted' and  bidderid = 1  ORDER BY id DESC LIMIT 1;

                -- 5. fetch last 3 products bids
                        SELECT productid FROM bids WHERE status="pending" and bidderid = 1  ORDER BY id DESC LIMIT 3;

                

-- combined Queries
SELECT  bids.productid, bids.bidamount, bids.status, newproduct.productname FROM bids INNER JOIN newproduct ON bids.productid = newproduct.productid WHERE bids.bidderid = 1 AND newproduct.productname LIKE '%chandeliers';

-- extract number of alloted product by seller
        select * from bids inner JOIN newproduct on bids.productid = newproduct.productid where newproduct.sellerid= 2 and bids.status ="alloted";

-- extract no of pending products by seller 
        select * from bids inner JOIN newproduct on bids.productid = newproduct.productid where newproduct.sellerid= 2 and bids.status = "pending";

-- extract highest bid for seller
        select bids.bidamount from bids inner JOIN newproduct on bids.productid = newproduct.productid where newproduct.sellerid = 2 ORDER BY bids.bidamount DESC LIMIT 1;