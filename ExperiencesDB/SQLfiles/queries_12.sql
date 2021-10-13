/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- QUERIES --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\queries_12.sql *****

-- Get ref
SELECT s.sponsor_id, s.sponsor_name, s.address.street, s.address.city, s.address.country, s.address.postcode
FROM sponsors s;

-- Get nested table
SELECT l.location_id, l.location_name, ft.facility_name, ft.facility_description
FROM locations l, TABLE(l.facilities) ft;

-- Get varray
SELECT s.sponsor_id, s.sponsor_name, sm.social_media_name, sm.contact, sm.social_media_description
FROM sponsors s, TABLE(s.social_media)sm;

-- Show experiences and their nature, location, address, and facilities - NESTED TABLE QUERY NOT WORKING
SELECT e.experience_name, en.experience_nature_name, en.experience_nature_description, l.location_name, l.address.street, l.address.city, l.address.country
FROM experiences e
FULL OUTER JOIN  experience_natures en
ON e.experience_nature_id = en.experience_nature_id
FULL OUTER JOIN locations l
ON e.location_id = l.location_id;
/*  WHERE l.facilities.facility_name IN (
    SELECT ft.facility_name, ft.facility_description
    FROM TABLE(l.facilities) ft
    WHERE ft.facility_name = 'FREE PARKING'); */ 


-- Show tickets and their experience, sponsors, sponsor addresses, and sponsor social media - VARRAY QUERY NOT WORKING
SELECT t.ticket_id, t.customer_firstname, t.customer_surname, t.ticket_price, t.start_date, t.expiration_date, t.description, e.experience_name, s.sponsor_name, s.address.street, s.address.city, s.address.country
FROM tickets t
FULL OUTER JOIN experiences e
ON t.experience_id = e.experience_id
FULL OUTER JOIN sponsors s
ON t.sponsor_id = s.sponsor_id; 
/*  WHERE s.social_media.social_media_name IN (
    SELECT sm.social_media_name, sm.contact, sm.social_media_description
    FROM TABLE(s.social_media)sm 
    WHERE sm.social_media_name = "INSTAGRAM"); */