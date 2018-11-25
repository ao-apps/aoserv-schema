alter table "net/reputation"."Set"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;