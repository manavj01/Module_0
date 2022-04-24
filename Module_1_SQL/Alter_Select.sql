-- ALTER COMMANDS
    --columns -> add, remove, rename
        -- COLUMNS
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

        -- multiple remove 
                ALTER TABLE employee
                        
                DROP COLUMN ManagerFName;
                DROP COLUMN dob;

        -- rename column
                ALTER TABLE employee
                RENAME COLUMN JOB To designation;

    -- constraints -> add, remove, modify
            -- add
                ALTER TABLE employee
                CHANGE COLUMN EmpCode EmpCode INT(4) UNIQUE NOT NULL;

                ALTER TABLE employee
                CHANGE COLUMN salary salary FLOAT;

            -- remove /MODIFY
                ALTER TABLE employee
                CHANGE COLUMN DEPTCODE DEPTCODE INT(3);