alter table billing."NoticeLog"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table billing."NoticeLog"
  add constraint notice_type_fkey
  foreign key (notice_type)
  references billing."NoticeType" ("type")
  on delete restrict
  on update cascade
;
alter table billing."NoticeLog"
  add constraint transid_fkey
  foreign key (transid)
  references transactions (transid)
  on delete restrict
  on update cascade
;
