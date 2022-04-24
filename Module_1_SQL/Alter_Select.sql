-- ALTER COMMANDS
    --columns -> add, remove, rename
        -- ADD
            -- add column
                ALTER TABLE employee
                ADD COLUMN email VARCHAR(50) NOT NULL;
            
            -- add column after
                ALTER TABLE employee
                ADD COLUMN dob DATE
                AFTER EmpLName;
            
            -- add column first
                ALTER TABLE employee
                ADD COLUMN ManagerFName VARCHAR(40)
                FIRST;

        --Remove
                ALTER TABLE employee
                DROP COLUMN ManagerFName;
                        
                ALTER TABLE employee
                DROP COLUMN dob;