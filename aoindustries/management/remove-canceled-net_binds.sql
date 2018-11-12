create or replace view
  management."remove-canceled-net_binds"
as
select
  bu.accounting,
  -- TODO: A non-pkey selector might be more helpful, like done for the remove_dns_record command
  -- TODO: Would be based on matching the add_net_bind command, but for unique set of columns, currently (server, ip_address, port, net_protocol)
  'echo "' || nb.package || '"
remove_net_bind ' || nb.pkey as aosh_command,
  nb.port
from
             public.net_binds  nb
  inner join public.packages   pk on nb.package    = pk."name"
  inner join public.businesses bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-net_binds" from aoadmin;
grant  select on management."remove-canceled-net_binds" to   aoadmin;
