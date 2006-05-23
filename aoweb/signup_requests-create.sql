/**********************************************************************
 *
 * The signup_requests table stores signup requests.
 *
 * pkey            a generated unique ID
 * time            the time they signed-up
 * ip_address      the IP they signed-up from
 * classname       the classname of the signup form
 * completed_by    the username of the business_administrator who completed the signup
 * completed_time  the time the signup was completed
 *
 *********************************************************************/
create sequence signup_requests_pkey_seq cycle;
grant all on signup_requests_pkey_seq to aoadmin;
grant select, update on signup_requests_pkey_seq to aoweb_app;

create table signup_requests (
  pkey integer
    default nextval('signup_requests_pkey_seq')
    constraint signup_requests_pkey primary key,
  time timestamp
    not null
    default now(),
  ip_address text
    not null,
  classname text
    not null,
  completed_by text,
  completed_time timestamp
);
grant all on signup_requests to aoadmin;
grant select, insert, update, delete on signup_requests to aoweb_app;
