create view
  server_stats
as
  (
    select
      ao.hostname,
      (select count(*) from business_servers bs, businesses bu where se.resource=bs.server and bs.is_default and bs.accounting=bu.accounting and bu.canceled is null and bu.parent='AOINDUSTRIES') as business_count
--      ao.num_cpu,
--      ao.cpu_speed,
--      ao.num_cpu*ao.cpu_speed as total_cpu,
--      ao.ram,
--      ao.rack,
--      ao.disk
    from
      servers se,
      ao_servers ao
    where
      se.resource=ao.server
    order by
      ao.hostname
  )
  union all select
    'Total:',
    (select count(*) from businesses where canceled is null and parent='AOINDUSTRIES')
--    sum(num_cpu),
--    sum(cpu_speed),
--    sum(num_cpu*cpu_speed),
--    sum(ram),
--    sum(coalesce(rack, 0)),
--    sum(disk)
--  from
--    ao_servers
;
grant all on server_stats to aoadmin;
grant select on server_stats to aoserv_app;
