create table cyrus_imapd_binds (
  net_bind integer
    constraint cyrus_imapd_binds_pkey primary key,
  cyrus_imapd_server integer
    not null,
  servername text
    check(
      servername is null
      or (
        servername=lower(servername) -- Must be all lowercase
        and servername!='default'  -- Don't allow hostname of 'default' because they may conflict with Cyrus virtdomains defaultdomain.
      )
    ),
  certificate integer,
  allow_plaintext_auth boolean
);
grant all            on cyrus_imapd_binds to aoadmin;
grant select, delete on cyrus_imapd_binds to aoserv_app;
