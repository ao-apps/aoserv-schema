alter table httpd_tomcat_parameters
  add constraint httpd_tomcat_parameters_fkey
  foreign key (tomcat_context)
  references httpd_tomcat_contexts (pkey)
  on delete restrict
  on update cascade
;
