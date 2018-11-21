create sequence         email.email_domains_pkey_seq cycle;
grant all            on email.email_domains_pkey_seq to aoadmin;
grant select, update on email.email_domains_pkey_seq to aoserv_app;

create table email_domains (
  pkey integer
    default nextval('email.email_domains_pkey_seq')
    primary key,
  domain text
    not null,
  check (domain=lower(trim(domain))),
  ao_server integer
    not null,
  package text
    not null,
  unique(ao_server, domain)
);
grant all                            on email_domains to aoadmin;
grant select, insert, update, delete on email_domains to aoserv_app;
