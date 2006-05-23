create view
  server_stats
as
  (
    select
      se.hostname,
      (select count(*) from business_servers bs, businesses bu where se.pkey=bs.server and bs.is_default and bs.accounting=bu.accounting and bu.canceled is null and bu.parent='AOINDUSTRIES') as business_count,
      ao.num_cpu,
      ao.cpu_speed,
      ao.num_cpu*ao.cpu_speed as total_cpu,
      ao.ram,
      ao.rack,
      ao.disk
    from
      servers se,
      ao_servers ao
    where
      se.pkey=ao.server
    order by
      reverse_hostname(se.hostname)
  )
  union all select
    'Total:',
    (select sum(*) from businesses where canceled is null and parent='AOINDUSTRIES'),
    sum(num_cpu),
    sum(cpu_speed),
    sum(num_cpu*cpu_speed),
    sum(ram),
    sum(coalesce(rack, 0)),
    sum(disk)
  from
    ao_servers
;
grant all on server_stats to aoadmin;
grant select, update on server_stats to aoserv_app;
