create or replace view
  management."remove-canceled-account.AccountHost"
as
select
  bu.accounting,
  'remove_business_server ' || bs.accounting || ' ' || se."name" as aosh_command,
  bs.is_default
from
             account."AccountHost" bs
  inner join account."Account"     bu on bs.accounting = bu.accounting
  inner join server."Server"       se on bs.server     = se.id
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-account.AccountHost" from aoadmin;
grant  select on management."remove-canceled-account.AccountHost" to   aoadmin;
