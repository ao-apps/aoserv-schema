/*
 * aoindustries.com - https://aoindustries.com/
 * Copyright (C) 2000-2006, 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoindustries.com.
 *
 * aoindustries.com is non-exclusive, non-transferable, non-redistributable.
 *
 * aoindustries.com is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**********************************************************************
 *
 * The signup_request_values table stores individual fields for the signup forms.
 *
 * pkey            a generated unique ID
 * request         the request ID
 * name            the field name
 * value           the field value
 *
 *********************************************************************/
create sequence signup_request_values_pkey_seq cycle;
grant all            on signup_request_values_pkey_seq to aoadmin;
grant select, update on signup_request_values_pkey_seq to aoweb_app;

create table signup_request_values (
  pkey integer
    default nextval('signup_request_values_pkey_seq')
    primary key,
  request integer
    not null,
  name text
    not null,
  value text,
  unique(request, name)
);
grant all                    on signup_request_values to aoadmin;
grant select, insert, delete on signup_request_values to aoweb_app;
