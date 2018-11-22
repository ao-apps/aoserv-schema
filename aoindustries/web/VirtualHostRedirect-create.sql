create sequence web."VirtualHostRedirect_pkey_seq" cycle;
grant all    on web."VirtualHostRedirect_pkey_seq" to aoadmin;
grant select on web."VirtualHostRedirect_pkey_seq" to aoserv_app;

create table web."VirtualHostRedirect" (
  pkey            integer
    default nextval('web."VirtualHostRedirect_pkey_seq"')
    primary key,
  httpd_site_bind integer  not null,
  sort_order      smallint not null
  check (
    sort_order >= 0
  ),
  pattern         text     not null,
  substitution    text     not null,
  comment         text,
  no_escape       boolean  not null default false,
  unique(httpd_site_bind, sort_order),
  unique(pattern, httpd_site_bind)
);
grant all            on web."VirtualHostRedirect" to aoadmin;
grant select, delete on web."VirtualHostRedirect" to aoserv_app;
