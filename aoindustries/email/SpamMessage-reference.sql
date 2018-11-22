alter table email."SpamMessage"
  add constraint email_relay_fkey
  foreign key (email_relay)
  references email."SmtpRelay" (pkey)
  on delete cascade
  on update cascade
;
