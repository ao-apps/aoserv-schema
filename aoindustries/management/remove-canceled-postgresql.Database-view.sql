create or replace view
  management."remove-canceled-postgresql.Database"
as
select
  bu.accounting,
  'remove_postgres_database ' || pd."name" || ' ' || ps."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  ps."name" as postgres_server,
  pd."name"
from
             postgresql."Database"   pd
  inner join postgresql."UserServer" psu on  pd.datdba          = psu.pkey
  inner join account."Username"      un  on psu.username        =  un.username
  inner join billing."Package"       pk  on  un.package         =  pk."name"
  inner join account."Account"       bu  on  pk.accounting      =  bu.accounting
  inner join postgresql."Server"     ps  on  pd.postgres_server =  ps.pkey
  inner join linux."Server"          ao  on  ps.ao_server       =  ao.server
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-postgresql.Database" from aoadmin;
grant  select on management."remove-canceled-postgresql.Database" to   aoadmin;
