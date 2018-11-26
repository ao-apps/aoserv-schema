create sequence web."Redirect_id_seq" cycle;
grant all    on web."Redirect_id_seq" to aoadmin;
grant select on web."Redirect_id_seq" to aoserv_app;

create table web."Redirect" (
  id              integer
    default nextval('web."Redirect_id_seq"')
    primary key,
  -- TODO: Allow a Redirect to be attached to either a site or a virtualHost
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
grant all            on web."Redirect" to aoadmin;
grant select, delete on web."Redirect" to aoserv_app;
