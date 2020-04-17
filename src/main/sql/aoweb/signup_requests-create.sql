/*
 * aoindustries.com - https://aoindustries.com/
 * Copyright (C) 2000-2006, 2008, 2018, 2020  AO Industries, Inc.
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
 * The signup_requests table stores signup requests.
 *
 * pkey            a generated unique ID
 * time            the time they signed-up
 * ip_address      the IP they signed-up from
 * classname       the classname of the signup form
 * completed_by    the username of the business_administrator who completed the signup
 * completed_time  the time the signup was completed
 *
 *********************************************************************/
create sequence signup_requests_pkey_seq cycle;
grant all            on signup_requests_pkey_seq to aoadmin;
grant select, update on signup_requests_pkey_seq to aoweb_app;

create table signup_requests (
  pkey integer
    default nextval('signup_requests_pkey_seq')
    primary key,
  "time" timestamp
    not null
    default now(),
  ip_address "com.aoindustries.net"."InetAddress"
    not null,
  classname text
    not null,
  completed_by text,
  completed_time timestamp
);
grant all                            on signup_requests to aoadmin;
grant select, insert, update, delete on signup_requests to aoweb_app;
grant select                         on signup_requests to aoweb_noc_app;
