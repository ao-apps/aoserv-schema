create or replace view
  management.server_stats
as
  (
    select
      ao.hostname,
      (
        select
          count(*)
        from
          server."AccountServer" bs,
          account."Account" bu
        where
          se.id=bs.server
          and bs.is_default
          and bs.accounting=bu.accounting
          and bu.canceled is null
          and bu.parent='AOINDUSTRIES'
      ) as business_count
--      ao.num_cpu,
--      ao.cpu_speed,
--      ao.num_cpu*ao.cpu_speed as total_cpu,
--      ao.ram,
--      ao.rack,
--      ao.disk
    from
      server."Server" se,
      linux."Server" ao
    where
      se.id=ao.server
    order by
      net.reverse_hostname(ao.hostname)
  )
  union all select
    'Total:',
    (
      select
        count(*)
      from
        account."Account"
      where
        canceled is null
        and parent='AOINDUSTRIES'
    )
--    sum(num_cpu),
--    sum(cpu_speed),
--    sum(num_cpu*cpu_speed),
--    sum(ram),
--    sum(coalesce(rack, 0)),
--    sum(disk)
--  from
--    linux."Server"
;

revoke all    on management.server_stats from aoadmin;
grant  select on management.server_stats to   aoadmin;
