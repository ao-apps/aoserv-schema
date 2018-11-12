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
    constraint shameless_plugs_pkey
      primary key,
  time timestamp
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
