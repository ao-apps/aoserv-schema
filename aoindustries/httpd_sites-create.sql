create sequence httpd_sites_pkey_seq cycle;
grant all on httpd_sites_pkey_seq to aoadmin;
grant select, update, delete on httpd_sites_pkey_seq to aoserv_app;

create table httpd_sites (
  pkey integer default nextval('httpd_sites_pkey_seq') constraint httpd_sites_pkey primary key,
  ao_server integer not null,
  site_name text not null,
  list_first boolean default false not null,
  accounting text not null,
  linux_account integer not null,
  linux_group integer not null,
  server_admin text not null,
  disable_log integer,
  is_manual bool not null,
  awstats_skip_files text
);
grant all on httpd_sites to aoadmin;
grant select, insert, update, delete on httpd_sites to aoserv_app;
