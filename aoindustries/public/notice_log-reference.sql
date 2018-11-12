alter table notice_log
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table notice_log
  add constraint notice_type_fkey
  foreign key (notice_type)
  references notice_types (type)
  on delete restrict
  on update cascade
;
alter table notice_log
  add constraint transid_fkey
  foreign key (transid)
  references transactions (transid)
  on delete restrict
  on update cascade
;
