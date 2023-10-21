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
            select * from Bidder;
    
        -- 2. truncate Bidder table
            truncate table Bidder;

        -- 3 . drop the table Bidder
            Drop table Bidder;





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


-- Product table extraction
            Desc newproduct;
            
            -- 1. fetch all the data from the new product table
                select * from newproduct;

            -- 2. add new product 
                INSERT INTO newproduct(productname,description,category,starting_bp,image,sellerid) VALUES (?, ?, ?, ?, ?, ?);
            
            -- 3. truncate new product table
                truncate tablel newproduct;

            -- 4. drop table newproduct;
                    drop table newproduct;

-- Bids Table extraction 
                desc bids;

                -- 1. fetch all the data from the bids table
                    select * from bids;

                -- 2. truncate table bids
                    truncate table bids;

                -- 3. drop table bids
                    drop table bids;

