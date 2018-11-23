alter table pki."CertificateName"
  add constraint ssl_certificate_fkey
  foreign key (ssl_certificate)
  references pki."Certificate" (pkey)
  on delete cascade
  on update cascade
;
