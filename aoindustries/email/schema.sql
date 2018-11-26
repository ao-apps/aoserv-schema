create schema if not exists email;

comment on schema email is 'Email configuration and related data';

grant all   on schema email to aoadmin;
grant usage on schema email to aoserv_app;
