alter table email."SmtpSmartHostDomain"
  add constraint smart_host_fkey
  foreign key (smart_host)
  references email."SmtpSmartHost" (net_bind)
  on delete restrict
  on update cascade
;
