alter table linux_groups
  add constraint type_fkey
  foreign key (type)
  references linux_group_types (name)
  on delete restrict
  on update cascade
;
alter table linux_groups
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
