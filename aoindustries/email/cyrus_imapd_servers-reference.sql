alter table cyrus_imapd_servers
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table cyrus_imapd_servers
  add constraint sieve_net_bind_fkey
  foreign key (sieve_net_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table cyrus_imapd_servers
  add constraint certificate_fkey
  foreign key (certificate)
  references ssl_certificates (pkey)
  on delete restrict
  on update cascade
;
