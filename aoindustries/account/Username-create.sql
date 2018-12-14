create table account."Username" (
  username text
    primary key
    check (
      -- Control account.Username for Cyrus user@domain use in virtdomains
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
grant all                            on account."Username" to aoadmin;
grant select, insert, update, delete on account."Username" to aoserv_app;
grant insert                         on account."Username" to management;
