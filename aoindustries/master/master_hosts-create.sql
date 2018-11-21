create sequence master.master_hosts_pkey_seq cycle;
grant all    on master.master_hosts_pkey_seq to aoadmin;
grant select on master.master_hosts_pkey_seq to aoserv_app;

create table master_hosts (
  pkey integer
    default nextval('master.master_hosts_pkey_seq')
    primary key,
  username text
    not null,
  "host" text
    not null,
  unique(username, "host")
);
grant all    on master_hosts to aoadmin;
grant select on master_hosts to aoserv_app;
