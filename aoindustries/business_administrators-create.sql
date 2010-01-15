create table business_administrators (
  username text primary key,
  accounting text not null, -- Used as internal reference to usernames only
  password text default '*' not null,
  "name" text not null check (length("name")>0),
  title text,
  birthday varchar(32),
  is_preferred bool default false not null,
  private bool default true not null,
  created timestamp default now() not null,
  work_phone text not null check (length(work_phone)>0),
  home_phone text,
  cell_phone text,
  fax text,
  email text not null check (length(email)>0 and email=trim(email)),
  address1 text,
  address2 text,
  city text,
  "state" text,
  country char(2),
  zip text,
  disable_log integer,
  can_switch_users boolean not null,
  support_code text -- If null, support requests may not be initiated via email
);
grant all on business_administrators to aoadmin;
grant select, insert, update, delete on business_administrators to aoserv_app;
