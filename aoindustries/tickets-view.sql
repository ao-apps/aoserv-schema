create view
  client_tickets
as select
  ti.pkey,
  ti.accounting,
  ti.open_date,
  ti.deadline,
  ti.client_priority,
  ti.admin_priority,
  ti.assigned_to,
  ti.status
from
  tickets ti,
  businesses bu
where
  ti.accounting!='AOINDUSTRIES'
  and ti.close_date is null
  and ti.accounting=bu.accounting
  and bu.canceled is null
order by
  ti.pkey
;
grant all on client_tickets to aoadmin;
grant select on client_tickets to aoserv_app;
