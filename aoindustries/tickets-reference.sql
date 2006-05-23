alter table tickets
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint created_by_fkey
  foreign key (created_by)
  references business_administrators (username)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint ticket_type_fkey
  foreign key (ticket_type)
  references ticket_types (type)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint client_priority_fkey
  foreign key (client_priority)
  references ticket_priorities (priority)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint admin_priority_fkey
  foreign key (admin_priority)
  references ticket_priorities (priority)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint technology_fkey
  foreign key (technology)
  references technology_names (name)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint status_fkey
  foreign key (status)
  references ticket_stati (status)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint assigned_to_fkey
  foreign key (assigned_to)
  references business_administrators (username)
  on update cascade
  on delete restrict
;
