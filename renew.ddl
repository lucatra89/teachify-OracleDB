drop user teachify_test cascade;
create user teachify_test identified by teachify;
grant connect, resource to teachify_test;
GRANT UNLIMITED TABLESPACE TO teachify_test;
commit;
exit;