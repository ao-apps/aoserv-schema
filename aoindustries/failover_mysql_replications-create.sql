create sequence failover_mysql_replications_pkey_seq cycle;
grant all on failover_mysql_replications_pkey_seq to aoadmin;
grant select, update on failover_mysql_replications_pkey_seq to aoserv_app;

create table failover_mysql_replications (
  pkey integer
    default nextval('failover_mysql_replications_pkey_seq')
    constraint failover_mysql_replications_pkey primary key,
  replication integer
    not null,
  mysql_server integer
    not null
);
grant all on failover_mysql_replications to aoadmin;
grant select on failover_mysql_replications to aoserv_app;
