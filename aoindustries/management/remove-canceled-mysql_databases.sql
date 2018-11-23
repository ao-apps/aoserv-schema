create or replace view
  management."remove-canceled-mysql_databases"
as
select
  bu.accounting,
  'remove_mysql_database ' || md."name" || ' ' || ms."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  ms."name" as mysql_server,
  md."name"
from
             public.mysql_databases md
  inner join mysql."MysqlServer"    ms on md.mysql_server = ms.net_bind
  inner join public.ao_servers      ao on ms.ao_server    = ao.server
  inner join billing."Package"      pk on md.package      = pk."name"
  inner join account."Account"      bu on pk.accounting   = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-mysql_databases" from aoadmin;
grant  select on management."remove-canceled-mysql_databases" to   aoadmin;
