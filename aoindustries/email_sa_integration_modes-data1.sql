begin;
insert into email_sa_integration_modes values('none', 0); -- None
insert into email_sa_integration_modes values('pop3', 1); -- POP3
insert into email_sa_integration_modes values('imap', 2); -- IMAP/WebMail
commit;
