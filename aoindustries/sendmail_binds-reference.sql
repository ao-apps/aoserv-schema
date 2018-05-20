alter table sendmail_binds
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete cascade
  on update cascade
;
alter table sendmail_binds
  add constraint sendmail_server_fkey
  foreign key (sendmail_server)
  references sendmail_servers (pkey)
  on delete restrict
  on update cascade
;
