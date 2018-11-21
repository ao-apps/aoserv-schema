create sequence ssl_certificate_names_pkey_seq cycle;
grant all    on ssl_certificate_names_pkey_seq to aoadmin;
grant select on ssl_certificate_names_pkey_seq to aoserv_app;

create table ssl_certificate_names (
  pkey integer
    default nextval('ssl_certificate_names_pkey_seq')
    primary key,
  ssl_certificate integer
    not null,
  is_common_name bool
    not null,
  is_wildcard bool
    not null,
  "domain" text
    not null
);
grant all    on ssl_certificate_names to aoadmin;
grant select on ssl_certificate_names to aoserv_app;
