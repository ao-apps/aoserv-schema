begin;
insert into ticket_statuses values('junk', 0);
insert into ticket_statuses values('deleted', 1);
insert into ticket_statuses values('closed', 2);
insert into ticket_statuses values('bounced', 3);
insert into ticket_statuses values('hold', 4);
insert into ticket_statuses values('open', 5);
commit;

--COPY "ticket_statuses" FROM stdin;
--New	New ticket - no work has been done
--Underway	Work is currently being done on this ticket
--Bounced	Awaiting additional information from client - cannot proceed
--Admin Hold	This ticket is on hold for administrative reasons
--Client Hold	This ticket is on hold per client request
--Admin Kill	Ticket was killed for administrative reasons
--Client Kill	Ticket was killed per client request
--Completed	All requested service has been completed
--\.
