create schema if not exists "pki.management";

comment on schema "pki.management" is 'AO professional management service';

grant all on schema "pki.management" to aoadmin;
