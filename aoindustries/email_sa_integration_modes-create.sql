create table email_sa_integration_modes (
  "name" text primary key,
  sort_order integer not null
);
grant all on email_sa_integration_modes to aoadmin;
grant select on email_sa_integration_modes to aoserv_app;
