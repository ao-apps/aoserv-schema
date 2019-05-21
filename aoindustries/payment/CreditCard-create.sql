create sequence         payment."CreditCard_id_seq" cycle;
grant all            on payment."CreditCard_id_seq" to aoadmin;
grant select, update on payment."CreditCard_id_seq" to aoserv_app;

create table payment."CreditCard" (
  id integer
    default nextval('payment."CreditCard_id_seq"')
    primary key,
  processor_id text not null,
  accounting text not null,
  group_name text,
  card_info text not null,
  "expirationMonth" smallint,
  "expirationYear" smallint,
  provider_unique_id text not null,
  first_name text not null,
  last_name text not null,
  company_name text,
  email "com.aoindustries.net"."Email",
  phone text,
  fax text,
  customer_tax_id text,
  street_address1 text not null,
  street_address2 text,
  city text not null,
  "state" text,
  postal_code text,
  country_code character(2) not null,
  created timestamp with time zone not null default now(),
  created_by text not null,
  principal_name text,
  use_monthly boolean not null default false,
  active boolean not null default true,
  deactivated_on timestamp with time zone,
  deactivate_reason text,
  description text,
  encrypted_card_number text,
  encryption_card_number_from integer,
  encryption_card_number_recipient integer,
  check (
    (
        encrypted_card_number is null and encryption_card_number_from is null and encryption_card_number_recipient is null
    ) or (
        encrypted_card_number is not null and encryption_card_number_from is not null and encryption_card_number_recipient is not null
    )
  )
);
/*
insert into payment."CreditCard" select
  id,
  processor_id,
  accounting,
  group_name,
  card_info,
  null as "expirationMonth",
  null as "expirationYear",
  provider_unique_id,
  first_name,
  last_name,
  company_name,
  email,
  phone,
  fax,
  customer_tax_id,
  street_address1,
  street_address2,
  city,
  "state",
  postal_code,
  country_code,
  created,
  created_by,
  principal_name,
  use_monthly,
  active,
  deactivated_on,
  deactivate_reason,
  description,
  encrypted_card_number,
  encryption_card_number_from,
  encryption_card_number_recipient
from payment."CreditCard_20190520";
 */
grant all                            on payment."CreditCard" to aoadmin;
grant select, insert, update, delete on payment."CreditCard" to aoserv_app;
