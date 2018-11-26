create schema if not exists management;

comment on schema management is 'The management schema is used for AO professional management service';

grant all   on schema management to aoadmin;
grant usage on schema management to aoserv_app;
