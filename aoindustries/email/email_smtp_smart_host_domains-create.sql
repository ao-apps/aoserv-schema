create sequence email_smtp_smart_host_domains_pkey_seq cycle;
grant all            on email_smtp_smart_host_domains_pkey_seq to aoadmin;
grant select, update on email_smtp_smart_host_domains_pkey_seq to aoserv_app;

create table email_smtp_smart_host_domains (
  pkey integer
    default nextval('email_smtp_smart_host_domains_pkey_seq')
    primary key,
  smart_host integer not null,
  domain text not null
    check (domain=lower(trim(domain))),
  domain_out_burst integer,
  domain_out_rate float4,
  check ((domain_out_burst is null)=(domain_out_rate is null))
);
grant all    on email_smtp_smart_host_domains to aoadmin;
grant select on email_smtp_smart_host_domains to aoserv_app;
