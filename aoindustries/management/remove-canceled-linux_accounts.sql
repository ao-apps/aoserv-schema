create or replace view
  management."remove-canceled-linux_accounts"
as
select
  bu.accounting,
  'remove_linux_account ' || la.username as aosh_command,
  la.username
from
             public.linux_accounts la
  inner join public.usernames      un on la.username   = un.username
  inner join public.packages       pk on un.package    = pk."name"
  inner join public.businesses     bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-linux_accounts" from aoadmin;
grant  select on management."remove-canceled-linux_accounts" to   aoadmin;
