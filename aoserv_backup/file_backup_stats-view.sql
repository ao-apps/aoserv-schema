/**********************************************************************
 *
 * Some backup statistics views.
 *
 *********************************************************************/
create view
  server_backup_space
as select
  se.hostname as server,
  sum(bd.data_size) as data_size,
  sum(case when (bd.data_size%4096::int8)=0 then bd.data_size else ((bd.data_size/4096)+1)*4096 end) as disk_size,
  sum(bd.compressed_size) as compressed_size,
  sum(case when (bd.compressed_size%4096::int8)=0 then bd.compressed_size else ((bd.compressed_size/4096)+1)*4096 end) as compressed_disk_size
from
  servers se,
  backup_partitions bp,
  backup_data bd
where
  se.pkey=bp.ao_server
  and bp.pkey=bd.backup_partition
group by
  se.hostname
order by
  reverse_hostname(se.hostname)
;
