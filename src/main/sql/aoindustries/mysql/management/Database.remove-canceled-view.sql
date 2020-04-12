create or replace view
  "mysql.management"."Database.remove-canceled"
as
select
  bu.accounting,
  'remove_mysql_database ' || md."name" || ' ' || ms."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  ms."name" as mysql_server,
  md."name"
from
             mysql."Database"    md
  inner join mysql."Server"      ms on md.mysql_server = ms.bind
  inner join linux."Server"      ao on ms.ao_server    = ao.server
  inner join billing."Package"   pk on md.package      = pk."name"
  inner join account."Account"   bu on pk.accounting   = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "mysql.management"."Database.remove-canceled" from aoadmin;
grant  select on "mysql.management"."Database.remove-canceled" to   aoadmin;
