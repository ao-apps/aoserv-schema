create table sendmail_binds (
  net_bind integer
    primary key,
  sendmail_server integer
    not null,
  "name" text
    check (
      -- name may not contain a space for consistency with pattern matching in fail2ban-filter-sendmail-disconnect
      "name" is null
      or "name" not like '% %'
    )
);
grant all            on sendmail_binds to aoadmin;
grant select, delete on sendmail_binds to aoserv_app;
