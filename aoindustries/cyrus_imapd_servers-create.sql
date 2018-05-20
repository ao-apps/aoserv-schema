create table cyrus_imapd_servers (
  ao_server integer primary key,
  sieve_net_bind integer unique,
  servername text
    check(
      servername is null
      or (
        servername=lower(servername) -- Must be all lowercase
        and servername!='default'  -- Don't allow hostname of 'default' because they may conflict with Cyrus virtdomains defaultdomain.
      )
    ),
  certificate integer not null,
  allow_plaintext_auth boolean not null default false,
  delete_duration float default 3
    check (
      delete_duration is null
      or delete_duration > 0
    ),
  delete_duration_unit char(1) default 'd'
    check (
      delete_duration_unit is null
      or (
        delete_duration is not null
        and delete_duration_unit in ('d', 'h', 'm', 's')
      )
    ),
  expire_duration float not null default 3
    check (
      expire_duration > 0
    ),
  expire_duration_unit char(1) default 'd'
    check (
      expire_duration_unit is null
      or expire_duration_unit in ('d', 'h', 'm', 's')
    ),
  expunge_duration float default 3
    check (
      expunge_duration is null
      or expunge_duration > 0
    ),
  expunge_duration_unit char(1) default 'd'
    check (
      expunge_duration_unit is null
      or (
        expunge_duration is not null
        and expunge_duration_unit in ('d', 'h', 'm', 's')
      )
    )
);
grant all on cyrus_imapd_servers to aoadmin;
grant select on cyrus_imapd_servers to aoserv_app;
