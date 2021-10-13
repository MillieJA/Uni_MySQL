/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- FUNCTIONS --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\functions_12.sql *****

-- A function which counts how many tickets there are
CREATE OR REPLACE FUNCTION func_ticket_ct
RETURN NUMBER IS
    vn_ticket_ct NUMBER(8);
BEGIN
    SELECT COUNT(*)
    INTO vn_ticket_ct
    FROM tickets;
RETURN vn_ticket_ct;
END func_ticket_ct;
/
SHOW ERRORS

-- A function which sums up the cost of all of the tickets
CREATE OR REPLACE FUNCTION func_ticket_sum
RETURN NUMBER IS
    vn_ticket_sum NUMBER(12,2);
BEGIN
    SELECT SUM(ticket_price)
    INTO vn_ticket_sum
    FROM tickets;
RETURN vn_ticket_sum;
END func_ticket_sum;
/
SHOW ERRORS

-- A function which works out how long a ticket has left until it expires
CREATE OR REPLACE FUNCTION func_get_time_left(in_start tickets.start_date%TYPE, in_expiry tickets.expiration_date%TYPE)
RETURN NUMBER IS
    vn_time_left NUMBER(2);
BEGIN
    vn_time_left := FLOOR(MONTHS_BETWEEN(in_expiry, in_start));
RETURN vn_time_left;
END func_get_time_left;
/
SHOW ERRORS

-- A function which counts how many locations there are
CREATE OR REPLACE FUNCTION func_location_ct
RETURN NUMBER IS
    vn_location_ct NUMBER(3);
BEGIN
    SELECT COUNT(*)
    INTO vn_location_ct
    FROM locations;
RETURN vn_location_ct;
END func_location_ct;
/
SHOW ERRORS

-- A function which counts how many locations there are within a given country
CREATE OR REPLACE FUNCTION func_param_location_ct (in_country addresses.country%TYPE)
RETURN NUMBER IS
    vn_location_ct NUMBER(3);
BEGIN
    SELECT COUNT(*)
    INTO vn_location_ct
    FROM locations l
    WHERE l.address.country = in_country;
RETURN vn_location_ct;
END func_param_location_ct;
/
SHOW ERRORS