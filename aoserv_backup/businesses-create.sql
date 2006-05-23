/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table businesses (
  accounting text
    constraint businesses_pkey primary key,
  canceled timestamp,
  parent text
);
grant all on businesses to aoadmin;
grant select, insert, update, delete on businesses to aoserv_app;
