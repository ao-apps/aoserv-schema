create sequence sendmail_smtp_stats_pkey_seq cycle;
grant all on sendmail_smtp_stats_pkey_seq to aoadmin;
grant select, update on sendmail_smtp_stats_pkey_seq to aoserv_app;

create table sendmail_smtp_stats (
  pkey integer
    default nextval('sendmail_smtp_stats_pkey_seq')
    constraint sendmail_smtp_stats_pkey primary key,
  package text
    not null,
  date date
    not null,
  ao_server integer
    not null,
  email_in_count integer
    not null,
  excess_in_count integer
    not null,
  email_in_bandwidth int8
    not null,
  excess_in_bandwidth int8
    not null,
  email_out_count integer
    not null,
  excess_out_count integer
    not null,
  email_out_bandwidth int8
    not null,
  excess_out_bandwidth int8
    not null,
  unique(package, date, ao_server)
);
grant all on sendmail_smtp_stats to aoadmin;
grant select, insert, update, delete on sendmail_smtp_stats to aoserv_app;
