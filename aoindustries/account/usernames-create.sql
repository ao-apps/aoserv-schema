create table usernames (
  username text
    primary key
    check (
      -- Control usernames for Cyrus user@domain use in virtdomains
      username not like '@%'            -- Can't start with @
      and username not like '%@'        -- Can't end with @
      and username not like '%@%@%'     -- Can't have more than one @
      and username not like 'cyrus@%'   -- Can't start with cyrus
      and username not like '%@default' -- Can't end with @default
    ),
  package text
    not null,
  disable_log integer
);
grant all                            on usernames to aoadmin;
grant select, insert, update, delete on usernames to aoserv_app;
