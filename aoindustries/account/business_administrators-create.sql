create table account."Administrator" (
  username text
    primary key,
  password text
    default '*'
    not null,
  "name" text
    not null
    constraint name_chk
      check (length(name)>0),
  title text,
  birthday date,
  is_preferred boolean
    default false
    not null,
  private boolean
    default true
    not null,
  created timestamp with time zone
    default now()
    not null,
  work_phone text
    not null
    constraint work_phone_chk
      check (length(work_phone)>0),
  home_phone text,
  cell_phone text,
  fax text,
  email text
    not null
    constraint email_chk
      check (length(email)>0 and email=trim(email)),
  address1 text,
  address2 text,
  city text,
  "state" text,
  country character(2),
  zip text,
  disable_log integer,
  can_switch_users boolean not null,
  support_code text -- If null, support requests may not be initiated via email
);
grant all                            on account."Administrator" to aoadmin;
grant select, insert, update, delete on account."Administrator" to aoserv_app;
