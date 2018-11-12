create table email_smtp_smart_hosts (
  net_bind integer primary key,
  total_out_burst integer,
  total_out_rate float4,
  check ((total_out_burst is null)=(total_out_rate is null)),
  default_domain_out_burst integer,
  default_domain_out_rate float4,
  check ((default_domain_out_burst is null)=(default_domain_out_rate is null))
);
grant all on email_smtp_smart_hosts to aoadmin;
grant select on email_smtp_smart_hosts to aoserv_app;
