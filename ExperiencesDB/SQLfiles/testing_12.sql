/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- TESTING --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\testing_12.sql *****

SET SERVEROUTPUT ON

-- CURSORS 

-- Testing implicit cursor "pro_imp_cursor_del_address"
-- Inserting dummy data
INSERT INTO addresses (street, city, country, postcode)
VALUES ('256 GOLDINGTON AVENUE', 'NORTHAMPTON', 'UNITED KINGDOM', 'BT23E');

-- Check the record has been inserted
SELECT *
FROM addresses
WHERE street = '256 GOLDINGTON AVENUE';

-- Use the implicit cursor to delete the matching record
EXEC pro_imp_cursor_del_address('256 GOLDINGTON AVENUE');

-- Check the record has been deleted
SELECT *
FROM addresses
WHERE street = '256 GOLDINGTON AVENUE';

-- Testing explicit cursor "pro_exp_cursor_del_address"
-- Inserting dummy data
INSERT INTO addresses (street, city, country, postcode)
VALUES ('256 GOLDINGTON AVENUE', 'NORTHAMPTON', 'UNITED KINGDOM', 'BT23E');
INSERT INTO addresses (street, city, country, postcode)
VALUES ('123 BEGWARY CLOSE', 'NORTHAMPTON', 'UNITED KINGDOM', 'PE198PZ');
INSERT INTO addresses (street, city, country, postcode)
VALUES ('22 HUNTINGTON WAY', 'NORTHAMPTON', 'UNITED KINGDOM', 'HE192PN');

-- Check the records have been inserted
SELECT *
FROM addresses
WHERE city = 'NORTHAMPTON';

-- Use the explicit cursor to delete the matching records
EXEC pro_exp_cursor_del_address('NORTHAMPTON');

-- Check the records have been deleted
SELECT *
FROM addresses
WHERE city = 'NORTHAMPTON';


-- PROCEDURES

-- Testing procedure "proc_display_ticket_info" 
-- A procedure which uses functions to display how many tickets have 
-- been sold (func_ticket_ct) and what their sum price is (func_ticket_sum)
EXECUTE proc_display_ticket_info; -- Output: There have been 46 tickets sold totalling 6220 pounds.(previous inserts)

-- Inserting ticket sales.
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MARK', 'COLOM', 4012, 3004, 40.00, sysdate, description_varray_type('SINGLE', 'SILVER', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'ESTER', 'GARCIA', 4010, 3001, 70.00, sysdate, description_varray_type('FAMILY', 'SILVER', 'CREDIT/DEBIT CARD'));

EXECUTE proc_display_ticket_info; -- Output: There have been 48 tickets sold totalling 6330 pounds.

-- Deleting inserts for testing
DELETE FROM tickets WHERE customer_firstname = 'MARK' AND customer_surname = 'COLOM';
DELETE FROM tickets WHERE customer_firstname = 'ESTER' AND customer_surname = 'GARCIA';

EXECUTE proc_display_ticket_info; -- Output: There have been 46 tickets sold totalling 6220 pounds. (previous inserts, plus testing inserts)

-- Testing procedure "proc_sponsor_ct"
-- A procedure which works out how many tickets a given sponsor has sponsored
EXECUTE proc_sponsor_ct(3003); -- Output: RED BULL have sponsored 4 tickets. (previous inserts)

-- Inserting ticket sales.
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MARK', 'COLOM', 4012, 3003, 40.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'ESTER', 'GARCIA', 4010, 3003, 70.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'CREDIT/DEBIT CARD'));

EXECUTE proc_sponsor_ct(3003); -- Output: RED BULL have sponsored 6 tickets. (previous inserts, plus testing inserts)

-- Deleting inserts for testing
DELETE FROM tickets WHERE customer_firstname = 'MARK' AND customer_surname = 'COLOM';
DELETE FROM tickets WHERE customer_firstname = 'ESTER' AND customer_surname = 'GARCIA';

EXECUTE proc_sponsor_ct(3003); -- Output: RED BULL have sponsored 4 tickets. (previous inserts, minus testing inserts)


-- Testing procedure "proc_location_ct"
-- A procedure which uses a function (func_location_ct) to display how many locations there are 
EXECUTE proc_location_ct; -- Output: There are 7 locations. (previous inserts)

-- Inserting location for testing
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'PCBANG', address_type('AIRFIELD ROAD', 'LONGLEY INDUSTRIAL', 'UNITED KINGDOM', 'BN1 4GY'), facility_table_type(
    facility_type('100 GAMES', 'THIS LOCATION HAS 100 PRE-INSTALLED GAMES TO CHOOSE FROM'),
    facility_type('GAMING CHAIRS', 'THIS LOCATION HAS COMFORTABLE GAMING CHAIR FOR LONG SESSIONS'),
    facility_type('1GBPS INTERNET', 'THIS LOCATION HAS 100GBPS INTERNET CONNECTION'),
    facility_type('FASTEST HARDWARE', 'THIS LOCATION HAS TOP PERFORMING HARDWARE')));

EXECUTE proc_location_ct; -- Output: There are 8 locations (previous inserts, plus testing insert)

-- Deleting insert for testing
DELETE FROM locations WHERE location_name = 'PCBANG';

EXECUTE proc_location_ct;  -- Output: There are 7 locations. (previous inserts, minus testing insert)


-- Testing procedure "proc_param_location_ct"
-- A procedure which uses a function (proc_param_location_ct) to display how many locations there are in a given country
EXECUTE proc_param_location_ct('UNITED KINGDOM'); -- Output: There are 3 locations in UNITED KINGDOM (previous inserts)

-- Inserting location for testing
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'PCBANG', address_type('AIRFIELD ROAD', 'LONGLEY INDUSTRIAL', 'UNITED KINGDOM', 'BN1 4GY'), facility_table_type(
    facility_type('100 GAMES', 'THIS LOCATION HAS 100 PRE-INSTALLED GAMES TO CHOOSE FROM'),
    facility_type('GAMING CHAIRS', 'THIS LOCATION HAS COMFORTABLE GAMING CHAIR FOR LONG SESSIONS'),
    facility_type('1GBPS INTERNET', 'THIS LOCATION HAS 100GBPS INTERNET CONNECTION'),
    facility_type('FASTEST HARDWARE', 'THIS LOCATION HAS TOP PERFORMING HARDWARE')));

EXECUTE proc_param_location_ct('UNITED KINGDOM'); -- Output: There are 4 locations in UNITED KINGDOM (previous inserts, plus testing insert)

-- Deleting insert for testing
DELETE FROM locations WHERE location_name = 'PCBANG';

EXECUTE proc_param_location_ct('UNITED KINGDOM');  -- Output: There are 3 locations in UNITED KINGDOM (previous inserts, minus testing insert)


-- TRIGGERS

-- Testing trigger "trig_ticket_expiry"
-- A trigger which inserts the value of start date + 1 year into the expiration date on insert for tickets

-- Inserting ticket for testing
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MARK', 'COLOM', 4012, 3003, 40.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'CREDIT/DEBIT CARD'));

-- Check expiration_date for the inserted record.
SELECT ticket_id, expiration_date FROM tickets WHERE customer_firstname = 'MARK' AND customer_surname = 'COLOM';
-- OUTPUT: 5051 '02-MAY-21'

-- Deleting insert for testing
DELETE FROM tickets WHERE ticket_id = 5051;

-- Check if record was deleted
SELECT ticket_id FROM tickets WHERE ticket_id = 5051;


-- Testing trigger "trig_ticket_start"
-- A trigger which makes sure a tickets start date is not is the past when inserting a ticket

-- Inserting ticket for testing
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MARK', 'COLOM', 4012, 3003, 40.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'CREDIT/DEBIT CARD'));
-- Does not throw an error

-- Deleting insert for testing
DELETE FROM tickets WHERE ticket_id = 5052;

-- Check if record was deleted
SELECT ticket_id, expiration_date FROM tickets WHERE ticket_id = 5052;

-- Insert again but use a value which is in the past
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MARK', 'COLOM', 4012, 3003, 40.00, '15-JAN-2020', description_varray_type('DOUBLE', 'GOLD', 'CREDIT/DEBIT CARD'));
-- Throws error


-- Testing trigger "trig_time_left"
-- A trigger which uses a function (func_get_time_left) to display how long a ticket has left until it expires on update or insert

-- Inserting ticket for testing
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MARK', 'COLOM', 4012, 3003, 40.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'CREDIT/DEBIT CARD'));
-- Output: MARK COLOM has 12 months left before their ticket expires

UPDATE tickets
SET expiration_date = '15-DEC-2020'
WHERE ticket_id = 5054;
-- Output: MARK COLOM has 7 months left before their ticket expires

-- Deleting insert for testing
DELETE FROM tickets WHERE ticket_id = 5054;
-- Output: You have deleted a ticket

-- Check if record was deleted
SELECT ticket_id FROM tickets WHERE ticket_id = 5054;