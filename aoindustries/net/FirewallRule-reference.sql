/* TODO
alter table net."FirewallRule"
  add constraint net_device_fkey
  foreign key (net_device)
  references net."Device" (pkey)
  on delete restrict
  on update cascade
;
alter table net."FirewallRule"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
 */
