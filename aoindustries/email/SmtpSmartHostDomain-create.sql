create sequence email."SmtpSmartHostDomain_pkey_seq" cycle;
grant all    on email."SmtpSmartHostDomain_pkey_seq" to aoadmin;
grant select on email."SmtpSmartHostDomain_pkey_seq" to aoserv_app;

create table email."SmtpSmartHostDomain" (
  pkey integer
    default nextval('email."SmtpSmartHostDomain_pkey_seq"')
    primary key,
  smart_host integer not null,
  "domain" text not null
    check ("domain" = lower(trim("domain"))),
  domain_out_burst integer,
  domain_out_rate real,
  check ((domain_out_burst is null)=(domain_out_rate is null))
);
grant all    on email."SmtpSmartHostDomain" to aoadmin;
grant select on email."SmtpSmartHostDomain" to aoserv_app;
