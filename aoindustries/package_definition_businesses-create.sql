create sequence package_definition_businesses_pkey_seq cycle;
grant all on package_definition_businesses_pkey_seq to aoadmin;
grant select, update on package_definition_businesses_pkey_seq to aoserv_app;

create table package_definition_businesses (
  pkey integer default nextval('package_definition_businesses_pkey_seq') primary key,
  package_definition integer not null,
  accounting text not null,
  display text not null,
  description text not null,
  active bool not null,   -- Will be listed in signup forms and package listings
  approved bool not null, -- This is copied from package_definitions and is only used for data integrity purposes
  check (not active or approved) -- May not be active when not approved
);
grant all on package_definition_businesses to aoadmin;
grant select, insert, update, delete on package_definition_businesses to aoserv_app;
