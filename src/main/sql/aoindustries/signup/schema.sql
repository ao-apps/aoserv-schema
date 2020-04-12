create schema if not exists signup;

comment on schema signup is 'Signup requests';

grant all   on schema signup to aoadmin;
grant usage on schema signup to aoserv_app;
