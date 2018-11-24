alter table email."SendmailBind"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (pkey)
  on delete cascade
  on update cascade
;
alter table email."SendmailBind"
  add constraint sendmail_server_fkey
  foreign key (sendmail_server)
  references email."SendmailServer" (pkey)
  on delete restrict
  on update cascade
;
