create schema if not exists "account/management";

comment on schema "account/management" is 'AO professional management service';

grant all   on schema "account/management" to aoadmin;
