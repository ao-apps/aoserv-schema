alter table whois_history
  add constraint whois_history_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
