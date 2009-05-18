alter table ticket_actions
  add constraint ticket_fkey
  foreign key (ticket)
  references tickets (pkey)
  on update cascade
  on delete restrict
;
alter table ticket_actions
  add constraint administrator_fkey
  foreign key (administrator)
  references business_administrators (username)
  on update cascade
  on delete restrict
;
alter table ticket_actions
  add constraint action_type_fkey
  foreign key (action_type)
  references ticket_action_types (type)
  on update cascade
  on delete restrict
;
