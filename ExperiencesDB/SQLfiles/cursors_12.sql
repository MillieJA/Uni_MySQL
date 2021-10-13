/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- CURSORS --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\cursors_12.sql *****

-- Implicit Cursor Procedure - takes an address street and 
-- deletes it if it exists, outputing console feedback
CREATE OR REPLACE PROCEDURE pro_imp_cursor_del_address (in_address_street addresses.street%TYPE) IS
BEGIN

    DELETE 
    FROM addresses
    WHERE street = in_address_street;

    IF SQL%FOUND THEN 
        DBMS_OUTPUT.PUT_LINE( in_address_street || ' WAS REMOVED ');
    ELSE 
        DBMS_OUTPUT.PUT_LINE( in_address_street || ' DOESNT EXIST ');
    END IF;

END pro_imp_cursor_del_address;  -- Good practice to include name here
/

SHOW ERRORS;

-- Explicit Cursor - Uses implicit cursor "pro_imp_cursor_del_address"
-- in a loop which if the city is the one mentioned in the procedure parameter
-- it deletes the record. (deletes every existing row with the city from the parameter)
CREATE OR REPLACE PROCEDURE pro_exp_cursor_del_address (in_address_city addresses.city%TYPE) IS
        row_count NUMBER(3) := 0;
        
        CURSOR c_addresses IS
        SELECT street, city
        FROM addresses; 

        rec_c_addresses c_addresses%ROWTYPE;

    BEGIN 
        OPEN c_addresses; 
        FETCH c_addresses INTO rec_c_addresses;
            WHILE c_addresses%FOUND LOOP
                    IF rec_c_addresses.city = in_address_city THEN
                        pro_imp_cursor_del_address(rec_c_addresses.street);
                        row_count := row_count + 1;
                    END IF;
                FETCH c_addresses INTO rec_c_addresses;
            END LOOP;
        
        DBMS_OUTPUT.PUT_LINE('OUT OF ' || c_addresses%ROWCOUNT || ' ROWS, ' || row_count || ' WERE DELETE(D)');

        CLOSE c_addresses; 
END pro_exp_cursor_del_address;
/