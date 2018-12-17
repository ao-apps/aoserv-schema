create table account."User" (
  -- TODO: Rename to "name"
  username text
    primary key
    -- TODO: account.User.Name DOMAIN instead
    check (
      -- Control account.User for Cyrus user@domain use in virtdomains
          username not like '@%'        -- Can't start with @
      and username not like '%@'        -- Can't end with @
      and username not like '%@%@%'     -- Can't have more than one @
      and username not like 'cyrus@%'   -- Can't start with cyrus
      and username not like '%@default' -- Can't end with @default
    ),
  package text
    not null,
  disable_log integer
);
grant all                            on account."User" to aoadmin;
grant select, insert, update, delete on account."User" to aoserv_app;
grant insert                         on account."User" to management;
