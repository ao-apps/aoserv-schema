create sequence         ticket."Assignment_id_seq" cycle;
grant all            on ticket."Assignment_id_seq" to aoadmin;
grant select, update on ticket."Assignment_id_seq" to aoserv_app;

create table ticket."Assignment" (
  id integer default nextval('ticket."Assignment_id_seq"') primary key,
  ticket integer not null,
  reseller text not null,
  administrator text not null -- This MUST be a business_administrator in the same accounting as reseller or the ticket may be lost - TODO: how to enforce in PostgreSQL? (trigger)
);
grant all            on ticket."Assignment" to aoadmin;
grant select, insert on ticket."Assignment" to aoserv_app;
