alter table email."SendmailBind"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (id)
  on delete cascade
  on update cascade
;
alter table email."SendmailBind"
  add constraint sendmail_server_fkey
  foreign key (sendmail_server)
  references email."SendmailServer" (id)
  on delete restrict
  on update cascade
;
