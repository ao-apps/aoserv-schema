create table email."SmtpSmartHost" (
  net_bind integer primary key,
  total_out_burst integer,
  total_out_rate real,
  check ((total_out_burst is null)=(total_out_rate is null)),
  default_domain_out_burst integer,
  default_domain_out_rate real,
  check ((default_domain_out_burst is null)=(default_domain_out_rate is null))
);
grant all    on email."SmtpSmartHost" to aoadmin;
grant select on email."SmtpSmartHost" to aoserv_app;
