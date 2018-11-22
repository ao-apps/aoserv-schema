create table dns."Zone" (
  "zone" text
    primary key,
  "file" text
    not null
    unique,
  package text
    not null,
  hostmaster text
    not null
    default 'hostmaster.aoindustries.com.',
  serial bigint
    not null,
  ttl integer
    not null
);
grant all                            on dns."Zone" to aoadmin;
grant select, insert, update, delete on dns."Zone" to aoserv_app;