alter table ssl_certificate_names
  add constraint ssl_certificate_fkey
  foreign key (ssl_certificate)
  references ssl_certificates (pkey)
  on delete cascade
  on update cascade
;
