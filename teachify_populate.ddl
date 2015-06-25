INSERT INTO groups ( name ) 
	VALUES ( 'admin');
INSERT INTO groups ( name ) 
	VALUES ( 'tutor');


INSERT INTO subjects (name)
	VALUES ('Fisica');
INSERT INTO subjects (name)
	VALUES ('Matematica');
INSERT INTO subjects (name)
	VALUES ('Chimica');

INSERT INTO types_of_education (name)
	VALUES ('Elementari');
INSERT INTO types_of_education (name)
	VALUES ('Medie');
INSERT INTO types_of_education (name)
	VALUES ('Superiori');
INSERT INTO types_of_education (name)
	VALUES ('Università');

INSERT INTO prices (value)
	VALUES (10);
INSERT INTO prices (value)
	VALUES (15);
INSERT INTO prices (value)
	VALUES (20);
INSERT INTO prices (value)
	VALUES (25);


INSERT INTO hours (value)
	VALUES (8);
INSERT INTO hours (value)
	VALUES (9);
INSERT INTO hours (value)
	VALUES (10);
INSERT INTO hours (value)
	VALUES (11);
INSERT INTO hours (value)
	VALUES (12);
INSERT INTO hours (value)
	VALUES (13);
INSERT INTO hours (value)
	VALUES (14);
INSERT INTO hours (value)
	VALUES (15);
INSERT INTO hours (value)
	VALUES (16);
INSERT INTO hours (value)
	VALUES (17);


INSERT INTO users (email , password , name , surname, u_type) 
	VALUES ( 'gigi@gmail.com' , 'gigi' , 'Gigi' , 'Latrottola', 'U');

INSERT INTO users_groups ( user_id , group_id ) 
	VALUES (1, 1);


INSERT INTO users (email , password , name , surname, u_type) 
	VALUES ( 'giovanni@gmail.com' , 'giovanni' , 'Giovanni' , 'Ambrosi', 'U');
INSERT INTO users (email , password , name , surname, u_type) 
	VALUES ( 'johnny@gmail.com' , 'johnny' , 'Johnny' , 'Del Toro', 'U');
INSERT INTO users (email , password , name , surname, u_type) 
	VALUES ( 'pino@gmail.com' , 'pino' , 'Pino' , 'Fabrizi', 'U');
INSERT INTO users (email , password , name , surname, u_type) 
	VALUES ( 'gemma@gmail.com' , 'gemma' , 'Gemma' , 'Rinaldi', 'U');



INSERT INTO users (email , password , name , surname, u_type, price_id , description,location_name, tutor_geo_location, latitude , longitude , rating) 
	VALUES ('pablo@gmail.com' , 'pablo' , 'Pablo' , 'Mazzocchetti', 'T', 1, 
	  'Cerco di trasmettere tutta la passione che ho agli studenti',
	  'Roseto Degli Abruzzi , Teramo',
	   SDO_GEOMETRY(2001, 8307, 
   		 SDO_POINT_TYPE (42.67519, 14.01601, NULL), NULL, NULL), 42.67519, 14.01601, 5.0);

INSERT INTO users_groups ( user_id , group_id ) 
	VALUES (6, 2);


INSERT INTO users (email , password , name , surname, u_type, price_id , description,location_name, tutor_geo_location, latitude , longitude , rating) 
	VALUES ('fabio@gmail.com' , 'fabio' , 'Fabio' , 'Di Nicola', 'T', 1, 
	  'Cerco di trasmettere tutta la passione che ho agli studenti',
	  'Giulianova , Teramo',
	   SDO_GEOMETRY(2001, 8307, 
   		 SDO_POINT_TYPE (42.75381,13.96650,NULL), NULL, NULL), 42.75381, 13.96650, 5.0);

INSERT INTO users_groups ( user_id , group_id ) 
	VALUES (7, 2);

INSERT INTO users (email , password , name , surname, u_type, price_id , description,location_name, tutor_geo_location, latitude , longitude , rating) 
	VALUES ('antonia@gmail.com' , 'antonia' , 'Antonia' , 'Leonzi', 'T', 1, 
	  'Cerco di trasmettere tutta la passione che ho agli studenti',
	  'Teramo',
	   SDO_GEOMETRY(2001, 8307, 
   		 SDO_POINT_TYPE (42.66114,13.698664,NULL), NULL, NULL), 42.66114, 13.698664, 5.0);

INSERT INTO users_groups ( user_id , group_id ) 
	VALUES (8, 2);

INSERT INTO users (email , password , name , surname, u_type, price_id , description,location_name, tutor_geo_location, latitude , longitude, rating) 
	VALUES ('gino@gmail.com' , 'gino' , 'Gino' , 'Troisi', 'T', 3, 
	  'Insegno da molto tempo',
	  'Pescara',
	   SDO_GEOMETRY(2001, 8307, 
	     SDO_POINT_TYPE (42.46179,14.21609,NULL), NULL, NULL), 42.46179, 14.21609, 5.0);

INSERT INTO users_groups ( user_id , group_id ) 
	VALUES (9, 2);




INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (1, 1, 6);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (1, 2, 6);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (2, 2, 6);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (2, 3, 6);

INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (1, 1, 7);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (1, 2, 7);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (2, 2, 7);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (2, 3, 7);

INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (3, 3, 8);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (3, 2, 8);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (2, 2, 8);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (2, 3, 8);

INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (1, 1, 9);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (1, 2, 9);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (2, 2, 9);
INSERT INTO lessons (subject_id , type_of_education_id , tutor_id)
	VALUES (2, 3, 9);


INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Monday' , 1 ,3, 6);
INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Monday' , 4 ,5, 6);


INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Thursday' , 1 ,5, 6);
INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Saturday' , 3 ,5, 6);


INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Monday' , 1 ,3, 7);
INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Monday' , 4 ,5, 7);


INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Friday' , 1 ,5, 7);
INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Tuesday' , 3 ,5, 7);

INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Monday' , 1 ,3, 8);
INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Monday' , 4 ,5, 8);


INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Thursday' , 1 ,5, 8);
INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Saturday' , 3 ,5, 8);


INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Monday' , 1 ,3, 9);
INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Monday' , 4 ,5, 9);


INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Friday' , 1 ,5, 9);
INSERT INTO availabilities (day , from_hour_id , to_hour_id, tutor_id)
	VALUES('Tuesday' , 3 ,5, 9);


INSERT INTO requests (user_id , tutor_id , description )
	VALUES (2, 6 , 'Mi piacerebbe farmi insegnare da te');
INSERT INTO requests (user_id , tutor_id , description )
	VALUES (3, 7 , 'Mi piacerebbe farmi insegnare da te');
INSERT INTO requests (user_id , tutor_id , description )
	VALUES (4, 8 , 'Mi piacerebbe farmi insegnare da te');

INSERT INTO requests (user_id , tutor_id , description )
	VALUES (5, 9 , 'Mi piacerebbe farmi insegnare da te');
INSERT INTO requests (user_id , tutor_id , description )
	VALUES (2, 7 , 'Mi piacerebbe farmi insegnare da te');
INSERT INTO requests (user_id , tutor_id , description )
	VALUES (3, 8, 'Mi piacerebbe farmi insegnare da te');


COMMIT;


