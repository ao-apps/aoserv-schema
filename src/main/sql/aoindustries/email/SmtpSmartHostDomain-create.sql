create sequence email."SmtpSmartHostDomain_id_seq" cycle;
grant all    on email."SmtpSmartHostDomain_id_seq" to aoadmin;
grant select on email."SmtpSmartHostDomain_id_seq" to aoserv_app;

create table email."SmtpSmartHostDomain" (
  id integer
    default nextval('email."SmtpSmartHostDomain_id_seq"')
    primary key,
  smart_host integer not null,
  "domain" "com.aoindustries.net"."DomainName"
    not null
    check ("domain"::text = lower("domain"::text)),
  domain_out_burst integer,
  domain_out_rate real,
  check ((domain_out_burst is null)=(domain_out_rate is null))
);
grant all    on email."SmtpSmartHostDomain" to aoadmin;
grant select on email."SmtpSmartHostDomain" to aoserv_app;
