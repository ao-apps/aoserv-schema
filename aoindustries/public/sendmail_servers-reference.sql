alter table sendmail_servers
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint package_fkey
  foreign key (package)
  references packages (pkey)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint server_certificate_fkey
  foreign key (server_certificate)
  references ssl_certificates (pkey)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint client_certificate_fkey
  foreign key (client_certificate)
  references ssl_certificates (pkey)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint client_addr_inet_fkey
  foreign key (client_addr_inet)
  references ip_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint client_addr_inet6_fkey
  foreign key (client_addr_inet6)
  references ip_addresses (pkey)
  on delete restrict
  on update cascade
;
