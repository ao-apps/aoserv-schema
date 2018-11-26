create schema if not exists "postgresql.management";

comment on schema "postgresql.management" is 'AO professional management service';

grant all on schema "postgresql.management" to aoadmin;
