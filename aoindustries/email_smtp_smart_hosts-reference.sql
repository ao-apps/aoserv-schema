alter table email_smtp_smart_hosts
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
