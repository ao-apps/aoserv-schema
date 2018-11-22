create table dns."ForbiddenZone" (
  "zone" text
    primary key
  -- TODO: Add a comment why forbidden
);
grant all    on dns."ForbiddenZone" to aoadmin;
grant select on dns."ForbiddenZone" to aoserv_app;
