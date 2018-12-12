create sequence         web."VirtualHost_id_seq" cycle;
grant all            on web."VirtualHost_id_seq" to aoadmin;
grant select, update on web."VirtualHost_id_seq" to aoserv_app;

create table web."VirtualHost" (
  id integer
    default nextval('web."VirtualHost_id_seq"')
    primary key,
  httpd_site integer
    not null,
  httpd_bind integer
    not null,
  "name" text
    check ("name" is null or length("name") > 0),
  access_log "com.aoindustries.net"."Path"
    not null,
  error_log "com.aoindustries.net"."Path"
    not null,
  certificate integer,
  disable_log integer,
  predisable_config text,
  is_manual boolean
    not null
    default false,
  redirect_to_primary_hostname boolean
    not null
    default true,
  include_site_config text
    check (
      include_site_config is null
      or include_site_config='true'
      or include_site_config='false'
      or include_site_config like 'IfModule %'
    )
);
grant all                            on web."VirtualHost" to aoadmin;
grant select, insert, update, delete on web."VirtualHost" to aoserv_app;
