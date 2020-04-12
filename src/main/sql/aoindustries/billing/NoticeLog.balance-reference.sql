alter table billing."NoticeLog.balance"
  add constraint "noticeLog_fkey"
  foreign key ("noticeLog")
  references billing."NoticeLog" (id)
  on delete restrict
  on update cascade
;
alter table billing."NoticeLog.balance"
  add constraint "balance.currency_fkey"
  foreign key ("balance.currency")
  references billing."Currency" ("currencyCode")
  on delete restrict
  on update cascade
;
