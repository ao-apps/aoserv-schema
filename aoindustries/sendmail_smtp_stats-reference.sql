alter table sendmail_smtp_stats
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
alter table sendmail_smtp_stats
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
