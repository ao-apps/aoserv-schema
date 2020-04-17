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
 * The shameless_plugs table is added to when a client is prompted for
 * a review.
 *
 * pkey           a unique, generated key
 * time           the time the person was asked
 * accounting     the accounting code of the person who was asked
 * name           the name of the individual who was asked
 * email          the email address of the person
 * url            the URL they were referred to
 * review         the review provided by them
 * reminder_time  the time that we should remind them
 * comment        any comment
 *
 *********************************************************************/
create sequence shameless_plus_pkey_seq cycle;
grant all            on shameless_plus_pkey_seq to aoadmin;
grant select, update on shameless_plus_pkey_seq to aoweb_app;

create table shameless_plugs (
  pkey integer
    default nextval('shameless_plus_pkey_seq')
    primary key,
  "time" timestamp
    not null
    default now(),
  accounting text
    not null,
  name text
    not null,
  email text,
  url text
    not null,
  review text,
  reminder_time timestamp,
  comment text
);
grant all on shameless_plugs to aoadmin;
