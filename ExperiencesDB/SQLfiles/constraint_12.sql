/*
CSY2038 Databases 2 - Assessment 2
03-MAY-2020
Group 12
Members: Dani, Michael, Rhys, Millie
*/

-- CONSTRAINT --

-- *****   CSY2038_166@student/18417959   *****
-- ***** @C:\Users\Millie\Desktop\Uni\Databases2\SQLfiles\constraint_12.sql *****

-- PRIMARY KEYS
ALTER TABLE experience_natures
ADD CONSTRAINT pk_experience_natures
PRIMARY KEY (experience_nature_id);

ALTER TABLE locations
ADD CONSTRAINT pk_locations
PRIMARY KEY (location_id);

ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY (sponsor_id);

ALTER TABLE experiences
ADD CONSTRAINT pk_experiences
PRIMARY KEY (experience_id);

ALTER TABLE tickets
ADD CONSTRAINT pk_tickets
PRIMARY KEY (ticket_id);

-- FOREIGN KEYS
ALTER TABLE experiences
ADD CONSTRAINT fk_e_locations
FOREIGN KEY (location_id)
REFERENCES locations(location_id);

ALTER TABLE experiences
ADD CONSTRAINT fk_e_experience_natures
FOREIGN KEY (experience_nature_id)
REFERENCES experience_natures(experience_nature_id);

ALTER TABLE tickets
ADD CONSTRAINT fk_t_experiences
FOREIGN KEY (experience_id)
REFERENCES experiences(experience_id);

ALTER TABLE tickets
ADD CONSTRAINT fk_t_sponsors
FOREIGN KEY (sponsor_id)
REFERENCES sponsors(sponsor_id);

-- UNIQUE KEYS
ALTER TABLE locations
ADD CONSTRAINT u_location_name
UNIQUE (location_name);

ALTER TABLE experiences
ADD CONSTRAINT u_experience_name
UNIQUE (experience_name);

-- CHECK CONSTRAINTS
ALTER TABLE experience_natures
ADD CONSTRAINT ck_experience_nature_name
CHECK (experience_nature_name = upper(experience_nature_name));

ALTER TABLE locations
ADD CONSTRAINT ck_location_name
CHECK (location_name = upper(location_name));

ALTER TABLE sponsors
ADD CONSTRAINT ck_sponsor_name
CHECK (sponsor_name = upper(sponsor_name));

ALTER TABLE tickets
ADD CONSTRAINT ck_customer_firstname
CHECK (customer_firstname = upper(customer_firstname));

ALTER TABLE tickets
ADD CONSTRAINT ck_customer_surname
CHECK (customer_surname = upper(customer_surname));

-- Display all constraints
SELECT constraint_name FROM user_constraints;