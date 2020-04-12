/**********************************************************************
 *
 * The signup_request_values table stores individual fields for the signup forms.
 *
 * pkey            a generated unique ID
 * request         the request ID
 * name            the field name
 * value           the field value
 *
 *********************************************************************/
create sequence signup_request_values_pkey_seq cycle;
grant all            on signup_request_values_pkey_seq to aoadmin;
grant select, update on signup_request_values_pkey_seq to aoweb_app;

create table signup_request_values (
  pkey integer
    default nextval('signup_request_values_pkey_seq')
    primary key,
  request integer
    not null,
  name text
    not null,
  value text,
  unique(request, name)
);
grant all                    on signup_request_values to aoadmin;
grant select, insert, delete on signup_request_values to aoweb_app;
