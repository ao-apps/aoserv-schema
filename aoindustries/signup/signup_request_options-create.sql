create sequence signup_request_options_pkey_seq cycle;
grant all            on signup_request_options_pkey_seq to aoadmin;
grant select, update on signup_request_options_pkey_seq to aoserv_app;

create table signup_request_options (
  pkey integer
    default nextval('signup_request_options_pkey_seq')
    primary key,
  request integer
    not null,
  name text
    not null,
  value text,
  unique(request, name)
);
grant all                    on signup_request_options to aoadmin;
grant select, insert, delete on signup_request_options to aoserv_app;
