create sequence         account."AccountProfile_pkey_seq" cycle;
grant all            on account."AccountProfile_pkey_seq" to aoadmin;
grant select, update on account."AccountProfile_pkey_seq" to aoserv_app;

create table account."AccountProfile" (
  pkey integer
    default nextval('account."AccountProfile_pkey_seq"')
    primary key,
  accounting text
    not null,
  priority integer
    default 1
    not null,
  "name" text
    not null,
  private boolean
    default true
    not null,
  phone text
    not null,
  fax text,
  address1 text
    not null,
  address2 text,
  city text
    not null,
  "state" text,
  country character(2)
    default 'US'
    not null,
  zip text,
  send_invoice boolean
    default false
    not null,
  created timestamp with time zone
    default now()
    not null,
  billing_contact text
    not null,
  billing_email text
    not null,
  technical_contact text
    not null,
  technical_email text
    not null,
  unique(accounting, priority)
);
grant all            on account."AccountProfile" to aoadmin;
grant select, insert on account."AccountProfile" to aoserv_app;