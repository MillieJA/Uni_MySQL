/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- TRIGGERS --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\triggers_12.sql *****

-- A trigger which adds a year to the current date when a ticket is created and inserts that value into the ticket expiration date
CREATE or REPLACE TRIGGER trig_ticket_expiry
BEFORE INSERT ON tickets
FOR EACH ROW
DECLARE
    vd_date DATE;
BEGIN
    vd_date := add_months(:NEW.start_date, 12);
    :NEW.expiration_date := vd_date;
END trig_ticket_expiry;
/
SHOW ERRORS

-- A trigger which raises an error when a ticket is created with a start date in the past
CREATE or REPLACE TRIGGER trig_ticket_start
BEFORE INSERT ON tickets
FOR EACH ROW
WHEN (NEW.start_date < sysdate)

BEGIN
    RAISE_APPLICATION_ERROR(-20000,  'TICKET START DATE MUST NOT BE BEFORE THE CURRENT DATE');
END trig_ticket_start;
/
SHOW ERRORS

-- A trigger which uses a function to display how long a ticket has left until it expires
CREATE or REPLACE TRIGGER trig_time_left
AFTER INSERT OR UPDATE OR DELETE ON tickets
FOR EACH ROW

DECLARE 
vn_time_left NUMBER(2);
vc_cust_name VARCHAR2(40);

BEGIN
vc_cust_name := CONCAT(:NEW.customer_firstname, CONCAT(' ', :NEW.customer_surname));
IF (INSERTING) THEN
    vn_time_left := func_get_time_left(sysdate, :NEW.expiration_date);
    DBMS_OUTPUT.PUT_LINE(vc_cust_name || ' has ' || vn_time_left || ' months left to use their ticket');
ELSIF (UPDATING) THEN
    vn_time_left := func_get_time_left(:OLD.start_date, :NEW.expiration_date);
    DBMS_OUTPUT.PUT_LINE(vc_cust_name || ' has ' || vn_time_left || ' months left to use their ticket');
ELSE
    DBMS_OUTPUT.PUT_LINE('You have deleted a ticket');
END IF;
END trig_time_left;
/
SHOW ERRORS