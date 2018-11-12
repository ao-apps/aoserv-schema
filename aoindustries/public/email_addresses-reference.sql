alter table email_addresses
  add constraint domain_fkey
  foreign key (domain)
  references email_domains (pkey)
  on delete restrict
  on update cascade
;
