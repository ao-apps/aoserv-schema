alter table email_smtp_smart_host_domains
  add constraint smart_host_fkey
  foreign key (smart_host)
  references email_smtp_smart_hosts (net_bind)
  on delete restrict
  on update cascade
;