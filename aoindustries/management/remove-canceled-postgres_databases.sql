create or replace view
  management."remove-canceled-postgres_databases"
as
select
  bu.accounting,
  'remove_postgres_database ' || pd."name" || ' ' || ps."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  ps."name" as postgres_server,
  pd."name"
from
             public.postgres_databases     pd
  inner join public.postgres_server_users psu on pd.datdba          = psu.pkey
  inner join account."Username"            un on psu.username       =  un.username
  inner join billing."Package"             pk on un.package         =  pk."name"
  inner join account."Account"             bu on pk.accounting      =  bu.accounting
  inner join public.postgres_servers       ps on pd.postgres_server =  ps.pkey
  inner join server."AoServer"             ao on ps.ao_server       =  ao.server
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-postgres_databases" from aoadmin;
grant  select on management."remove-canceled-postgres_databases" to   aoadmin;
