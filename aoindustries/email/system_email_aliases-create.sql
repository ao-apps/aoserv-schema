create sequence system_email_aliases_pkey_seq cycle;
grant all            on system_email_aliases_pkey_seq to aoadmin;
grant select, update on system_email_aliases_pkey_seq to aoserv_app;

create table system_email_aliases (
  pkey integer
    default nextval('system_email_aliases_pkey_seq')
    primary key,
  ao_server integer
    not null,
  address text
    not null,
  destination text
    not null,
  unique (ao_server, address)
);
grant all    on system_email_aliases to aoadmin;
grant select on system_email_aliases to aoserv_app;
