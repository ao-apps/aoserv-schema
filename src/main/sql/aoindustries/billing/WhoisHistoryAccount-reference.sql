alter table billing."WhoisHistoryAccount"
  add constraint "whoisHistory_fkey"
  foreign key ("whoisHistory")
  references billing."WhoisHistory" (id)
  on delete restrict
  on update cascade
;
alter table billing."WhoisHistoryAccount"
  add constraint account_fkey
  foreign key (account)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
