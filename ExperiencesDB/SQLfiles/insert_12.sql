/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- INSERT --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\insert_12.sql *****

-- Addresses
INSERT INTO addresses (street, city, country, postcode)
VALUES ('445 HIGH STREET', 'LONDON', 'UNITED KINGDOM', 'E19DL');
INSERT INTO addresses (street, city, country, postcode)
VALUES ('99 LONDON ROAD', 'EDINBURGH', 'UNITED KINGDOM', 'EH75SC');
INSERT INTO addresses (street, city, country, postcode)
VALUES ('603 CLARK DRIVE', 'VANCOUVER', 'CANADA', 'V5J1A1');
INSERT INTO addresses (street, city, country, postcode)
VALUES ('9 ADELAIDE STREET', 'TORONTO', 'CANADA', 'M4B1B5');
INSERT INTO addresses (street, city, country, postcode)
VALUES ('87 MITTELSTRASSE', 'BERLIN', 'GERMANY', '10439');
INSERT INTO addresses (street, city, country, postcode)
VALUES ('8 BANK STREET', 'BRISBANE', 'AUSTRALIA', '4054');
INSERT INTO addresses (street, city, country, postcode)
VALUES ('19 BRISBANE TERRACE', 'PERTH', 'AUSTRALIA', '6018');

-- Experience Nature
INSERT INTO experience_natures VALUES (seq_experience_natures.NEXTVAL, 'FOOD AND DRINK', 'THIS EXPERIENCE IS FOR PEOPLE WHO ARE PASSIONATE ABOUT FOOD and DRINK');
INSERT INTO experience_natures VALUES (seq_experience_natures.NEXTVAL, 'ACTION PACKED', 'THIS EXPERIENCE IS FOR THOSE SEEKING AN ADRENALINE RUSH AND ARE NOT FAINT-HEARTED!');
INSERT INTO experience_natures VALUES (seq_experience_natures.NEXTVAL, 'SPORTS', 'THIS EXPERIENCE IS FOR PEOPLE WHO WANT AN ACTIVE DAY');
INSERT INTO experience_natures VALUES (seq_experience_natures.NEXTVAL, 'SHORT BREAKS', 'THIS EXPERIENCE IS FOR PEOPLE WHO WANT A NIGHT AWAY IN SOMEWHERE SPECIAL');
INSERT INTO experience_natures VALUES (seq_experience_natures.NEXTVAL, 'ARTS AND CRAFT', 'THIS EXPERIENCE IS FOR PEOPLE WHO WANT TO LEARN A NEW CRAFT OF TRY SOMETHING NEW');

-- Locations
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'MOUNTAIN KITCHEN', address_type('603 CLARK DRIVE', 'VANCOUVER', 'CANADA', 'V5J1A1'), facility_table_type(
    facility_type('RESTAURANT', 'THIS LOCATION IS A RESTAURANT FOR FOOD-BASED EXPERIENCES'),
    facility_type('WHEELCHAIR ACCESS', 'THIS LOCATION HAS WHEELCHAIR ACCESS'),
    facility_type('FREE PARKING', 'THIS LOCATION HAS FREE PARKING AVAILIBLE')));
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'HOFBRAU MUNCHEN', address_type('1 HOFBRAUALLEE', 'MUNCHEN', 'GERMANY', '81829'), facility_table_type(
    facility_type('BREWERY', 'THIS LOCATION IS A BREWERY FOR DRINK-BASED EXPERIENCES'),
    facility_type('WHEELCHAIR ACCESS', 'THIS LOCATION HAS WHEELCHAIR ACCESS')));
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'COVENTRY AIRFIELD', address_type('1 AIRPORT ROAD', 'COVENTRY', 'UNITED KINGDOM', 'CV36GH'), facility_table_type(
    facility_type('AIRFIELD', 'THIS LOCATION HAS AN AIRFIELD FOR AIRCRAFT-BASED EXPERIENCES'),
    facility_type('WHEELCHAIR ACCESS', 'THIS LOCATION HAS WHEELCHAIR ACCESS'),
    facility_type('VIEWING AREA', 'THIS LOCATION HAS A VIEWING AREA FOR GUESTS TO WAIT/WATCH THE EXPERIENCE'),
    facility_type('HOT FOOD AND DRINKS', 'THIS LOCATION HAS FRESH, HOT FOOD AND DRINK FACILITIES'),
    facility_type('PAID PARKING', 'THIS LOCATION HAS PAID PARKING AVAILIBLE')));
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'TELIA PARKEN', address_type('2 PER HENRIK LINGS ALLE', 'COPENHAGEN', 'DENMARK', '2100'), facility_table_type(
    facility_type('SPORTS FIELD', 'THIS LOCATION IS A FOORTBALL GROUND FOR SPORT-BASED EXPERIENCES'),
    facility_type('WHEELCHAIR ACCESS', 'THIS LOCATION HAS WHEELCHAIR ACCESS'),
    facility_type('HOT DRINKS', 'THIS LOCATION HAS HOT DRINK FACILITIES'),
    facility_type('PAID PARKING', 'THIS LOCATION HAS PAID PARKING AVAILIBLE'),
    facility_type('VIEWING AREA', 'THIS LOCATION HAS A VIEWING AREA FOR GUESTS TO WAIT/WATCH THE EXPERIENCE')));
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'SANTA POD RACEWAY', address_type('AIRFIELD ROAD', 'WELLINGBOROUGH', 'UNITED KINGDOM', 'NN297XA'), facility_table_type(
    facility_type('RACE TRACK', 'THIS LOCATION HAS A RACETRACK FOR AUTOMOTIVE-BASED EXPERIENCES'),
    facility_type('VIEWING AREA', 'THIS LOCATION HAS A VIEWING AREA FOR GUESTS TO WAIT/WATCH THE EXPERIENCE'),
    facility_type('HOT DRINKS', 'THIS LOCATION HAS HOT DRINK FACILITIES'),
    facility_type('FREE PARKING', 'THIS LOCATION HAS FREE PARKING AVAILIBLE')));
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'WARWICK CASTLE', address_type('WARWICK CASTLE', 'WARWICK', 'UNITED KINGDOM', 'CV346AH'), facility_table_type(
    facility_type('CASTLE', 'THIS LOCATION IS A CASTLE FOR SHORT BREAKS'),
    facility_type('HOT FOOD AND DRINKS', 'THIS LOCATION HAS FRESH, HOT FOOD AND DRINK FACILITIES'),
    facility_type('PAID PARKING', 'THIS LOCATION HAS PAID PARKING AVAILIBLE'),
    facility_type('WHEELCHAIR ACCESS', 'THIS LOCATION HAS WHEELCHAIR ACCESS')));
INSERT INTO locations (location_id, location_name, address, facilities)
VALUES(seq_locations.NEXTVAL, 'FRANKFURT CENTER', address_type('45 SAALGASSE', 'FRANKFURT', 'GERMANY', '60431'), facility_table_type(
    facility_type('HALL', 'THIS LOCATION IS A HALL FOR CRAFT-BASED EXPERIENCES'),
    facility_type('FREE PARKING', 'THIS LOCATION HAS FREE PARKING AVAILIBLE'),
    facility_type('HOT DRINKS', 'THIS LOCATION HAS HOT DRINK FACILITIES'),
    facility_type('WHEELCHAIR ACCESS', 'THIS LOCATION HAS WHEELCHAIR ACCESS')));

-- Experiences
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, '10 COURSE TASTING MENU', 2001, 1001);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'BREWERY TOUR', 2002, 1001);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'BEER TASTING', 2002, 1001);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'GLIDER FLIGHT', 2003, 1002);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'AEROPLANE FLIGHT LESSON', 2003, 1002);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'FOOTBALL GROUND TOUR', 2004, 1003);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'DRIFT DAY', 2005, 1002);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'SUPERCAR EXPERIENCE', 2005, 1002);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'NIGHT IN A CASTLE', 2006, 1004);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'CASTLE GLAMPING', 2006, 1004);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'PAINTING CLASS', 2007, 1005);
INSERT INTO experiences VALUES (seq_experiences.NEXTVAL, 'WOODWORKING CLASS', 2007, 1005);

-- Sponsors
INSERT INTO sponsors(sponsor_id, sponsor_name, social_media)
VALUES (seq_sponsors.NEXTVAL, 'PUMA', social_media_varray_type(
social_media_type('FACEBOOK', 'WWW.FACEBOOK.COM/PUMA', 'PUMA FACEBOOK PAGE'),
social_media_type('WEBSITE', 'WWW.PUMA.COM', 'PUMA WEBSITE'),
social_media_type('INSTAGRAM', 'WWW.INSTAGRAM.COM/PUMA', 'PUMA INSTAGRAM PAGE')));
    
UPDATE sponsors s 
SET s.address = (
    SELECT ref(a) 
    FROM addresses a
    WHERE a.street='445 HIGH STREET')
WHERE s.sponsor_id = 3001;

INSERT INTO sponsors(sponsor_id, sponsor_name, social_media)
VALUES (seq_sponsors.NEXTVAL, 'MAZDA', social_media_varray_type(
social_media_type('FACEBOOK', 'WWW.FACEBOOK.COM/MAZDA', 'MAZDA FACEBOOK PAGE'),
social_media_type('WEBSITE', 'WWW.MAZDA.COM', 'MAZDA WEBSITE'),
social_media_type('INSTAGRAM', 'WWW.INSTAGRAM.COM/MAZDA', 'MAZDA INSTAGRAM PAGE'),
social_media_type('YOUTUBE', 'WWW.YOUTUBE.COM/MAZDA', 'MAZDA YOUTUBE PAGE')));

UPDATE sponsors s 
SET s.address = (
    SELECT ref(a) 
    FROM addresses a
    WHERE a.street = '99 LONDON ROAD')
WHERE s.sponsor_id = 3002;


INSERT INTO sponsors(sponsor_id, sponsor_name, social_media)
VALUES (seq_sponsors.NEXTVAL, 'RED BULL', social_media_varray_type(
social_media_type('FACEBOOK', 'WWW.FACEBOOK.COM/REDBULL', 'RED BULL FACEBOOK PAGE'),
social_media_type('WEBSITE', 'WWW.REDBULL.COM', 'RED BULL WEBSITE'),
social_media_type('INSTAGRAM', 'WWW.INSTAGRAM.COM/REDBULL', 'RED BULL INSTAGRAM PAGE'),
social_media_type('YOUTUBE', 'WWW.YOUTUBE.COM/REDBULL', 'RED BULL YOUTUBE PAGE')));

UPDATE sponsors s
SET s.address = (
    SELECT ref(a) 
    FROM addresses a
    WHERE a.street = '603 CLARK DRIVE')
WHERE s.sponsor_id = 3003;

INSERT INTO sponsors(sponsor_id, sponsor_name, social_media)
VALUES (seq_sponsors.NEXTVAL, 'NIKE', social_media_varray_type(
social_media_type('FACEBOOK', 'WWW.FACEBOOK.COM/NIKE', 'NIKE FACEBOOK PAGE'),
social_media_type('WEBSITE', 'WWW.NIKE.COM', 'NIKE WEBSITE'),
social_media_type('INSTAGRAM', 'WWW.INSTAGRAM.COM/NIKE', 'NIKE INSTAGRAM PAGE')));

UPDATE sponsors s
SET s.address = (
    SELECT ref(a) 
    FROM addresses a
    WHERE a.street = '9 ADELAIDE STREET')
WHERE s.sponsor_id = 3004;

INSERT INTO sponsors(sponsor_id, sponsor_name, social_media)
VALUES (seq_sponsors.NEXTVAL, 'GO PRO', social_media_varray_type(
social_media_type('FACEBOOK', 'WWW.FACEBOOK.COM/GOPRO', 'GO PRO FACEBOOK PAGE'),
social_media_type('WEBSITE', 'WWW.GOPRO.COM', 'GO PRO WEBSITE'),
social_media_type('INSTAGRAM', 'WWW.INSTAGRAM.COM/GOPRO', 'GO PRO INSTAGRAM PAGE'),
social_media_type('YOUTUBE', 'WWW.YOUTUBE.COM/GOPRO', 'GO PRO YOUTUBE PAGE')));

UPDATE sponsors s
SET s.address = (
    SELECT ref(a) 
    FROM addresses a
    WHERE a.street = '87 MITTELSTRASSE')
WHERE s.sponsor_id = 3005;

INSERT INTO sponsors(sponsor_id, sponsor_name, social_media)
VALUES (seq_sponsors.NEXTVAL, 'CANON', social_media_varray_type(
social_media_type('WEBSITE', 'WWW.CANON.COM', 'CANON WEBSITE'),
social_media_type('INSTAGRAM', 'WWW.INSTAGRAM.COM/CANON', 'CANON INSTAGRAM PAGE'),
social_media_type('YOUTUBE', 'WWW.YOUTUBE.COM/CANON', 'CANON YOUTUBE PAGE')));

UPDATE sponsors s
SET s.address = (
    SELECT ref(a) 
    FROM addresses a
    WHERE a.street = '8 BANK STREET')
WHERE s.sponsor_id = 3006;

INSERT INTO sponsors(sponsor_id, sponsor_name, social_media)
VALUES (seq_sponsors.NEXTVAL, 'TOYO TYRES', social_media_varray_type(
social_media_type('FACEBOOK', 'WWW.FACEBOOK.COM/TOYOTYRES', 'TOYO TYRES FACEBOOK PAGE'),
social_media_type('WEBSITE', 'WWW.TOYOTYRES.COM', 'TOYO TYRES WEBSITE'),
social_media_type('INSTAGRAM', 'WWW.INSTAGRAM.COM/TOYOTYRES', 'TOYO TYRES INSTAGRAM PAGE'),
social_media_type('YOUTUBE', 'WWW.YOUTUBE.COM/TOYOTYRES', 'TOYO TYRES YOUTUBE PAGE')));

-- Tickets
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'RACHEL', 'HOWARD', 4001, 3003, 90.00, sysdate, description_varray_type('FAMILY', 'BRONZE', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'AARON', 'WILSON', 4001, 3006, 75.00, sysdate, description_varray_type('SINGLE', 'PLATINUM', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'NICOLE', 'LOPEZ', 4001, 3005, 105.00, sysdate, description_varray_type('FAMILY', 'GOLD', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'PATRICIA', 'DAVIS', 4001, 3006, 80.00, sysdate, description_varray_type('DOUBLE', 'BRONZE', 'PAYPAL'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'JEFFREY', 'ALEXANDER', 4002, 3006, 60.00, sysdate, description_varray_type('FAMILY', 'SILVER', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MATTHEW', 'MARTIN', 4002, 3003, 85.00, sysdate, description_varray_type('GROUP', 'GOLD', 'PAYPAL'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'TAMMY', 'COLLINS', 4003, 3006, 55.00, sysdate, description_varray_type('SINGLE', 'GOLD', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'JULIE', 'BUTLER', 4003, 3005, 40.00, sysdate, description_varray_type('SINGLE', 'BRONZE', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'RAYMOND', 'FOSTER', 4003, 3006, 35.00, sysdate, description_varray_type('GROUP', 'SILVER', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'RALPH', 'WRIGHT', 4003, 3006, 60.00, sysdate, description_varray_type('DOUBLE', 'PLATINUM', 'PAYPAL'));   
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'PAULA', 'BARKER', 4003, 3005, 45.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'PAYPAL'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'JOE', 'GONZALEZ', 4004, 3005, 350.00, sysdate, description_varray_type('SINGLE', 'SILVER', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'JONATHAN', 'RUSSELL', 4004, 3004, 385.00, sysdate, description_varray_type('FAMILY', 'BRONZE', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'PHILLIP', 'GREEN', 4004, 3006, 365.00, sysdate, description_varray_type('SINGLE', 'GOLD', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'CHRISTINA', 'PEREZ', 4004, 3005, 390.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'PAYPAL'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'CHRISTINE', 'COLEMAN', 4005, 3005, 450.00, sysdate, description_varray_type('GROUP', 'SILVER', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'IRENE', 'GONZALEZ', 4005, 3003, 465.00, sysdate, description_varray_type('SINGLE', 'GOLD', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'CYNTHIA', 'WRIGHT', 4005, 3006, 425.00, sysdate, description_varray_type('FAMILY', 'PLATINUM', 'PAYPAL'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'RUBY', 'PRICE', 4006, 3001, 90.00, sysdate, description_varray_type('DOUBLE', 'BRONZE', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'SANDRA', 'PETERSON', 4006, 3004, 120.00, sysdate, description_varray_type('SINGLE', 'GOLD', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'JESSICA', 'ANDERSON', 4006, 3004, 105.00, sysdate, description_varray_type('GROUP', 'SILVER', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'JIMMY', 'MILLER', 4006, 3001, 100.00, sysdate, description_varray_type('DOUBLE', 'BRONZE', 'CREDIT/DEBIT CARD'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'CHERYL', 'HUGHES', 4007, 3007, 45.00, sysdate, description_varray_type('SINGLE', 'BRONZE', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'HEATHER', 'LEWIS', 4007, 3002, 60.00, sysdate, description_varray_type('FAMILY', 'SILVER', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'KATHRYN', 'MILLER', 4007, 3002, 55.00, sysdate, description_varray_type('FAMILY', 'GOLD', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'RYAN', 'COX', 4007, 3007, 50.00, sysdate, description_varray_type('DOUBLE', 'BRONZE', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'TODD', 'PETERSON', 4007, 3002, 70.00, sysdate, description_varray_type('SINGLE', 'PLATINUM', 'CREDIT/DEBIT CARD'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'PETER', 'SANCHEZ', 4008, 3003, 145.00, sysdate, description_varray_type('FAMILY', 'SILVER', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'ADAM', 'JAMES', 4008, 3005, 175.00, sysdate, description_varray_type('GROUP', 'SILVER', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'NANCY', 'BELL', 4008, 3005, 160.00, sysdate, description_varray_type('SINGLE', 'PLATINUM', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'WALTER', 'THOMAS', 4008, 3007, 150.00, sysdate, description_varray_type('FAMILY', 'BRONZE', 'CASH ON DAY'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'RAYMOND', 'CARTER', 4009, 3006, 100.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'STEPHANIE', 'BUTLER', 4009, 3004, 120.00, sysdate, description_varray_type('SINGLE', 'BRONZE', 'CREDIT/DEBIT CARD'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'LAWRENCE', 'RICHARDSON', 4010, 3005, 160.00, sysdate, description_varray_type('FAMILY', 'SILVER', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'PHILLIP', 'LOPEZ', 4010, 3006, 145.00, sysdate, description_varray_type('SINGLE', 'BRONZE', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'NANCY', 'BAILEY', 4010, 3006, 150.00, sysdate, description_varray_type('GROUP', 'GOLD', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'JUDITH', 'COLEMAN', 4010, 3006, 135.00, sysdate, description_varray_type('DOUBLE', 'GOLD', 'CREDIT/DEBIT CARD'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'JULIA', 'LONG', 4011, 3006, 40.00, sysdate, description_varray_type('FAMILY', 'BRONZE', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'WANDA', 'BROOKS', 4011, 3001, 35.00, sysdate, description_varray_type('SINGLE', 'SILVER', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'ANDREA', 'REED', 4011, 3001, 50.00, sysdate, description_varray_type('SINGLE', 'GOLD', 'CREDIT/DEBIT CARD'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MARIA', 'COOPER', 4011, 3006, 45.00, sysdate, description_varray_type('DOUBLE', 'BRONZE', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'ANN', 'CLARK', 4011, 3001, 60.00, sysdate, description_varray_type('FAMILY', 'SILVER', 'CREDIT/DEBIT CARD'));

INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'ALICE', 'GRIFFIN', 4012, 3001, 65.00, sysdate, description_varray_type('SINGLE', 'GOLD', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'DANIEL', 'CARTER', 4012, 3001, 75.00, sysdate, description_varray_type('FAMILY', 'PLATINUM', 'CASH ON DAY'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'MARGARET', 'GRIFFIN', 4012, 3006, 70.00, sysdate, description_varray_type('GROUP', 'PLATINUM', 'PAYPAL'));
INSERT INTO tickets (ticket_id, customer_firstname, customer_surname, experience_id, sponsor_id, ticket_price, start_date, description)
VALUES (seq_tickets.NEXTVAL, 'TERRY', 'MORRIS', 4012, 3006,  85.00, sysdate, description_varray_type('DOUBLE', 'BRONZE', 'CREDIT/DEBIT CARD'));