/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- DROP --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\drop_12.sql *****

-- FUNCTIONS
DROP FUNCTION func_param_location_ct;
DROP FUNCTION func_location_ct;
DROP FUNCTION func_get_time_left;
DROP FUNCTION func_ticket_sum;
DROP FUNCTION func_ticket_ct;

-- PROCEDURES
DROP PROCEDURE pro_exp_cursor_del_address;
DROP PROCEDURE pro_imp_cursor_del_address;
DROP PROCEDURE proc_param_location_ct;
DROP PROCEDURE proc_location_ct;
DROP PROCEDURE proc_sponsor_ct;
DROP PROCEDURE proc_display_ticket_info;

-- TRIGGERS
DROP TRIGGER trig_time_left;
DROP TRIGGER trig_ticket_start;
DROP TRIGGER trig_ticket_expiry;

-- FOREIGN KEYS
ALTER TABLE tickets
DROP CONSTRAINT fk_t_sponsors;

ALTER TABLE tickets
DROP CONSTRAINT fk_t_experiences;

ALTER TABLE experiences
DROP CONSTRAINT fk_e_experience_natures;

ALTER TABLE experiences
DROP CONSTRAINT fk_e_locations;

-- PRIMARY KEYS
ALTER TABLE tickets
DROP CONSTRAINT pk_tickets;

ALTER TABLE experiences
DROP CONSTRAINT pk_experiences;

ALTER TABLE sponsors
DROP CONSTRAINT pk_sponsors;

ALTER TABLE locations
DROP CONSTRAINT pk_locations;

ALTER TABLE experience_natures
DROP CONSTRAINT pk_experience_natures;

-- UNIQUE CONSTRAINTS
ALTER TABLE experiences
DROP CONSTRAINT u_experience_name;

ALTER TABLE locations
DROP CONSTRAINT u_location_name;

-- CHECK CONSTRAINTS
ALTER TABLE tickets
DROP CONSTRAINT ck_customer_surname;

ALTER TABLE tickets
DROP CONSTRAINT ck_customer_firstname;

ALTER TABLE sponsors
DROP CONSTRAINT ck_sponsor_name;

ALTER TABLE locations
DROP CONSTRAINT ck_location_name;

ALTER TABLE experience_natures
DROP CONSTRAINT ck_experience_nature_name;

-- SEQUENCES
DROP SEQUENCE seq_tickets;
DROP SEQUENCE seq_experiences;
DROP SEQUENCE seq_sponsors;
DROP SEQUENCE seq_locations;
DROP SEQUENCE seq_experience_natures;

-- TABLES
DROP TABLE tickets;
DROP TABLE experiences;
DROP TABLE sponsors;
DROP TABLE locations;
DROP TABLE experience_natures;
DROP TABLE addresses;

-- OBJECTS + TYPES
DROP TYPE description_varray_type;
DROP TYPE social_media_table_type;
DROP TYPE social_media_varray_type;
DROP TYPE social_media_type;
DROP TYPE facility_table_type;
DROP TYPE facility_type;
DROP TYPE address_type;

PURGE RECYCLEBIN;

-- Check deletes have been successful
SELECT * FROM user_constraints;
SELECT * FROM user_types;
SELECT * FROM user_sequences;
SELECT * FROM tab;
SELECT * FROM user_objects;