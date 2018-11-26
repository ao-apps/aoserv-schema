create or replace view
  "account.management"."Username.remove-canceled"
as
select
  bu.accounting,
  'remove_username ' || un.username as aosh_command,
  un.username
from
             account."Username"      un
  inner join billing."Package"       pk on un.package    = pk."name"
  inner join account."Account"       bu on pk.accounting = bu.accounting
  -- business_administrators remain even after canceled
  left  join account."Administrator" ba on un.username   = ba.username
where
  -- account.Administrator remain even after canceled
  ba.username is null
  and bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "account.management"."Username.remove-canceled" from aoadmin;
grant  select on "account.management"."Username.remove-canceled" to   aoadmin;
