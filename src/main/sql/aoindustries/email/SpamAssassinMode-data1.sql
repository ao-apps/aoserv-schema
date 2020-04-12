begin;
insert into email."SpamAssassinMode" values('none', 'None', 0);
insert into email."SpamAssassinMode" values('pop3', 'POP3', 1);
insert into email."SpamAssassinMode" values('imap', 'IMAP/WebMail', 2);
commit;
