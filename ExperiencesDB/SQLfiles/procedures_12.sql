/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- PROCEDURES --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\procedures_12.sql *****

-- A procedure which uses functions to display how many tickets have been sold and what their sum price is
CREATE OR REPLACE PROCEDURE proc_display_ticket_info IS
    vn_no_of_tickets NUMBER(8);
    vn_sum_of_tickets NUMBER(12,2);
BEGIN
    vn_no_of_tickets := func_ticket_ct;
    vn_sum_of_tickets := func_ticket_sum;
    DBMS_OUTPUT.PUT_LINE ('There have been ' || vn_no_of_tickets || ' tickets sold totalling ' || vn_sum_of_tickets || ' pounds.');
END proc_display_ticket_info;
/
SHOW ERRORS

-- A procedure which works out how many tickets a given sponsor has sponsored
CREATE OR REPLACE PROCEDURE proc_sponsor_ct (in_sponsor_id tickets.sponsor_id%TYPE) IS
    vn_no_sponsor NUMBER(4);
    vc_sponsor_name VARCHAR2(50);
BEGIN 
    SELECT COUNT(*)
    INTO vn_no_sponsor
    FROM tickets
    WHERE sponsor_id = in_sponsor_id;
    
    SELECT sponsor_name
    INTO vc_sponsor_name
    FROM sponsors
    WHERE sponsor_id = in_sponsor_id;
    
    DBMS_OUTPUT.PUT_LINE (vc_sponsor_name || ' have sponsored ' || vn_no_sponsor || ' tickets.');
END proc_sponsor_ct;
/
SHOW ERRORS

-- A procedure which uses a function to display how many locations there are
CREATE OR REPLACE PROCEDURE proc_location_ct IS
    vn_no_locations NUMBER(3);
BEGIN
    vn_no_locations := func_location_ct;
    DBMS_OUTPUT.PUT_LINE ('There are ' || vn_no_locations || ' locations.');
END proc_location_ct;
/
SHOW ERRORS

-- A procedure which uses a function to display how many locations there are in a given country
CREATE OR REPLACE PROCEDURE proc_param_location_ct(in_country addresses.country%TYPE) IS
    vn_no_locations NUMBER(3);
BEGIN
    vn_no_locations := func_param_location_ct(in_country);
    DBMS_OUTPUT.PUT_LINE ('There are ' || vn_no_locations || ' locations in ' || in_country);
END proc_param_location_ct;
/
SHOW ERRORS

/* Attempted procedure to display any tickets which are about to expire - NOT WORKING
CREATE OR REPLACE PROCEDURE proc_ticket_exp IS
    -- vn_ticket_id tickets.ticket_id%TYPE;
    -- vd_exp_date tickets.expiration_date%TYPE;
    -- vc_customer_firstname tickets.customer_firstname%TYPE;
    -- vc_customer_surname tickets.customer_surname%TYPE;
    vc_fullname VARCHAR2(40); 
BEGIN
    SELECT expiration_date, ticket_id, customer_firstname, customer_surname
    -- INTO vd_exp_date, vn_ticket_id, vc_customer_firstname,  vc_customer_surname
    FROM tickets
    WHERE expiration_date < sysdate + 7;
            
    WHILE expiration_date IS NOT NULL LOOP
        vc_fullname := CONCAT(customer_firstname, CONCAT(' ', customer_surname));
        DBMS_OUTPUT.PUT_LINE (vc_fullname || 's ticket will expire within one week. Ticket Number: ' || ticket_id);
    END LOOP;        
END proc_ticket_exp;
/ 
SHOW ERRORS
*/