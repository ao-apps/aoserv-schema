create sequence         ticket."Assignment_pkey_seq" cycle;
grant all            on ticket."Assignment_pkey_seq" to aoadmin;
grant select, update on ticket."Assignment_pkey_seq" to aoserv_app;

create table ticket."Assignment" (
  pkey integer default nextval('ticket."Assignment_pkey_seq"') primary key,
  ticket integer not null,
  reseller text not null,
  administrator text not null -- This MUST be a business_administrator in the same accounting as reseller or the ticket may be lost - TODO: how to enforce in PostgreSQL? (trigger)
);
grant all            on ticket."Assignment" to aoadmin;
grant select, insert on ticket."Assignment" to aoserv_app;
