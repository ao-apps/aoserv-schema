create or replace view
  "email.management"."Domain.remove-canceled"
as
select
  bu.accounting,
  'remove_email_domain ' || ed."domain" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  ed."domain"
from
             email."Domain"      ed
  inner join linux."Server"      ao on ed.ao_server  = ao.server
  inner join billing."Package"   pk on ed.package    = pk."name"
  inner join account."Account"   bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "email.management"."Domain.remove-canceled" from aoadmin;
grant  select on "email.management"."Domain.remove-canceled" to   aoadmin;
