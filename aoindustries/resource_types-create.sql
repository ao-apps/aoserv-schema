create table resource_types (
  "name" text primary key
  -- TODO: Make implied types (multiple, Tomcat Site counts as both httpd_site and javavm): parent_type text -- When not null, resources of this type will also count as the provided resource
);
grant all on resource_types to aoadmin;
grant select on resource_types to aoserv_app;
