/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- CREATE --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\create_12.sql *****

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS'
SET SERVEROUTPUT ON

-- OBJECTS + TYPES
CREATE OR REPLACE TYPE address_type AS OBJECT (
street                          VARCHAR2(30),
city                            VARCHAR2(20),
country                         VARCHAR2(20),
postcode                        VARCHAR2(7) );
/
SHOW ERRORS

CREATE TABLE addresses OF address_type;

CREATE OR REPLACE TYPE facility_type AS OBJECT (
facility_name                   VARCHAR2(20),
facility_description            VARCHAR2(100) );
/
SHOW ERRORS

CREATE OR REPLACE TYPE facility_table_type AS TABLE OF facility_type;
/
SHOW ERRORS

CREATE OR REPLACE TYPE social_media_type AS OBJECT (
social_media_name               VARCHAR2(20),
contact                         VARCHAR2(50),
social_media_description        VARCHAR2(100) );
/
SHOW ERRORS

CREATE TYPE social_media_varray_type AS VARRAY(100) OF social_media_type;
/
SHOW ERRORS

CREATE TYPE description_varray_type AS VARRAY(3) OF VARCHAR2(20);
/
SHOW ERRORS

-- TABLES
CREATE TABLE experience_natures (
experience_nature_id            NUMBER(4),
experience_nature_name          VARCHAR2(50),
experience_nature_description   VARCHAR2(200) );

CREATE TABLE locations (
location_id                     NUMBER(4),
location_name                   VARCHAR2(50),
address                         address_type,
facilities                      facility_table_type )
NESTED TABLE facilities STORE AS facility_table;

CREATE TABLE sponsors (
sponsor_id                      NUMBER(4),
sponsor_name                    VARCHAR2(50),
address                         REF address_type SCOPE IS addresses,
social_media                    social_media_varray_type );
CREATE TYPE social_media_table_type AS TABLE OF social_media_type;
/

CREATE TABLE experiences (
experience_id                   NUMBER(4),
experience_name                 VARCHAR2(50),
location_id                     NUMBER(4) NOT NULL,
experience_nature_id            NUMBER(4) NOT NULL );

CREATE TABLE tickets (
ticket_id                       NUMBER(4),
customer_firstname              VARCHAR2(20),
customer_surname                VARCHAR2(20),
experience_id                   NUMBER(4) NOT NULL,
sponsor_id                      NUMBER(4) NOT NULL,
ticket_price                    NUMBER(6,2),
start_date                      DATE DEFAULT SYSDATE,
expiration_date                 DATE, 
description                     description_varray_type);

-- SEQUENCES
CREATE SEQUENCE seq_experience_natures
INCREMENT BY 1
START WITH 1001
NOMAXVALUE
NOCYCLE;

CREATE SEQUENCE seq_locations
INCREMENT BY 1
START WITH 2001
NOMAXVALUE 
NOCYCLE;

CREATE SEQUENCE seq_sponsors
INCREMENT BY 1
START WITH 3001
NOMAXVALUE 
NOCYCLE;

CREATE SEQUENCE seq_experiences
INCREMENT BY 1
START WITH 4001
NOMAXVALUE 
NOCYCLE;

CREATE SEQUENCE seq_tickets
INCREMENT BY 1
START WITH 5001
NOMAXVALUE 
NOCYCLE;

-- Display all types
SELECT type_name FROM user_types;
-- Display all objects
SELECT object_name, object_type FROM user_objects;
-- Display all tables
SELECT TNAME FROM tab;
-- Display all sequences
SELECT sequence_name FROM user_sequences;