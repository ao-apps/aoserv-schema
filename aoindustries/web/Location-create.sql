create sequence         web."Location_id_seq" cycle;
grant all            on web."Location_id_seq" to aoadmin;
grant select, update on web."Location_id_seq" to aoserv_app;

create table web."Location" (
  id integer
    default nextval('web."Location_id_seq"')
    primary key,
  -- TODO: Allow a Location to be attached to either a site or a virtualHost
  httpd_site integer
    not null,
  "path" text
    not null,
  is_regular_expression boolean
    not null,
  -- TODO: Make auth and require parts optional because a location with just "handler" is still useful
  --       This could also be done as a separate table, which might reference location, site, ...
  auth_name text
    not null,
  auth_group_file "com.aoindustries.net"."Path"
    not null,
  auth_user_file "com.aoindustries.net"."Path"
    not null,
  require text
    not null,
  -- TODO: Make an enum both in PostgreSQL and Java?  What to do with values unknown to client?  Make a lookup table instead?
  "handler" text
    check ("handler" is null or "handler" in ('server-status')),
  unique(httpd_site, "path")
);
grant all                            on web."Location" to aoadmin;
grant select, insert, update, delete on web."Location" to aoserv_app;
