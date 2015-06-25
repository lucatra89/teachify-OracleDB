--Distanza in metri
SELECT u.name , u.surname, sdo_nn_distance (1) distance
FROM tutors t , users u
WHERE 
	t.user_id = u.user_id AND
	sdo_nn (t.tutor_geo_location, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE (42.60692,13.94394,NULL), NULL, NULL),
 	'sdo_num_res=3', 1)= 'TRUE'
ORDER BY distance;



-- Retreive Lat Long
SELECT t.user_id , p.x AS latitude, p.y AS longitude FROM tutors t , table(sdo_util.getvertices(t.tutor_geo_location)) p;


UPDATE tutors 
	SET TUTOR_GEO_LOCATION = SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE (41.89334,12.48307,NULL), NULL, NULL)
	WHERE USER_ID=1;
