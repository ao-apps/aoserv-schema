create sequence notice_log_pkey_seq cycle;
grant all on notice_log_pkey_seq to aoadmin;
grant select, update on notice_log_pkey_seq to aoserv_app;

create table notice_log (
  pkey integer
    default nextval('notice_log_pkey_seq')
    constraint notice_log_pkey primary key,  
  create_time timestamp
    default now()
    not null,
  accounting text
    not null,
  billing_contact text
    not null,
  billing_email text
    not null,
  balance decimal(9,2)
    not null,
  notice_type text
    not null,
  transid integer
);
grant all on notice_log to aoadmin;
grant select, insert on notice_log to aoserv_app;
