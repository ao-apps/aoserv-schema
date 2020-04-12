create sequence         web."VirtualHostName_id_seq" cycle;
grant all            on web."VirtualHostName_id_seq" to aoadmin;
grant select, update on web."VirtualHostName_id_seq" to aoserv_app;
grant select, update on web."VirtualHostName_id_seq" to management;

create table web."VirtualHostName" (
  id integer
    default nextval('web."VirtualHostName_id_seq"')
    primary key,
  httpd_site_bind integer
    not null,
  hostname "com.aoindustries.net"."DomainName"
    not null,
  is_primary boolean
    not null,
  unique(hostname, httpd_site_bind)
);
grant all                            on web."VirtualHostName" to aoadmin;
grant select, insert, update, delete on web."VirtualHostName" to aoserv_app;
grant select, insert                 on web."VirtualHostName" to management;
