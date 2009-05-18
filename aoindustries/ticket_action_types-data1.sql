begin;
--insert into ticket_action_types values('type_changed', false);
--insert into ticket_action_types values('completed', false);
--insert into ticket_action_types values('held', true);
--insert into ticket_action_types values('junked', true);
--insert into ticket_action_types values('deleted', true);
--insert into ticket_action_types values('bounced', false);
--insert into ticket_action_types values('reply', false);
-- TODO: Add as needed
-- TODO: Single status changed action?
commit;

/*
COPY "action_types" FROM stdin;
OP	Ticket opened
TY	Ticket type changed
DL	Ticket deadline changed
CO	Ticket completed
CH	Put on hold per client
AK	Killed per admin
CK	Killed per client
AH	Put on hold per admin
BO	Ticket bounced
WK	Work entry created
TC	Relevent technology changed
AP	Admin priority reset
CP	Client priority reset
RE	Ticket reactivated
AS	Assigned
SP	Set Phone Numbers
SE	Set Email Addresses
SB	Set Business
\.
*/
