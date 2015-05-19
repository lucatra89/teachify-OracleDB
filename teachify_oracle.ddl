CREATE SEQUENCE users_seq;
CREATE SEQUENCE groups_seq;
CREATE SEQUENCE tutors_seq;
CREATE SEQUENCE subjects_seq;
CREATE SEQUENCE types_of_education_seq;
CREATE SEQUENCE days_seq;
CREATE SEQUENCE hours_seq;
CREATE SEQUENCE lessons_seq;
CREATE SEQUENCE requests_seq;
CREATE SEQUENCE feedback_seq;
CREATE SEQUENCE availabilities_seq;
CREATE SEQUENCE prices_seq;


CREATE TABLE users (
	user_id NUMBER (10) DEFAULT users_seq.NEXTVAL,
	email VARCHAR2 ( 50 ) NOT NULL,
	password VARCHAR2 ( 50 ) NOT NULL,
	name VARCHAR2 ( 50 ) NOT NULL,
	surname VARCHAR2 ( 50 ) NOT NULL,

	CONSTRAINT pk_user PRIMARY KEY (user_id),
	CONSTRAINT u_user UNIQUE (email)

);

CREATE TABLE groups (
	group_id NUMBER (10) DEFAULT groups_seq.NEXTVAL,
	name VARCHAR2 (50),

	CONSTRAINT pk_group PRIMARY KEY (group_id)
);



CREATE TABLE users_groups (
	user_id NUMBER(10) NOT NULL,
	group_id NUMBER(10) NOT NULL,

	CONSTRAINT fk_user_groups1 FOREIGN KEY (user_id) REFERENCES users (user_id),
	CONSTRAINT fk_user_groups2 FOREIGN KEY (group_id) REFERENCES groups (group_id)
);



CREATE TABLE prices (
	price_id NUMBER (10) DEFAULT prices_seq.NEXTVAL,
	value NUMBER(6),

	CONSTRAINT pk_prices PRIMARY KEY (price_id)
);


CREATE TABLE tutors (
	tutor_id NUMBER (10) DEFAULT tutors_seq.NEXTVAL,
	user_id NUMBER(10) NOT NULL,
	price_id NUMBER(10),
	description VARCHAR2 (300),
	location_name VARCHAR2 ( 200 ),
	tutor_geo_location SDO_GEOMETRY,
	rating NUMBER(10),

	CONSTRAINT pk_tutor PRIMARY KEY (tutor_id),
	CONSTRAINT u_tutor1 UNIQUE (user_id),
	CONSTRAINT fk_tutor1 FOREIGN KEY (user_id) REFERENCES users (user_id),
	CONSTRAINT fk_tutor2 FOREIGN KEY (price_id) REFERENCES prices (price_id)
);

CREATE TABLE subjects (
	subject_id NUMBER (10) DEFAULT subjects_seq.NEXTVAL,
	name VARCHAR2 ( 50 ) NOT NULL,

	CONSTRAINT pk_subject PRIMARY KEY (subject_id)
);

CREATE TABLE types_of_education (
	type_of_education_id NUMBER (10) DEFAULT types_of_education_seq.NEXTVAL,
	name VARCHAR2 ( 50 ) NOT NULL,

	CONSTRAINT pk_type_of_education PRIMARY KEY (type_of_education_id)
);

CREATE TABLE days (
	day_id NUMBER (10) DEFAULT days_seq.NEXTVAL,
	name VARCHAR2 ( 50 ) NOT NULL,

	CONSTRAINT pk_day PRIMARY KEY (day_id)
);

CREATE TABLE hours (
	hour_id NUMBER (10) DEFAULT hours_seq.NEXTVAL,
	value NUMBER(6) NOT NULL,

	CONSTRAINT pk_hour PRIMARY KEY (hour_id)
);


CREATE TABLE lessons (
	lesson_id NUMBER (10) DEFAULT lessons_seq.NEXTVAL,
	tutor_id NUMBER(10) NOT NULL,
	subject_id NUMBER(10) NOT NULL,
	type_of_education_id NUMBER(10) NOT NULL,


	CONSTRAINT pk_lesson PRIMARY KEY (lesson_id),
	CONSTRAINT fk_lesson1 FOREIGN KEY (tutor_id) REFERENCES tutors (tutor_id),
	CONSTRAINT fk_lesson2 FOREIGN KEY (subject_id) REFERENCES subjects (subject_id),
	CONSTRAINT fk_lesson3 FOREIGN KEY (type_of_education_id) REFERENCES types_of_education (type_of_education_id)
);


CREATE TABLE requests(
	request_id NUMBER (10) DEFAULT requests_seq.NEXTVAL,
	lesson_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	description VARCHAR2(300),
	req_ava_start DATE,
	req_ava_end DATE,
	accepted CHAR,
	response VARCHAR2(300),
	created_at DATE DEFAULT SYSDATE,

	CONSTRAINT pk_request PRIMARY KEY (request_id),
	CONSTRAINT fk_request1 FOREIGN KEY (lesson_id) REFERENCES lessons (lesson_id),
	CONSTRAINT fk_request2 FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE feedback(
	feedback_id NUMBER (10) DEFAULT feedback_seq.NEXTVAL,
	tutor_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	vote NUMBER (1),
	description VARCHAR2(300),
	created_at DATE DEFAULT SYSDATE,

	CONSTRAINT pk_feedback PRIMARY KEY (feedback_id),
	CONSTRAINT fk_feedback1 FOREIGN KEY (tutor_id) REFERENCES tutors (tutor_id),
	CONSTRAINT fk_feedback2 FOREIGN KEY (user_id) REFERENCES users (user_id)
);



CREATE TABLE availabilities(

	availability_id NUMBER (10) DEFAULT availabilities_seq.NEXTVAL,
	day_id NUMBER (10) NOT NULL,
	start_hour_id NUMBER (10) NOT NULL,
	end_hour_id NUMBER (10) NOT NULL,
	tutor_id NUMBER (10) NOT NULL,

	CONSTRAINT pk_availability PRIMARY KEY (availability_id),
	CONSTRAINT fk_availability1 FOREIGN KEY (day_id) REFERENCES days (day_id),
	CONSTRAINT fk_availability2 FOREIGN KEY (start_hour_id) REFERENCES hours (hour_id),
	CONSTRAINT fk_availability3 FOREIGN KEY (end_hour_id) REFERENCES hours (hour_id),
	CONSTRAINT fk_availability4 FOREIGN KEY (tutor_id) REFERENCES tutors (tutor_id)

);


-- Spatial Queries
INSERT INTO user_sdo_geom_metadata (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID) 
   VALUES ('tutors', 'tutor_geo_location', 
   SDO_DIM_ARRAY 
     (SDO_DIM_ELEMENT('LONG', -180.0, 180.0, 0.5), 
     SDO_DIM_ELEMENT('LAT', -90.0, 90.0, 0.5)), 
   8307);

CREATE INDEX tutors_sidx ON tutors(tutor_geo_location)
  INDEXTYPE IS mdsys.spatial_index;



