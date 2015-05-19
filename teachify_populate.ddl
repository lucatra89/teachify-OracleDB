--USERS
INSERT INTO users (email , password , name , surname) 
	VALUES ( 'gigi@gmail.com' , 'gigi' , 'Gigi' , 'Latrottola');
INSERT INTO users  (email , password , name , surname) 
	VALUES ( 'giovanni@gmail.com' , 'giovanni' , 'Giovanni' , 'Armadillo');
INSERT INTO users (email , password , name , surname) 
	VALUES ( 'johnny@gmail.com' , 'johnny' , 'Johnny' , 'Rupert');


--GROUPS
INSERT INTO groups ( name ) 
	VALUES ( 'student');
INSERT INTO groups ( name ) 
	VALUES ( 'tutor');
INSERT INTO groups ( name ) 
	VALUES ( 'admin');

--USERS_GROUPS
INSERT INTO users_groups ( user_id , group_id ) 
	VALUES (1, 1);
INSERT INTO users_groups ( user_id , group_id ) 
	VALUES (2, 2);
INSERT INTO users_groups ( user_id , group_id ) 
	VALUES (3, 3);


--SUBJECTS
INSERT INTO subjects (name)
	VALUES ('Fisica');
INSERT INTO subjects (name)
	VALUES ('Matematica');
INSERT INTO subjects (name)
	VALUES ('Chimica');

--TYPESOFEDUCATION	
INSERT INTO types_of_education (name)
	VALUES ('Elementari');
INSERT INTO types_of_education (name)
	VALUES ('Medie');
INSERT INTO types_of_education (name)
	VALUES ('Superiori');

--PRICES
INSERT INTO prices (value)
	VALUES (10);
INSERT INTO prices (value)
	VALUES (15);
INSERT INTO prices (value)
	VALUES (20);
INSERT INTO prices (value)
	VALUES (25);

--TUTORS
INSERT INTO tutors (user_id , price_id ,description,location_name, tutor_geo_location) 
	VALUES (1, 1, 
  			'Sò il più meglio di tutti',
  			'via Santa Margherita, Atri,Teramo',
   			SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE (42.60692,13.94394,NULL), NULL, NULL));



INSERT INTO tutors (user_id , price_id ,description,location_name, tutor_geo_location) 
	VALUES(2, 2, 
  			'Sò il più meglio di tutti',
  			'via San Filippo, Atri,Teramo',
   			SDO_GEOMETRY(2001, 8307, 
     			SDO_POINT_TYPE (42.60074,13.93926, NULL), NULL, NULL));

INSERT INTO tutors (user_id , price_id ,description,location_name, tutor_geo_location) 
	VALUES (3, 3, 
	  'Sò il più meglio di tutti',
	  'via Leonardo Da Vinci , Roseto Degli Abruzzi , Teramo',
	   SDO_GEOMETRY(2001, 8307, 
	     SDO_POINT_TYPE (42.68277,14.00831,NULL), NULL, NULL));


UPDATE tutors 
	SET TUTOR_GEO_LOCATION = SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE (41.89334,12.48307,NULL), NULL, NULL)
	WHERE USER_ID=1;

