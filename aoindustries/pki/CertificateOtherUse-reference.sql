alter table pki."CertificateOtherUse"
  add constraint ssl_certificate_fkey
  foreign key (ssl_certificate)
  references pki."Certificate" (id)
  on delete cascade
  on update cascade
;
