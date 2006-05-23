alter table actions
  add constraint tickets_id_fkey
  foreign key (ticket_id)
  references tickets (pkey)
  on update cascade
  on delete restrict
;
alter table actions
  add constraint administrator_fkey
  foreign key (administrator)
  references business_administrators (username)
  on update cascade
  on delete restrict
;
alter table actions
  add constraint action_type_fkey
  foreign key (action_type)
  references action_types (type)
  on update cascade
  on delete restrict
;
