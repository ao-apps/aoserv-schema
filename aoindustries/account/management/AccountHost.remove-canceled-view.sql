create or replace view
  "account.management"."AccountHost.remove-canceled"
as
select
  bu.accounting,
  'remove_business_server ' || bs.accounting || ' ' || se."name" as aosh_command,
  bs.is_default
from
             account."AccountHost" bs
  inner join account."Account"     bu on bs.accounting = bu.accounting
  inner join net."Host"       se on bs.server     = se.id
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "account.management"."AccountHost.remove-canceled" from aoadmin;
grant  select on "account.management"."AccountHost.remove-canceled" to   aoadmin;
