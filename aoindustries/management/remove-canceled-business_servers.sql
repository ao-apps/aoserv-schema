create or replace view
  management."remove-canceled-business_servers"
as
select
  bu.accounting,
  'remove_business_server ' || bs.accounting || ' ' || se."name" as aosh_command,
  bs.is_default
from
             public.business_servers bs
  inner join public.businesses       bu on bs.accounting = bu.accounting
  inner join public.servers          se on bs.server     = se.pkey
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all on management."remove-canceled-business_servers" from aoadmin;
grant select on management."remove-canceled-business_servers" to aoadmin;
