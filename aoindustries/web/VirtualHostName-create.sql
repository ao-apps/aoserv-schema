create sequence         web."VirtualHostName_pkey_seq" cycle;
grant all            on web."VirtualHostName_pkey_seq" to aoadmin;
grant select, update on web."VirtualHostName_pkey_seq" to aoserv_app;

create table web."VirtualHostName" (
  pkey integer
    default nextval('web."VirtualHostName_pkey_seq"')
    primary key,
  httpd_site_bind integer
    not null,
  hostname text
    not null,
  is_primary boolean
    not null,
  unique(hostname, httpd_site_bind)
);
grant all                            on web."VirtualHostName" to aoadmin;
grant select, insert, update, delete on web."VirtualHostName" to aoserv_app;
