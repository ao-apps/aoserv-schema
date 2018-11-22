create table email."CyrusImapdBind" (
  net_bind integer
    primary key,
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
grant all            on email."CyrusImapdBind" to aoadmin;
grant select, delete on email."CyrusImapdBind" to aoserv_app;
